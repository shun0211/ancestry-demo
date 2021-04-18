# 会社
company = Company.create(name: "システム開発株式会社")

# 部署
department_1 = Department.create(company: company, name: "人事部")
department_2 = Department.create(company: company, name: "営業部")
department_3 = Department.create(company: company, name: "開発部")
department_3_1 = department_3.children.create(company: company, name: "Webアプリケーション開発部")
department_3_2 = department_3.children.create(company: company, name: "ネイティブアプリケーション開発部")
department_3_1_1 = department_3_1.children.create(company: company, name: "フロントエンド")
department_3_1_2 = department_3_1.children.create(company: company, name: "バックエンド")
department_3_1_3 = department_3_1.children.create(company: company, name: "インフラ")
department_3_2_1 = department_3_2.children.create(company: company, name: "フロントエンド")
department_3_2_2 = department_3_2.children.create(company: company, name: "バックエンド")
department_3_2_3 = department_3_2.children.create(company: company, name: "インフラ")

# 従業員
# 人事部
Employee.create(name: 'A', company: company, department: department_1)
Employee.create(name: 'B', company: company, department: department_1)
# 営業部
Employee.create(name: 'C', company: company, department: department_2)
Employee.create(name: 'D', company: company, department: department_2)
# 開発部
Employee.create(name: 'E', company: company, department: department_3)
#  Webアプリケーション開発部
Employee.create(name: 'F', company: company, department: department_3_1)
Employee.create(name: 'G', company: company, department: department_3_1_1) # フロントエンド
Employee.create(name: 'H', company: company, department: department_3_1_1) # フロントエンド
Employee.create(name: 'I', company: company, department: department_3_1_2) # バックエンド
Employee.create(name: 'J', company: company, department: department_3_1_2) # バックエンド
Employee.create(name: 'K', company: company, department: department_3_1_3) # インフラ
Employee.create(name: 'L', company: company, department: department_3_1_3) # インフラ
#  ネイティブアプリケーション開発部
Employee.create(name: 'M',company: company, department: department_3_2)
Employee.create(name: 'N',company: company, department: department_3_2_1) # フロントエンド
Employee.create(name: 'O',company: company, department: department_3_2_2) # バックエンド
Employee.create(name: 'P',company: company, department: department_3_2_3) # インフラ
