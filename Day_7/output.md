# 10.7c

# vsim -lib work work.tb_booths_algorithm -c -do "run -all; quit -f" -appendlog -l qverilog.log -vopt
# ** Note: (vsim-3812) Design is being optimized...
# //  Questa Sim-64
# //  Version 10.7c win64 Aug 18 2018
# //
# //  Copyright 1991-2018 Mentor Graphics Corporation
# //  All Rights Reserved.
# //
# //  QuestaSim and its associated documentation contain trade
# //  secrets and commercial or financial information that are the property of
# //  Mentor Graphics Corporation and are privileged, confidential,
# //  and exempt from disclosure under the Freedom of Information Act,
# //  5 U.S.C. Section 552. Furthermore, this information
# //  is prohibited from disclosure under the Trade Secrets Act,
# //  18 U.S.C. Section 1905.
# //
# Loading work.tb_booths_algorithm(fast)
# run -all
# T=0 State=x A=x Q=x q1=x Count=x Product=x Done=x
# T=5000 State=0 A=0 Q=0 q1=0 Count=0 Product=0 Done=0
# T=25000 State=1 A=0 Q=0 q1=0 Count=0 Product=0 Done=0
# T=35000 State=2 A=0 Q=2 q1=0 Count=4 Product=0 Done=0
# T=45000 State=4 A=0 Q=2 q1=0 Count=4 Product=0 Done=0
# T=55000 State=2 A=0 Q=1 q1=0 Count=3 Product=0 Done=0
# T=65000 State=3 A=0 Q=1 q1=0 Count=3 Product=0 Done=0
# T=75000 State=4 A=13 Q=1 q1=0 Count=3 Product=0 Done=0
# T=85000 State=2 A=14 Q=8 q1=1 Count=2 Product=0 Done=0
# T=95000 State=3 A=14 Q=8 q1=1 Count=2 Product=0 Done=0
# T=105000 State=4 A=1 Q=8 q1=1 Count=2 Product=0 Done=0
# T=115000 State=2 A=0 Q=12 q1=0 Count=1 Product=0 Done=0
# T=125000 State=4 A=0 Q=12 q1=0 Count=1 Product=0 Done=0
# T=135000 State=5 A=0 Q=6 q1=0 Count=0 Product=0 Done=0
# 3 x 2 = 6  Product = 6||done=1
# T=145000 State=0 A=0 Q=6 q1=0 Count=0 Product=6 Done=1
# T=155000 State=1 A=0 Q=6 q1=0 Count=0 Product=6 Done=1
# T=165000 State=2 A=0 Q=5 q1=0 Count=4 Product=6 Done=0
# T=175000 State=3 A=0 Q=5 q1=0 Count=4 Product=6 Done=0
# T=185000 State=4 A=11 Q=5 q1=0 Count=4 Product=6 Done=0
# T=195000 State=2 A=13 Q=10 q1=1 Count=3 Product=6 Done=0
# T=205000 State=3 A=13 Q=10 q1=1 Count=3 Product=6 Done=0
# T=215000 State=4 A=2 Q=10 q1=1 Count=3 Product=6 Done=0
# T=225000 State=2 A=1 Q=5 q1=0 Count=2 Product=6 Done=0
# T=235000 State=3 A=1 Q=5 q1=0 Count=2 Product=6 Done=0
# T=245000 State=4 A=12 Q=5 q1=0 Count=2 Product=6 Done=0
# T=255000 State=2 A=14 Q=2 q1=1 Count=1 Product=6 Done=0
# T=265000 State=3 A=14 Q=2 q1=1 Count=1 Product=6 Done=0
# T=275000 State=4 A=3 Q=2 q1=1 Count=1 Product=6 Done=0
# T=285000 State=5 A=1 Q=9 q1=0 Count=0 Product=6 Done=0
# 5 x 5 = 25  Product = 25||done=1
# T=295000 State=0 A=1 Q=9 q1=0 Count=0 Product=25 Done=1
# T=305000 State=1 A=1 Q=9 q1=0 Count=0 Product=25 Done=1
# T=315000 State=2 A=0 Q=7 q1=0 Count=4 Product=25 Done=0
# T=325000 State=3 A=0 Q=7 q1=0 Count=4 Product=25 Done=0
# T=335000 State=4 A=9 Q=7 q1=0 Count=4 Product=25 Done=0
# T=345000 State=2 A=12 Q=11 q1=1 Count=3 Product=25 Done=0
# T=355000 State=4 A=12 Q=11 q1=1 Count=3 Product=25 Done=0
# T=365000 State=2 A=14 Q=5 q1=1 Count=2 Product=25 Done=0
# T=375000 State=4 A=14 Q=5 q1=1 Count=2 Product=25 Done=0
# T=385000 State=2 A=15 Q=2 q1=1 Count=1 Product=25 Done=0
# T=395000 State=3 A=15 Q=2 q1=1 Count=1 Product=25 Done=0
# T=405000 State=4 A=6 Q=2 q1=1 Count=1 Product=25 Done=0
# T=415000 State=5 A=3 Q=1 q1=0 Count=0 Product=25 Done=0
# 7 x 7 = 49  Product = 49||done=1
# T=425000 State=0 A=3 Q=1 q1=0 Count=0 Product=49 Done=1
# T=435000 State=1 A=3 Q=1 q1=0 Count=0 Product=49 Done=1
# T=445000 State=2 A=0 Q=2 q1=0 Count=4 Product=49 Done=0
# T=455000 State=4 A=0 Q=2 q1=0 Count=4 Product=49 Done=0
# T=465000 State=2 A=0 Q=1 q1=0 Count=3 Product=49 Done=0
# T=475000 State=3 A=0 Q=1 q1=0 Count=3 Product=49 Done=0
# T=485000 State=4 A=10 Q=1 q1=0 Count=3 Product=49 Done=0
# T=495000 State=2 A=13 Q=0 q1=1 Count=2 Product=49 Done=0
# T=505000 State=3 A=13 Q=0 q1=1 Count=2 Product=49 Done=0
# T=515000 State=4 A=3 Q=0 q1=1 Count=2 Product=49 Done=0
# T=525000 State=2 A=1 Q=8 q1=0 Count=1 Product=49 Done=0
# T=535000 State=4 A=1 Q=8 q1=0 Count=1 Product=49 Done=0
# T=545000 State=5 A=0 Q=12 q1=0 Count=0 Product=49 Done=0
# 6 x 2 = 12  Product = 12||done=1
# T=555000 State=0 A=0 Q=12 q1=0 Count=0 Product=12 Done=1
# T=565000 State=1 A=0 Q=12 q1=0 Count=0 Product=12 Done=1
# ** Note: $finish    : tb.v(117)
#    Time: 575 ns  Iteration: 0  Instance: /tb_booths_algorithm
# End time: 20:29:01 on Jun 26,2026, Elapsed time: 0:00:04
# Errors: 0, Warnings: 0
                            