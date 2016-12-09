# coding: euc-jp
# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort('The Rails environment is running in production mode!') if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'
# Add additional requires below this line. Rails is not loaded until this point!

# Requires supporting ruby files with custom matchers and macros, etc, in
# spec/support/ and its subdirectories. Files matching `spec/**/*_spec.rb` are
# run as spec files by default. This means that files in spec/support that end
# in _spec.rb will both be required and run as specs, causing the specs to be
# run twice. It is recommended that you do not name files matching this glob to
# end with _spec.rb. You can configure this pattern with the --pattern
# option on the command line or in ~/.rspec, .rspec or `.rspec-local`.
#
# The following line is provided for convenience purposes. It has the downside
# of increasing the boot-up time by auto-requiring all files in the support
# directory. Alternatively, in the individual `*_spec.rb` files, manually
# require only the support files necessary.
#
# Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

# Checks for pending migration and applies them before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  # RSpec Rails can automatically mix in different behaviours to your tests
  # based on their file location, for example enabling you to call `get` and
  # `post` in specs under `spec/controllers`.
  #
  # You can disable this behaviour by removing the line below, and instead
  # explicitly tag your specs with their type, e.g.:
  #
  #     RSpec.describe UsersController, :type => :controller do
  #       # ...
  #     end
  #
  # The different available types are documented in the features, such as in
  # https://relishapp.com/rspec/rspec-rails/docs
  config.infer_spec_type_from_file_location!

  # Filter lines from Rails gems in backtraces.
  config.filter_rails_from_backtrace!
  # arbitrary gems may also be filtered via:
  # config.filter_gems_from_backtrace("gem name")
end

