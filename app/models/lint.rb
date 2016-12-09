require 'nokogiri'

class Lint
  MML_SCHEMA = Rails.root.join('app/schemas/mml.xsd')
  attr_reader :mml
  
  def initialize(params = {})
    self.mml = params[:mml] unless params.empty?
  end

  def valid?
    mml_schema.valid? @mml
  end

  def mml_schema
    @mml_schema ||= Nokogiri::XML::Schema(File.open(MML_SCHEMA))
  end

  def mml=(mml)
    @mml = Nokogiri::XML(mml)
  end

  def errors
    mml_schema.validate @mml
  end
end

