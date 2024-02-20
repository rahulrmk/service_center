class Group < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => :users_groups

  def model_list
    case name
    when "inward-remittance"
      Qg::Inw::MODELS
    # when "e-collect"
    #   Qg::Ecol::MODELS
    # # when "bill-management"
    # #   Qg::Bm::MODELS
    # when "prepaid-card"
    #   ['PcApp','PcProgram', 'PcProduct', 'PcFeeRule','PcUnapprovedRecord','PcMmCdIncomingRecord','IncomingFile','IncomingFileRecord','PcMmCdIncomingFile']
    # when "prepaid-card2"
    #   ['Pc2App','Pc2CustAccount']
    # when "flex-proxy"
    #   Qg::Fp::MODELS
    # when "imt1"
    #   Qg::Imt1::MODELS
    # when "funds-transfer"
    #   Qg::Ft::MODELS
    # when "salary-upload"
    #   ['IncomingFile','SuCustomer','SuUnapprovedRecord','SuIncomingRecord','FmAuditStep','SuIncomingFile']
    # when "instant-credit"
    #   Qg::Ic::MODELS
    # when "smb"
    #   Qg::Sm::MODELS
    # when "cnb"
    #   ['CnUnapprovedRecord','IncomingFile','IncomingFileRecord','CnIncomingFile','CnIncomingRecord','Cnb2IncomingFile','Cnb2IncomingRecord']
    # when "recurring-transfer"
    #   ['RcTransferUnapprovedRecord','RcTransfer','RcTransferSchedule','RcAuditStep','RcApp']
    # when "sc-backend"
    #   Qg::Sc::MODELS
    # when "rr"
    #   ['RrUnapprovedRecord','IncomingFile','IncomingFileRecord','RrIncomingFile','RrIncomingRecord','ReconciledReturn']
    # when "iam"
    #   ['IamAuditLog', 'IamAuditRule','IamCustUser','IamOrganisation']
    # when "fr"
    #   ['IncomingFile','IncomingFileRecord','FrR01IncomingFile','FrR01IncomingRecord']
    # when "ns"
    #   Qg::Ns::MODELS
    # when "ssp"
    #   Qg::Ssp::MODELS
    # when "icol"
    #   Qg::Icol::MODELS
    # when "asba"
    #   Qg::Asba::MODELS
    # when "payByCreditCard"
    #   Qg::Cc::MODELS
    # when "gm"
    #   Qg::Gm::MODELS
    # when "rpl"
    #   Qg::Rpl::MODELS  
    # when "cinepolis"
    #   Qg::Cp::MODELS
    # when "account-enquiry"
    #   Qg::Ae::MODELS
    # when "reverse-proxy"
    #   Qg::Rx::MODELS
    # when "Obdx"
    #   Qg::Obdx::MODELS
    # when "es"
    #   Qg::Es::MODELS
    # when "dpesb"
    #   Qg::Dpesb::MODELS  
    # # when "ctl"
    # #   Qg::Ctl::MODELS
    # # when "dashboard"
    # #   Qg::Dashboard::MODELS 
    # when "datapurge"
    #   Qg::Datapurge::MODELS 
    # when "ecolmanual"
    #   Qg::Ecolmanual::MODELS           
    else
      []
    end
  end
end