require File.expand_path('../../spec_helper', __FILE__)

module Pod
  describe Command::Pxplugin do
    describe 'CLAide' do
      it 'registers it self' do
        Command.parse(%w{ pxplugin }).should.be.instance_of Command::Pxplugin
      end
    end
  end
end

