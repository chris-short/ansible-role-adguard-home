title 'AdGuard Home InSpec'

describe file('/usr/local/bin/AdGuardHome.yaml') do
  it { should exist }
end

describe service('adguardhome') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

# describe processes('AdGuardHome') do
#  it { should exist }
# end

# describe port(53) do
#  it { should be_listening }
# end
