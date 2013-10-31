class AwsDeploy::AwsDeployApplicationController < ApplicationController

  private

  # 
  # 
  def _exist_config?
    File.exist?(Rails.root.join("config/aws_deploy.yml"))
  end


  # 
  # 
  def _aws_access_key_id
    $deployer_mg['aws_access_key_id'].start_with?("ENV") ? eval($deployer_mg['aws_access_key_id']) : $deployer_mg['aws_access_key_id']
  end

  # 
  # 
  def _aws_secret_access_key
    $deployer_mg['aws_secret_access_key'].start_with?("ENV") ? eval($deployer_mg['aws_secret_access_key']) : $deployer_mg['aws_secret_access_key']
  end

  # 
  # 
  def _aws_bucket
    $deployer_mg['aws_bucket']
  end

  # 
  # 
  def _zip_file env=""
    "#{$deployer_mg['file_pattern']}-#{env}.zip"
  end

  def _md5_file env=""
    "#{$deployer_mg['file_pattern']}-#{env}.md5"
  end


end