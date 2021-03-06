require 'spec_helper'

module Nombus
  describe Configurator do
    let(:yaml_config) { YAML.load( File.open(CONFIG_PATH) ) }
    let(:config)  { Configurator.new(yaml_config) }
    let(:column_minus_1) { yaml_config['column'] - 1 }
    
    describe "#column=" do
      it "raises an error if column is not a number" do
        expect { config.column = 'non-number' }.to raise_error
      end
      
      it "sets the column to the given number" do
        config.column = '1'
        config.column.should == '1'
      end
    end
    
    describe "#column_index" do
      it "returns an Integer" do
        config.column_index.should be_an_integer
      end
      
      it "returns a number that is 1 less than what was initially given" do
        config.column_index.should == column_minus_1
      end
    end
    
    describe "#separator=" do
      it "raises an error if the separator is a whitespace character" do
        expect { config.separator = ' ' }.to raise_error
      end
      
      it "it sets the separator to the given character" do
        config.separator = '|'
        config.separator.should == '|'
      end

      it 'returns a tab escape sequence if \t is the input' do
        config.separator = '\t'
        config.separator.should == "\t"
      end
    end
  end
end