# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: proto/gateway.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("proto/gateway.proto", :syntax => :proto3) do
    add_message "gateway_protocol.ActivateJobsRequest" do
      optional :type, :string, 1
      optional :worker, :string, 2
      optional :timeout, :int64, 3
      optional :maxJobsToActivate, :int32, 4
      repeated :fetchVariable, :string, 5
      optional :requestTimeout, :int64, 6
    end
    add_message "gateway_protocol.ActivateJobsResponse" do
      repeated :jobs, :message, 1, "gateway_protocol.ActivatedJob"
    end
    add_message "gateway_protocol.ActivatedJob" do
      optional :key, :int64, 1
      optional :type, :string, 2
      optional :workflowInstanceKey, :int64, 3
      optional :bpmnProcessId, :string, 4
      optional :workflowDefinitionVersion, :int32, 5
      optional :workflowKey, :int64, 6
      optional :elementId, :string, 7
      optional :elementInstanceKey, :int64, 8
      optional :customHeaders, :string, 9
      optional :worker, :string, 10
      optional :retries, :int32, 11
      optional :deadline, :int64, 12
      optional :variables, :string, 13
    end
    add_message "gateway_protocol.CancelWorkflowInstanceRequest" do
      optional :workflowInstanceKey, :int64, 1
    end
    add_message "gateway_protocol.CancelWorkflowInstanceResponse" do
    end
    add_message "gateway_protocol.CompleteJobRequest" do
      optional :jobKey, :int64, 1
      optional :variables, :string, 2
    end
    add_message "gateway_protocol.CompleteJobResponse" do
    end
    add_message "gateway_protocol.CreateWorkflowInstanceRequest" do
      optional :workflowKey, :int64, 1
      optional :bpmnProcessId, :string, 2
      optional :version, :int32, 3
      optional :variables, :string, 4
    end
    add_message "gateway_protocol.CreateWorkflowInstanceResponse" do
      optional :workflowKey, :int64, 1
      optional :bpmnProcessId, :string, 2
      optional :version, :int32, 3
      optional :workflowInstanceKey, :int64, 4
    end
    add_message "gateway_protocol.DeployWorkflowRequest" do
      repeated :workflows, :message, 1, "gateway_protocol.WorkflowRequestObject"
    end
    add_message "gateway_protocol.WorkflowRequestObject" do
      optional :name, :string, 1
      optional :type, :enum, 2, "gateway_protocol.WorkflowRequestObject.ResourceType"
      optional :definition, :bytes, 3
    end
    add_enum "gateway_protocol.WorkflowRequestObject.ResourceType" do
      value :FILE, 0
      value :BPMN, 1
      value :YAML, 2
    end
    add_message "gateway_protocol.DeployWorkflowResponse" do
      optional :key, :int64, 1
      repeated :workflows, :message, 2, "gateway_protocol.WorkflowMetadata"
    end
    add_message "gateway_protocol.WorkflowMetadata" do
      optional :bpmnProcessId, :string, 1
      optional :version, :int32, 2
      optional :workflowKey, :int64, 3
      optional :resourceName, :string, 4
    end
    add_message "gateway_protocol.FailJobRequest" do
      optional :jobKey, :int64, 1
      optional :retries, :int32, 2
      optional :errorMessage, :string, 3
    end
    add_message "gateway_protocol.FailJobResponse" do
    end
    add_message "gateway_protocol.PublishMessageRequest" do
      optional :name, :string, 1
      optional :correlationKey, :string, 2
      optional :timeToLive, :int64, 3
      optional :messageId, :string, 4
      optional :variables, :string, 5
    end
    add_message "gateway_protocol.PublishMessageResponse" do
    end
    add_message "gateway_protocol.ResolveIncidentRequest" do
      optional :incidentKey, :int64, 1
    end
    add_message "gateway_protocol.ResolveIncidentResponse" do
    end
    add_message "gateway_protocol.TopologyRequest" do
    end
    add_message "gateway_protocol.TopologyResponse" do
      repeated :brokers, :message, 1, "gateway_protocol.BrokerInfo"
      optional :clusterSize, :int32, 2
      optional :partitionsCount, :int32, 3
      optional :replicationFactor, :int32, 4
    end
    add_message "gateway_protocol.BrokerInfo" do
      optional :nodeId, :int32, 1
      optional :host, :string, 2
      optional :port, :int32, 3
      repeated :partitions, :message, 4, "gateway_protocol.Partition"
    end
    add_message "gateway_protocol.Partition" do
      optional :partitionId, :int32, 1
      optional :role, :enum, 2, "gateway_protocol.Partition.PartitionBrokerRole"
    end
    add_enum "gateway_protocol.Partition.PartitionBrokerRole" do
      value :LEADER, 0
      value :FOLLOWER, 1
    end
    add_message "gateway_protocol.UpdateJobRetriesRequest" do
      optional :jobKey, :int64, 1
      optional :retries, :int32, 2
    end
    add_message "gateway_protocol.UpdateJobRetriesResponse" do
    end
    add_message "gateway_protocol.SetVariablesRequest" do
      optional :elementInstanceKey, :int64, 1
      optional :variables, :string, 2
      optional :local, :bool, 3
    end
    add_message "gateway_protocol.SetVariablesResponse" do
    end
  end
end

module Zeebe::Client::GatewayProtocol
  ActivateJobsRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.ActivateJobsRequest").msgclass
  ActivateJobsResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.ActivateJobsResponse").msgclass
  ActivatedJob = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.ActivatedJob").msgclass
  CancelWorkflowInstanceRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.CancelWorkflowInstanceRequest").msgclass
  CancelWorkflowInstanceResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.CancelWorkflowInstanceResponse").msgclass
  CompleteJobRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.CompleteJobRequest").msgclass
  CompleteJobResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.CompleteJobResponse").msgclass
  CreateWorkflowInstanceRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.CreateWorkflowInstanceRequest").msgclass
  CreateWorkflowInstanceResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.CreateWorkflowInstanceResponse").msgclass
  DeployWorkflowRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.DeployWorkflowRequest").msgclass
  WorkflowRequestObject = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.WorkflowRequestObject").msgclass
  WorkflowRequestObject::ResourceType = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.WorkflowRequestObject.ResourceType").enummodule
  DeployWorkflowResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.DeployWorkflowResponse").msgclass
  WorkflowMetadata = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.WorkflowMetadata").msgclass
  FailJobRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.FailJobRequest").msgclass
  FailJobResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.FailJobResponse").msgclass
  PublishMessageRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.PublishMessageRequest").msgclass
  PublishMessageResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.PublishMessageResponse").msgclass
  ResolveIncidentRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.ResolveIncidentRequest").msgclass
  ResolveIncidentResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.ResolveIncidentResponse").msgclass
  TopologyRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.TopologyRequest").msgclass
  TopologyResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.TopologyResponse").msgclass
  BrokerInfo = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.BrokerInfo").msgclass
  Partition = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.Partition").msgclass
  Partition::PartitionBrokerRole = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.Partition.PartitionBrokerRole").enummodule
  UpdateJobRetriesRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.UpdateJobRetriesRequest").msgclass
  UpdateJobRetriesResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.UpdateJobRetriesResponse").msgclass
  SetVariablesRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.SetVariablesRequest").msgclass
  SetVariablesResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("gateway_protocol.SetVariablesResponse").msgclass
end
