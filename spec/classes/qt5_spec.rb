require 'spec_helper'

describe 'qt5' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
      :boxen_user => 'testuser',
    }
  end

  it do
    should include_class('homebrew')
    should include_class('xquartz')

    should contain_homebrew__formula('qt5')
    should contain_package('boxen/brews/qt5').with_ensure('5.1.0-boxen1')
  end
end