VALID_MML = <<END
<?xml version="1.0" encoding="UTF-8"?>
<Mml version="4.1.2"
     createDate="2016-12-04T19:41:11"
     xmlns:xhtml="http://www.w3.org/1999/xhtml"
     xmlns="http://www.medxml.net/MML/v4/base/1.0"
     xmlns:mml="http://www.medxml.net/MML/v4/base/1.0"
     xmlns:mmlCm="http://www.medxml.net/MML/v4/SharedComponent/Common/1.0"
     xmlns:mmlNm="http://www.medxml.net/MML/v4/SharedComponent/Name/1.0"
     xmlns:mmlFc="http://www.medxml.net/MML/v4/SharedComponent/Facility/1.0"
     xmlns:mmlDp="http://www.medxml.net/MML/v4/SharedComponent/Department/1.0"
     xmlns:mmlAd="http://www.medxml.net/MML/v4/SharedComponent/Address/1.0"
     xmlns:mmlPh="http://www.medxml.net/MML/v4/SharedComponent/Phone/1.0"
     xmlns:mmlPsi="http://www.medxml.net/MML/v4/SharedComponent/PersonalizedInfo/1.0"
     xmlns:mmlCi="http://www.medxml.net/MML/v4/SharedComponent/CreatorInfo/1.0"
     xmlns:mmlPi="http://www.medxml.net/MML/v4/ContentModule/PatientInfo/1.0"
     xmlns:mmlBc="http://www.medxml.net/MML/v4/ContentModule/BaseClinic/1.0"
     xmlns:mmlFcl="http://www.medxml.net/MML/v4/ContentModule/FirstClinic/1.0"
     xmlns:mmlHi="http://www.medxml.net/MML/v4/SharedComponent/HealthInsurance/1.0"
     xmlns:mmlLs="http://www.medxml.net/MML/v4/ContentModule/Lifestyle/1.0"
     xmlns:mmlPc="http://www.medxml.net/MML/v4/ContentModule/ProgressCourse/1.0"
     xmlns:mmlRd="http://www.medxml.net/MML/v4/SharedComponent/RegisteredDiagnosis/1.0"
     xmlns:mmlSg="http://www.medxml.net/MML/v4/ContentModule/Surgery/1.0"
     xmlns:mmlSm="http://www.medxml.net/MML/v4/ContentModule/Summary/1.0"
     xmlns:mmlLb="http://www.medxml.net/MML/v4/ContentModule/test/1.0"
     xmlns:mmlRp="http://www.medxml.net/MML/v4/ContentModule/report/1.0"
     xmlns:mmlRe="http://www.medxml.net/MML/v4/ContentModule/Referral/1.0"
     xmlns:mmlSc="http://www.medxml.net/MML/v4/SharedComponent/Security/1.0"
     xmlns:claim="http://www.medxml.net/claim/claimModule/2.1"
     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
     xmlns:claimA="http://www.medxml.net/claim/claimAmountModule/2.1">
  <MmlHeader>
    <mmlCi:CreatorInfo>
      <mmlPsi:PersonalizedInfo>
	<mmlCm:Id mmlCm:type="facility" mmlCm:tableId="JPN999999900009">11</mmlCm:Id>
	<mmlPsi:personName>
	  <mmlNm:Name mmlNm:repCode="I" mmlNm:tableId="MML0025">
	    <mmlNm:family>責任者姓</mmlNm:family>
	    <mmlNm:given>責任者名</mmlNm:given>
	  </mmlNm:Name>
	</mmlPsi:personName>
	<mmlFc:Facility>
	  <mmlFc:name mmlFc:repCode="I" mmlFc:tableId="MML0025">検査センター</mmlFc:name>
	  <mmlCm:Id mmlCm:type="JMARI" mmlCm:tableId="MML0027">JPN999999900009</mmlCm:Id>
	</mmlFc:Facility>
      </mmlPsi:PersonalizedInfo>
      <mmlCi:creatorLicense mmlCi:tableId="MML0026">lab</mmlCi:creatorLicense>
    </mmlCi:CreatorInfo>
    <masterId>
      <mmlCm:Id mmlCm:type="facility" mmlCm:tableId="JPN999999900099">11370</mmlCm:Id>
    </masterId>
  </MmlHeader>
  <MmlBody>
    <MmlModuleItem>
      <docInfo contentModuleType="test">
	<mmlSc:securityLevel>
	  <mmlSc:accessRight permit="read">
	    <mmlSc:facility>
	      <mmlSc:facilityName mmlSc:facilityCode="individual" mmlSc:tableId="MML0035" mmlSc:facilityId="JPN99999900099" mmlSc:facilityIdType="JMARI">テスト医院1</mmlSc:facilityName>
	    </mmlSc:facility>
	  </mmlSc:accessRight>
	  <mmlSc:accessRight permit="read">
	    <mmlSc:person>
	      <mmlSc:personName mmlSc:personCode="patient" mmlSc:tableId="MML0036">患者氏名1　</mmlSc:personName>
	    </mmlSc:person>
	  </mmlSc:accessRight>
	</mmlSc:securityLevel>
	<title generationPurpose="reportTest">　　　　　　　　　　</title>
	<docId>
	  <uid>b9b5008e-a3fe-4657-8c50-7c9964b6e60d</uid>
	</docId>
	<confirmDate>2016-12-04T18:29:33</confirmDate>
	<mmlCi:CreatorInfo>
	  <mmlPsi:PersonalizedInfo>
	    <mmlCm:Id mmlCm:type="facility" mmlCm:tableId="JPN999999900009">11</mmlCm:Id>
	    <mmlPsi:personName>
	      <mmlNm:Name mmlNm:repCode="I" mmlNm:tableId="MML0025">
		<mmlNm:family>責任者姓</mmlNm:family>
		<mmlNm:given>責任者名</mmlNm:given>
	      </mmlNm:Name>
	    </mmlPsi:personName>
	    <mmlFc:Facility>
	      <mmlFc:name mmlFc:repCode="I" mmlFc:tableId="MML0025">検査センター</mmlFc:name>
	      <mmlCm:Id mmlCm:type="JMARI" mmlCm:tableId="MML0027">JPN999999900009</mmlCm:Id>
	    </mmlFc:Facility>
	  </mmlPsi:PersonalizedInfo>
	  <mmlCi:creatorLicense mmlCi:tableId="MML0026">lab</mmlCi:creatorLicense>
	</mmlCi:CreatorInfo>
	<extRefs />
      </docInfo>
      <content>
	<mmlLb:TestModule>
	  <mmlLb:information mmlLb:registId="200201251503" mmlLb:sampleTime="2002-01-25T00:00:00" mmlLb:registTime="2002-01-25T00:00:00" mmlLb:reportTime="2002-01-25T00:00:00">
	    <mmlLb:reportStatus mmlLb:statusCode="final" mmlLb:statusCodeId="mmlLb0001">最終報告</mmlLb:reportStatus>
	    <mmlLb:set>　　　　　　　　　　</mmlLb:set>
	    <mmlLb:facility mmlLb:facilityCode="JPN452010100013" mmlLb:facilityCodeId="JMARI">テスト医院1</mmlLb:facility>
	    <mmlLb:department mmlLb:depCode="02" mmlLb:depCodeId="MML0028">外科　　　　　　　　</mmlLb:department>
	    <mmlLb:client>　　　　　　　　　　</mmlLb:client>
	    <mmlLb:laboratoryCenter mmlLb:centerCode="JPN999999900009" mmlLb:centerCodeId="JMARI">検査センター</mmlLb:laboratoryCenter>
	  </mmlLb:information>
	  <mmlLb:laboTest>
	    <mmlLb:specimen>
	      <mmlLb:specimenName mmlLb:spCode="01" mmlLb:spCodeId="miyazaki04">血清　　　　</mmlLb:specimenName>
	    </mmlLb:specimen>
	    <mmlLb:item>
	      <mmlLb:itemName mmlLb:itCode="0037" mmlLb:itCodeId="miyazaki06">ＢＵＮ　　　　　　　</mmlLb:itemName>
	      <mmlLb:value>13.5</mmlLb:value>
	      <mmlLb:numValue mmlLb:up="20.0" mmlLb:low="8.0" mmlLb:out="N">13.5</mmlLb:numValue>
	      <mmlLb:unit mmlLb:uCode="05" mmlLb:uCodeId="miyazaki07">MG/DL</mmlLb:unit>
	    </mmlLb:item>
	    <mmlLb:item>
	      <mmlLb:itemName mmlLb:itCode="0038" mmlLb:itCodeId="miyazaki06">クレアチニン　　　　</mmlLb:itemName>
	      <mmlLb:value>0.9</mmlLb:value>
	      <mmlLb:numValue mmlLb:up="1.1" mmlLb:low="0.3" mmlLb:out="N">0.9</mmlLb:numValue>
	      <mmlLb:unit mmlLb:uCode="05" mmlLb:uCodeId="miyazaki07">MG/DL</mmlLb:unit>
	    </mmlLb:item>
	    <mmlLb:item>
	      <mmlLb:itemName mmlLb:itCode="0046" mmlLb:itCodeId="miyazaki06">尿酸　　　　　　　　</mmlLb:itemName>
	      <mmlLb:value>7.0</mmlLb:value>
	      <mmlLb:numValue mmlLb:up="8.2" mmlLb:low="3.0" mmlLb:out="N">7.0</mmlLb:numValue>
	      <mmlLb:unit mmlLb:uCode="05" mmlLb:uCodeId="miyazaki07">MG/DL</mmlLb:unit>
	    </mmlLb:item>
	    <mmlLb:item>
	      <mmlLb:itemName mmlLb:itCode="0301" mmlLb:itCodeId="miyazaki06">ＣＲＰ　　　　　　　</mmlLb:itemName>
	      <mmlLb:value>0.1</mmlLb:value>
	      <mmlLb:numValue mmlLb:up="0.4" mmlLb:low="0.0" mmlLb:out="N" xsi:nil="true"/>
	      <mmlLb:unit mmlLb:uCode="05" mmlLb:uCodeId="miyazaki07">MG/DL</mmlLb:unit>
	    </mmlLb:item>
	  </mmlLb:laboTest>
	</mmlLb:TestModule>
      </content>
    </MmlModuleItem>
  </MmlBody>
</Mml>
END

INVALID_MML=<<END
<?xml version="1.0" encoding="UTF-8"?>
<MML>
  <badMml>
  </badMml>
</MML>
END
