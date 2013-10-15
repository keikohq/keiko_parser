require 'spec_helper'

describe Keiko::Parser::Finder do

  describe "#extract" do

    it 'returns the right subtree root' do
      url = 'http://www.auvasa.es/lineas.asp'
      xpath = '//*[@id="column_l"]/table/tr[2]/td[2]' # //*[@id="column_l"]/table/tbody/tr[2]/td[2]

      Keiko::Parser::Finder::extract( url, xpath).attribute('class').value().should eql "style71"

    end

  end

end