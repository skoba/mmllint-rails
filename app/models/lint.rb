require 'nokogiri'

class Lint
  MML_SCHEMA = Rails.root.join('app/schemas/mml.xsd')
  attr_reader :mml
  
  def initialize(params = {})
    self.mml = params[:mml] unless params.empty?
  end

  def valid?
    self.well_formed? && (mml_schema.valid? @mml)
  end

  def mml_schema
    @mml_schema ||= Nokogiri::XML::Schema(File.open(MML_SCHEMA))
  end

  def mml=(mml)
    begin
      @mml = Nokogiri::XML(mml) {|config| config.strict }
    rescue Nokogiri::XML::SyntaxError => e
      @syntax_errors = e
    end
  end

  def well_formed?
    @syntax_errors.nil? || @syntax_errors.none?
  end

  def valid_to_schema?
    errors.nil?
  end

  def errors
    mml_schema.validate(@mml) if @mml
  end

  def syntax_errors
    @syntax_errors
  end
end
