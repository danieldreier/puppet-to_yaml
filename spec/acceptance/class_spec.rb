require 'spec_helper_acceptance'

describe 'puppet_to_yaml class' do
  context 'default parameters' do
    # Using puppet_apply as a helper
    it 'should work idempotently with no errors' do
      pp = <<-EOS
      class { 'puppet_to_yaml': }
      EOS

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes  => true)
    end

    describe package('puppet_to_yaml') do
      it { is_expected.to be_installed }
    end

    describe service('puppet_to_yaml') do
      it { is_expected.to be_enabled }
      it { is_expected.to be_running }
    end
  end
end
