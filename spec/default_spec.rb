require 'spec_helper'

describe 'yum_mysql_community::default' do

  context 'yum_mysql_community::default uses default attributes' do
    let(:chef_run) { ChefSpec::Runner.new(:step_into => ['yum_repository']).converge(described_recipe) }

    it 'creates the gpg key file' do
      expect(chef_run).to create_cookbook_file('/etc/pki/rpm-gpg/RPM-GPG-KEY-mysql')
    end

    %w{
      mysql56-community
      }.each do |repo|
      it "creates yum_repository[#{repo}]" do
        expect(chef_run).to create_yum_repository(repo)
      end

      it "steps into yum_repository and creates template[/etc/yum.repos.d/#{repo}.repo]" do
        expect(chef_run).to render_file("/etc/yum.repos.d/#{repo}.repo")
      end
    end

  end
end
