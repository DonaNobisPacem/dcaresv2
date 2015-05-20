User.create!([
  {email: "johnthomasraphael@gmail.com", encrypted_password: "$2a$10$0C7uKS1uGGEgHgLbJWA5n.8Yh536oQhLmcMZoSehMbIavjiBVOHyq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 6, current_sign_in_at: "2015-05-20 02:16:59", last_sign_in_at: "2015-05-19 02:58:15", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: true, approved: true, first_name: "John Thomas Raphael", last_name: "Dulay"}
])
CanEdit.create!([
  {user_id: 1, university_id: 5},
  {user_id: 1, university_id: 7},
  {user_id: 1, university_id: 2},
  {user_id: 1, university_id: 4},
  {user_id: 1, university_id: 3},
  {user_id: 1, university_id: 8},
  {user_id: 1, university_id: 9},
  {user_id: 1, university_id: 10},
  {user_id: 1, university_id: 1},
  {user_id: 1, university_id: 6}
])
FundSource.create!([
  {source_name: "2012 Academic Program Improvement", fundable_id: 1, fundable_type: "Project"},
  {source_name: "2012 CHED Funding", fundable_id: 2, fundable_type: "Project"},
  {source_name: "2012 PAEP's Initiatives", fundable_id: 1, fundable_type: "Project"},
  {source_name: "2013 Academic Program Improvement", fundable_id: 1, fundable_type: "Project"},
  {source_name: "2013 CO Budget", fundable_id: nil, fundable_type: nil},
  {source_name: "2013 PAEP's Initiatives", fundable_id: nil, fundable_type: nil},
  {source_name: "2014 Academic Program Improvement", fundable_id: nil, fundable_type: nil},
  {source_name: "2014 CO Budget", fundable_id: nil, fundable_type: nil},
  {source_name: "2014 CO Budget (CIDP)", fundable_id: nil, fundable_type: nil},
  {source_name: "2014 PAEP's Initiatives", fundable_id: nil, fundable_type: nil},
  {source_name: "2015 Academic Program Improvement", fundable_id: nil, fundable_type: nil},
  {source_name: "2015 CO Budget", fundable_id: nil, fundable_type: nil},
  {source_name: "2015 CO Budget (NEP)", fundable_id: nil, fundable_type: nil},
  {source_name: "2015 CO Budget (NEP-EO)", fundable_id: nil, fundable_type: nil},
  {source_name: "2015 PAEP's Initiatives", fundable_id: nil, fundable_type: nil},
  {source_name: "DA Funding", fundable_id: nil, fundable_type: nil},
  {source_name: "DPWH Funding", fundable_id: nil, fundable_type: nil},
  {source_name: "Special Allotment Release Order (SARO)", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Baguio Endowment Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Baguio General Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Baguio Revolving Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Baguio Tuition Fee Increase", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Cebu Endowment Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Cebu General Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Cebu Revolving Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Cebu Tuition Fee Increase", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Diliman 60% Share of S&T Parks", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Diliman Endowment Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Diliman General Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Diliman Revolving Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Diliman Tuition Fee Incresase", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Los Baños Endowment Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Los Baños General Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Los Baños Revolving Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Los Baños Tuition Fee Increase", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Manila Endowment Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Manila General Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Manila Revolving Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Manila Tuition Fee Increase", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Mindanao Endowment Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Mindanao General Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Mindanao Revolving Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Mindanao Tuition Fee Increase", fundable_id: nil, fundable_type: nil},
  {source_name: "UP OpenU Endowment Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP OpenU Endowment Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP OpenU General Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP OpenU Revolving Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP OpenU Tuition Fee Increase", fundable_id: nil, fundable_type: nil},
  {source_name: "UP System 40% Share of S&T Parks", fundable_id: nil, fundable_type: nil},
  {source_name: "UP System Endowment Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP System General Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP System Revolving Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Visayas Endowment Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Visayas General Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Visayas Revolving Fund", fundable_id: nil, fundable_type: nil},
  {source_name: "UP Visayas Tuition Fee Increase", fundable_id: nil, fundable_type: nil}
])
Project.create!([
  {project_name: "eUP Component 4-Infrastructure Development ", project_code: "IUPS2015-001", description: "Procurement of various ICT hardware/equipment, peripherals and other related devices in support of the eUP Project (upgrading, integration and harmonization if ICT information systems and infrastructure systemwide) ", expected_outcome: "Operational efficiency and streamlined transactions ", remarks: "Pronet System Integrated Network Sol. Inc.\r\nLiteware Computers Corp.\r\nSammy's Aircon. Ref. Services & Repair Shop\r\nPronet System Integrated Network Sol. Inc.\r\nAmerican Technologies Inc.\r\nMicrogenesis Business Systems\r\nThe Value System Phil. Inc.\r\nUniversal Access and Systems Sol. Phil. Inc.\r\nInfoworx Inc.\r\nLANDBANK  \r\nImax Technologies Inc.\r\nePLDT Inc.\r\nAmerican Technologies  Inc.\r\nAccel Prime Technologies Inc.\r\nInfoworx Inc.\r\nMaximun Solutions Corp\r\nCompucare Corporation\r\nMicrodata System & Mngt. Inc. \r\nStudio84 Incorporated\r\nBayanPC Technologies Inc.\r\nProverbs Enterprises \r\nThe Value System Phil. Inc.\r\nIntegrated Computer System\r\nMaximun Solutions Corp\r\nImax Technologies\r\nAmerican Technologies \r\nMedia Convergence Inc", percent_accomplishment: "100.0", percent_accomplishment_by: "2015-05-21 00:00:00", bidding_contractor: "Pronet System Integrated Network Sol. Inc., Liteware Computers Corp., for the complete list, please see Remarks section", bidding_number: 1, bidding_award: "2015-05-15 00:00:00", bidding_proceed: "2015-05-15 00:00:00", financial_budget: "198000000.0", financial_contract_price: nil, financial_actual_cost: nil, financial_source: "2012 CHED Funding", timeline_target_start: nil, timeline_target_end: nil, timeline_actual_start: nil, timeline_actual_end: nil, university_id: 1, status: 2, completed_by: nil},
  {project_name: "Structural Assessment of QH", project_code: "IUPS2015-002", description: " Outsourcing of Quezon Hall (Central Adminitration Building) structural assessment to ensure compliance with new codes (building, fire, etc.), and in preparation for the renovation of the building. ", expected_outcome: "Safer working environment for UP administrators and stakeholders ", remarks: "", percent_accomplishment: "100.0", percent_accomplishment_by: nil, bidding_contractor: "A.C. Ong Consulting Inc.", bidding_number: 1, bidding_award: "2012-12-06 00:00:00", bidding_proceed: nil, financial_budget: "1000000.0", financial_contract_price: "871000.0", financial_actual_cost: "871000.0", financial_source: "", timeline_target_start: nil, timeline_target_end: nil, timeline_actual_start: "2014-06-18 00:00:00", timeline_actual_end: "2014-10-17 00:00:00", university_id: 1, status: 1, completed_by: nil}
])
ProjectComponent.create!([
  {project_id: 1, component_name: "Project A-Various ICT Hardware/Equipment", description: "Procurement of various ICT hardware/equipment, peripherals and other related devices in support of the eUP Project (upgrading, integration and harmonization if ICT information systems and infrastructure systemwide) ", expected_outcome: "Operational efficiency and streamlined transactions ", remarks: "", percent_accomplishment: "0.0", percent_accomplishment_by: "2015-05-15 00:00:00", bidding_contractor: "Complete list in the Remarks section", bidding_number: 1, bidding_award: "2015-05-15 00:00:00", bidding_proceed: "2015-05-15 00:00:00", financial_budget: nil, financial_contract_price: "150324891.0", financial_actual_cost: "150324891.0", financial_source: "", timeline_target_start: "2015-05-15 00:00:00", timeline_target_end: "2015-05-15 00:00:00", timeline_actual_start: "2015-05-15 00:00:00", timeline_actual_end: "2015-05-15 00:00:00"},
  {project_id: 1, component_name: "Project B-Various ICT Hardware/Equipment for UPOU", description: "Procurement of various ICT hardware/equipment, peripherals and other related devices in support of the eUP Project (upgrading, integration and harmonization if ICT information systems and infrastructure systemwide) ", expected_outcome: "Operational efficiency and streamlined transactions ", remarks: "", percent_accomplishment: nil, percent_accomplishment_by: "2015-05-15 00:00:00", bidding_contractor: "", bidding_number: 1, bidding_award: "2015-05-15 00:00:00", bidding_proceed: "2015-05-15 00:00:00", financial_budget: nil, financial_contract_price: "47675109.0", financial_actual_cost: "47675109.0", financial_source: "", timeline_target_start: "2015-05-15 00:00:00", timeline_target_end: "2015-05-15 00:00:00", timeline_actual_start: "2015-05-15 00:00:00", timeline_actual_end: "2015-05-15 00:00:00"}
])
ProjectImage.create!([
  {project_id: 1, image: "9JeSr.jpg", description: nil}
])
ProjectStatus.create!([
  {description: "Completed"},
  {description: "Ongoing"},
  {description: "Delayed"},
  {description: "Terminated"}
])
University.create!([
  {university_name: "UP System"},
  {university_name: "UP Diliman"},
  {university_name: "UP Manila"},
  {university_name: "UP Los Banos"},
  {university_name: "UP Baguio"},
  {university_name: "UP Visayas"},
  {university_name: "UP Cebu"},
  {university_name: "UP Mindanao"},
  {university_name: "UP Open University"},
  {university_name: "UP PGH"}
])
