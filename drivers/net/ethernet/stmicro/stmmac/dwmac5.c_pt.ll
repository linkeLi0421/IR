; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwmac5.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac5.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dwmac5_error = type { ptr }
%struct.dwmac5_error_desc = type { i8, ptr, ptr }
%struct.stmmac_safety_feature_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stmmac_tc_entry = type { i8, i8, i8, i8, ptr, i32, i32, i32, %struct.anon.113 }
%struct.anon.113 = type { i32, i32, i8, i8, i8, i8, i32 }
%struct.stmmac_pps_cfg = type { i8, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.stmmac_est = type { %struct.mutex, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [1024 x i32], [1024 x i32], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.stmmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.stmmac_txq_stats], [8 x %struct.stmmac_rxq_stats], [40 x i8] }
%struct.stmmac_txq_stats = type { i32, i32 }
%struct.stmmac_rxq_stats = type { i32, i32 }

@dwmac5_all_errors = internal unnamed_addr constant [3 x %struct.dwmac5_error] [%struct.dwmac5_error { ptr @dwmac5_mac_errors }, %struct.dwmac5_error { ptr @dwmac5_mtl_errors }, %struct.dwmac5_error { ptr @dwmac5_dma_errors }], align 4
@.str = private unnamed_addr constant [28 x i8] c"EST: HLB(sched) Queue 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"EST: HLB(size) Queue %u Size %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"EST: BTR Error Loop Count %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"EST: SWOL has been switched\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"FPE: Respond mPacket is transmitted\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"FPE: Verify mPacket is transmitted\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"FPE: Respond mPacket is received\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"FPE: Verify mPacket is received\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"MAC\00", align 1
@dwmac5_mac_errors = internal constant [32 x %struct.dwmac5_error_desc] [%struct.dwmac5_error_desc { i8 1, ptr @.str.12, ptr @.str.13 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.14, ptr @.str.15 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.16, ptr @.str.17 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.18, ptr @.str.19 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.20, ptr @.str.21 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.22, ptr @.str.23 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.24, ptr @.str.25 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.26, ptr @.str.27 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.28, ptr @.str.29 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.30, ptr @.str.31 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.32, ptr @.str.33 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.34, ptr @.str.35 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.36, ptr @.str.37 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.38, ptr @.str.39 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.40, ptr @.str.41 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.42, ptr @.str.43 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.44, ptr @.str.45 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.46, ptr @.str.47 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.48, ptr @.str.49 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.50, ptr @.str.51 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.54, ptr @.str.55 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }], align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"Found %s error in %s: '%s: %s'\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"correctable\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"uncorrectable\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"ATPES\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Application Transmit Interface Parity Check Error\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"TPES\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"TSO Data Path Parity Check Error\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"RDPES\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Read Descriptor Parity Check Error\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"MPES\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"MTL Data Path Parity Check Error\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"MTSPES\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"MTL TX Status Data Path Parity Check Error\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"ARPES\00", align 1
@.str.23 = private unnamed_addr constant [59 x i8] c"Application Receive Interface Data Path Parity Check Error\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"CWPES\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"CSR Write Data Path Parity Check Error\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"ASRPES\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"AXI Slave Read Data Path Parity Check Error\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"TTES\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"TX FSM Timeout Error\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"RTES\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"RX FSM Timeout Error\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"CTES\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"CSR FSM Timeout Error\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"ATES\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"APP FSM Timeout Error\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"PTES\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"PTP FSM Timeout Error\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"T125ES\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"TX125 FSM Timeout Error\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"R125ES\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"RX125 FSM Timeout Error\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"RVCTES\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"REV MDC FSM Timeout Error\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"MSTTES\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"Master Read/Write Timeout Error\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"SLVTES\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"Slave Read/Write Timeout Error\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"ATITES\00", align 1
@.str.49 = private unnamed_addr constant [43 x i8] c"Application Timeout on ATI Interface Error\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"ARITES\00", align 1
@.str.51 = private unnamed_addr constant [43 x i8] c"Application Timeout on ARI Interface Error\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"Unknown Error\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"FSMPES\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"FSM State Parity Error\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"MTL\00", align 1
@dwmac5_mtl_errors = internal constant [32 x %struct.dwmac5_error_desc] [%struct.dwmac5_error_desc { i8 1, ptr @.str.57, ptr @.str.58 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.59, ptr @.str.60 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.61, ptr @.str.58 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.62, ptr @.str.63 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.64, ptr @.str.65 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.66, ptr @.str.63 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.67, ptr @.str.68 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.69, ptr @.str.70 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.71, ptr @.str.68 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.72, ptr @.str.73 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.74, ptr @.str.75 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.76, ptr @.str.73 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }], align 4
@.str.57 = private unnamed_addr constant [6 x i8] c"TXCES\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"MTL TX Memory Error\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"TXAMS\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"MTL TX Memory Address Mismatch Error\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"TXUES\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"RXCES\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"MTL RX Memory Error\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"RXAMS\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"MTL RX Memory Address Mismatch Error\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"RXUES\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"ECES\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"MTL EST Memory Error\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"EAMS\00", align 1
@.str.70 = private unnamed_addr constant [38 x i8] c"MTL EST Memory Address Mismatch Error\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"EUES\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"RPCES\00", align 1
@.str.73 = private unnamed_addr constant [27 x i8] c"MTL RX Parser Memory Error\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"RPAMS\00", align 1
@.str.75 = private unnamed_addr constant [44 x i8] c"MTL RX Parser Memory Address Mismatch Error\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"RPUES\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@dwmac5_dma_errors = internal constant [32 x %struct.dwmac5_error_desc] [%struct.dwmac5_error_desc { i8 1, ptr @.str.78, ptr @.str.79 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.80, ptr @.str.81 }, %struct.dwmac5_error_desc { i8 1, ptr @.str.82, ptr @.str.79 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }, %struct.dwmac5_error_desc { i8 0, ptr @.str.52, ptr @.str.53 }], align 4
@.str.78 = private unnamed_addr constant [5 x i8] c"TCES\00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"DMA TSO Memory Error\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"TAMS\00", align 1
@.str.81 = private unnamed_addr constant [38 x i8] c"DMA TSO Memory Address Mismatch Error\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"TUES\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwmac5_safety_feat_config(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %66, label %5

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 3264
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %8 = load i32, ptr %2, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 256, i32 272
  %11 = or i32 %10, %7
  %12 = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = or i32 %11, 8
  %16 = select i1 %14, i32 %11, i32 %15
  %17 = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %2, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = or i32 %16, 4
  %21 = select i1 %19, i32 %16, i32 %20
  %22 = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %2, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  %25 = or i32 %21, 2
  %26 = select i1 %24, i32 %21, i32 %25
  %27 = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %2, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = or i32 %26, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %31) #5, !srcloc !11
  %32 = getelementptr i8, ptr %0, i32 3272
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %34 = or i32 %33, 4369
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %34) #5, !srcloc !11
  %35 = getelementptr i8, ptr %0, i32 4228
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %37 = or i32 %36, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %37) #5, !srcloc !11
  %38 = icmp eq i32 %1, 1
  br i1 %38, label %66, label %39

39:                                               ; preds = %5
  %40 = getelementptr i8, ptr %0, i32 328
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %42 = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %2, i32 0, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  %45 = or i32 %41, 2
  %46 = select i1 %44, i32 %41, i32 %45
  %47 = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %2, i32 0, i32 8
  %48 = load i32, ptr %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = or i32 %46, %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %51) #5, !srcloc !11
  %52 = getelementptr i8, ptr %0, i32 3296
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %54 = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %2, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = or i32 %53, %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %58) #5, !srcloc !11
  %59 = icmp ult i32 %1, 3
  br i1 %59, label %66, label %60

60:                                               ; preds = %39
  %61 = getelementptr inbounds %struct.stmmac_safety_feature_cfg, ptr %2, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  %64 = or i32 %58, 4
  %65 = select i1 %63, i32 %58, i32 %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %65) #5, !srcloc !11
  br label %66

66:                                               ; preds = %60, %39, %5, %3
  %67 = phi i32 [ 0, %60 ], [ -22, %3 ], [ 0, %5 ], [ 0, %39 ]
  ret i32 %67
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwmac5_safety_feat_irq_status(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %100, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %1, i32 3268
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %12 = getelementptr i8, ptr %1, i32 4224
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !22
  %14 = icmp slt i32 %11, 0
  %15 = icmp slt i32 %13, 0
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %9
  %18 = getelementptr i8, ptr %1, i32 320
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !23
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %19) #5, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  store i32 %19, ptr %7, align 4
  %20 = call i32 @_find_next_bit_le(ptr noundef nonnull %7, i32 noundef 32, i32 noundef 0) #5
  %21 = icmp ult i32 %20, 32
  br i1 %21, label %22, label %34

22:                                               ; preds = %22, %17
  %23 = phi i32 [ %32, %22 ], [ %20, %17 ]
  %24 = getelementptr %struct.dwmac5_error_desc, ptr @dwmac5_mac_errors, i32 %23, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr %struct.dwmac5_error_desc, ptr @dwmac5_mac_errors, i32 %23, i32 2
  %27 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, ptr noundef %25, ptr noundef %27) #6
  %28 = getelementptr i32, ptr %3, i32 %23
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  %31 = add nuw nsw i32 %23, 1
  %32 = call i32 @_find_next_bit_le(ptr noundef nonnull %7, i32 noundef 32, i32 noundef %31) #5
  %33 = icmp ult i32 %32, 32
  br i1 %33, label %22, label %34

34:                                               ; preds = %22, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  br label %35

35:                                               ; preds = %34, %9
  %36 = phi i32 [ 1, %34 ], [ 0, %9 ]
  %37 = and i32 %11, 3
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %13, 805306368
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %35
  %43 = and i32 %11, 1
  %44 = icmp ne i32 %43, 0
  %45 = and i32 %13, 268435456
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %44, i1 true, i1 %46
  %48 = getelementptr i8, ptr %1, i32 3276
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !25
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !26
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %49) #5, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  %50 = getelementptr i8, ptr %3, i32 128
  store i32 %49, ptr %6, align 4
  %51 = call i32 @_find_next_bit_le(ptr noundef nonnull %6, i32 noundef 32, i32 noundef 0) #5
  %52 = icmp ult i32 %51, 32
  br i1 %52, label %53, label %67

53:                                               ; preds = %42
  %54 = select i1 %47, ptr @.str.10, ptr @.str.11
  br label %55

55:                                               ; preds = %55, %53
  %56 = phi i32 [ %51, %53 ], [ %65, %55 ]
  %57 = getelementptr %struct.dwmac5_error_desc, ptr @dwmac5_mtl_errors, i32 %56, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr %struct.dwmac5_error_desc, ptr @dwmac5_mtl_errors, i32 %56, i32 2
  %60 = load ptr, ptr %59, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %54, ptr noundef nonnull @.str.56, ptr noundef %58, ptr noundef %60) #6
  %61 = getelementptr i32, ptr %50, i32 %56
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 4
  %64 = add nuw nsw i32 %56, 1
  %65 = call i32 @_find_next_bit_le(ptr noundef nonnull %6, i32 noundef 32, i32 noundef %64) #5
  %66 = icmp ult i32 %65, 32
  br i1 %66, label %55, label %67

67:                                               ; preds = %55, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  %68 = xor i1 %47, true
  %69 = zext i1 %68 to i32
  %70 = or i32 %36, %69
  br label %71

71:                                               ; preds = %67, %35
  %72 = phi i32 [ %70, %67 ], [ %36, %35 ]
  %73 = and i32 %13, 3
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %100, label %75

75:                                               ; preds = %71
  %76 = and i32 %13, 1
  %77 = getelementptr i8, ptr %1, i32 4232
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !27
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !28
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %78) #5, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  %79 = getelementptr i8, ptr %3, i32 256
  store i32 %78, ptr %5, align 4
  %80 = call i32 @_find_next_bit_le(ptr noundef nonnull %5, i32 noundef 32, i32 noundef 0) #5
  %81 = icmp ult i32 %80, 32
  br i1 %81, label %82, label %97

82:                                               ; preds = %75
  %83 = icmp eq i32 %76, 0
  %84 = select i1 %83, ptr @.str.11, ptr @.str.10
  br label %85

85:                                               ; preds = %85, %82
  %86 = phi i32 [ %80, %82 ], [ %95, %85 ]
  %87 = getelementptr %struct.dwmac5_error_desc, ptr @dwmac5_dma_errors, i32 %86, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr %struct.dwmac5_error_desc, ptr @dwmac5_dma_errors, i32 %86, i32 2
  %90 = load ptr, ptr %89, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %84, ptr noundef nonnull @.str.77, ptr noundef %88, ptr noundef %90) #6
  %91 = getelementptr i32, ptr %79, i32 %86
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, 1
  store i32 %93, ptr %91, align 4
  %94 = add nuw nsw i32 %86, 1
  %95 = call i32 @_find_next_bit_le(ptr noundef nonnull %5, i32 noundef 32, i32 noundef %94) #5
  %96 = icmp ult i32 %95, 32
  br i1 %96, label %85, label %97

97:                                               ; preds = %85, %75
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  %98 = xor i32 %76, 1
  %99 = or i32 %72, %98
  br label %100

100:                                              ; preds = %97, %71, %4
  %101 = phi i32 [ -22, %4 ], [ %99, %97 ], [ %72, %71 ]
  ret i32 %101
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @dwmac5_safety_feat_dump(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #3 {
  %5 = sdiv i32 %1, 32
  %6 = mul i32 %5, 32
  %7 = sub i32 %1, %6
  %8 = icmp ugt i32 %5, 2
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = getelementptr [3 x %struct.dwmac5_error], ptr @dwmac5_all_errors, i32 0, i32 %5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.dwmac5_error_desc, ptr %11, i32 %7
  %13 = load i8, ptr %12, align 4, !range !29
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %9
  %16 = icmp eq ptr %2, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = getelementptr i32, ptr %0, i32 %1
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %2, align 4
  br label %20

20:                                               ; preds = %17, %15
  %21 = icmp eq ptr %3, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = getelementptr %struct.dwmac5_error_desc, ptr %11, i32 %7, i32 1
  %24 = load ptr, ptr %23, align 4
  store ptr %24, ptr %3, align 4
  br label %25

25:                                               ; preds = %22, %20, %9, %4
  %26 = phi i32 [ -22, %4 ], [ -22, %9 ], [ 0, %22 ], [ 0, %20 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwmac5_rxp_config(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !30
  %5 = and i32 %4, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %5) #5, !srcloc !11
  %6 = getelementptr i8, ptr %0, i32 3072
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !32
  %8 = and i32 %7, -32769
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %8) #5, !srcloc !11
  %9 = tail call i64 @ktime_get() #5
  %10 = add i64 %9, 10000000
  %11 = getelementptr i8, ptr %0, i32 3232
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !34
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %23

14:                                               ; preds = %17, %3
  %15 = tail call i64 @ktime_get() #5
  %16 = icmp sgt i64 %15, %10
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #5
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !34
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %14, label %23

20:                                               ; preds = %14
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !35
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %136

23:                                               ; preds = %20, %17, %3
  %24 = icmp eq i32 %2, 0
  br i1 %24, label %136, label %28

25:                                               ; preds = %28
  %26 = add i32 %2, -1
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %33, label %136

28:                                               ; preds = %28, %23
  %29 = phi i32 [ %31, %28 ], [ 0, %23 ]
  %30 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %29, i32 1
  store i8 0, ptr %30, align 1
  %31 = add nuw i32 %29, 1
  %32 = icmp eq i32 %31, %2
  br i1 %32, label %25, label %28

33:                                               ; preds = %106, %25
  %34 = phi i32 [ %77, %106 ], [ 0, %25 ]
  %35 = phi i32 [ %107, %106 ], [ 0, %25 ]
  br label %36

36:                                               ; preds = %67, %33
  %37 = phi i32 [ %26, %33 ], [ %68, %67 ]
  %38 = phi i1 [ false, %33 ], [ true, %67 ]
  %39 = phi i32 [ 0, %33 ], [ %42, %67 ]
  %40 = phi i32 [ -1, %33 ], [ %60, %67 ]
  br label %41

41:                                               ; preds = %64, %36
  %42 = phi i32 [ %65, %64 ], [ %37, %36 ]
  %43 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %42
  %44 = load i8, ptr %43, align 4, !range !29
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %64, label %46

46:                                               ; preds = %41
  %47 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %42, i32 1
  %48 = load i8, ptr %47, align 1, !range !29
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %42, i32 2
  %52 = load i8, ptr %51, align 2, !range !29
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %42, i32 3
  %56 = load i8, ptr %55, align 1, !range !29
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %42, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = icmp uge i32 %60, %34
  %62 = icmp ult i32 %60, %40
  %63 = and i1 %61, %62
  br i1 %63, label %67, label %64

64:                                               ; preds = %58, %54, %50, %46, %41
  %65 = add i32 %42, -1
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %41, label %70

67:                                               ; preds = %58
  %68 = add nsw i32 %42, -1
  %69 = icmp sgt i32 %42, 0
  br i1 %69, label %36, label %71

70:                                               ; preds = %64
  br i1 %38, label %71, label %108

71:                                               ; preds = %70, %67
  %72 = phi i32 [ %39, %70 ], [ %42, %67 ]
  %73 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %72
  %74 = icmp eq ptr %73, null
  br i1 %74, label %108, label %75

75:                                               ; preds = %71
  %76 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %72, i32 7
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %72, i32 4
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %75
  %82 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %72, i32 8, i32 2
  %83 = load i8, ptr %82, align 4
  %84 = and i8 %83, -12
  %85 = or i8 %84, 8
  store i8 %85, ptr %82, align 4
  %86 = trunc i32 %35 to i8
  %87 = add i8 %86, 2
  %88 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %72, i32 8, i32 4
  store i8 %87, ptr %88, align 2
  br label %89

89:                                               ; preds = %81, %75
  %90 = tail call fastcc i32 @dwmac5_rxp_update_single_entry(ptr noundef %0, ptr noundef nonnull %73, i32 noundef %35)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %136

92:                                               ; preds = %89
  %93 = add i32 %35, 1
  %94 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %72, i32 5
  store i32 %35, ptr %94, align 4
  %95 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %72, i32 1
  store i8 1, ptr %95, align 1
  br i1 %80, label %106, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %79, i32 0, i32 1
  %98 = load i8, ptr %97, align 1, !range !29
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = tail call fastcc i32 @dwmac5_rxp_update_single_entry(ptr noundef %0, ptr noundef nonnull %79, i32 noundef %93)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %136

103:                                              ; preds = %100
  %104 = add i32 %35, 2
  %105 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %79, i32 0, i32 5
  store i32 %93, ptr %105, align 4
  store i8 1, ptr %97, align 1
  br label %106

106:                                              ; preds = %103, %96, %92
  %107 = phi i32 [ %104, %103 ], [ %93, %96 ], [ %93, %92 ]
  br label %33

108:                                              ; preds = %71, %70
  %109 = icmp eq i32 %35, 0
  br i1 %109, label %136, label %110

110:                                              ; preds = %108
  br i1 %24, label %128, label %111

111:                                              ; preds = %124, %110
  %112 = phi i32 [ %126, %124 ], [ 0, %110 ]
  %113 = phi i32 [ %125, %124 ], [ %35, %110 ]
  %114 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %112, i32 2
  %115 = load i8, ptr %114, align 2, !range !29
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %111
  %118 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %112
  %119 = tail call fastcc i32 @dwmac5_rxp_update_single_entry(ptr noundef %0, ptr noundef %118, i32 noundef %113)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %117
  %122 = add i32 %113, 1
  %123 = getelementptr %struct.stmmac_tc_entry, ptr %1, i32 %112, i32 5
  store i32 %113, ptr %123, align 4
  br label %124

124:                                              ; preds = %121, %111
  %125 = phi i32 [ %122, %121 ], [ %113, %111 ]
  %126 = add nuw i32 %112, 1
  %127 = icmp eq i32 %126, %2
  br i1 %127, label %128, label %111

128:                                              ; preds = %124, %110
  %129 = phi i32 [ %35, %110 ], [ %125, %124 ]
  %130 = shl i32 %129, 16
  %131 = and i32 %130, 16711680
  %132 = and i32 %129, 255
  %133 = or i32 %131, %132
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %133) #5, !srcloc !11
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !37
  %135 = or i32 %134, 32768
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %135) #5, !srcloc !11
  br label %136

136:                                              ; preds = %128, %117, %108, %100, %89, %25, %23, %20
  %137 = phi i32 [ -110, %20 ], [ 0, %128 ], [ 0, %108 ], [ 0, %25 ], [ 0, %23 ], [ %119, %117 ], [ %101, %100 ], [ %90, %89 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %4) #5, !srcloc !11
  ret i32 %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwmac5_rxp_update_single_entry(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = shl i32 %2, 2
  %5 = getelementptr i8, ptr %0, i32 3248
  %6 = getelementptr inbounds %struct.stmmac_tc_entry, ptr %1, i32 0, i32 8
  %7 = getelementptr i8, ptr %0, i32 3252
  br label %8

8:                                                ; preds = %43, %3
  %9 = phi i32 [ 0, %3 ], [ %44, %43 ]
  %10 = add nuw nsw i32 %9, %4
  %11 = tail call i64 @ktime_get() #5
  %12 = add i64 %11, 10000000
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !40
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %24, label %15

15:                                               ; preds = %18, %8
  %16 = tail call i64 @ktime_get() #5
  %17 = icmp sgt i64 %16, %12
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #5
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !40
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %24, label %15

21:                                               ; preds = %15
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !41
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %46

24:                                               ; preds = %21, %18, %8
  %25 = getelementptr i32, ptr %6, i32 %9
  %26 = load i32, ptr %25, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %26) #5, !srcloc !11
  %27 = and i32 %10, 65535
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %27) #5, !srcloc !11
  %28 = or i32 %27, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %28) #5, !srcloc !11
  %29 = or i32 %27, -2147418112
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %29) #5, !srcloc !11
  %30 = tail call i64 @ktime_get() #5
  %31 = add i64 %30, 10000000
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !46
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %43, label %34

34:                                               ; preds = %37, %24
  %35 = tail call i64 @ktime_get() #5
  %36 = icmp sgt i64 %35, %31
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #5
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !46
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %43, label %34

40:                                               ; preds = %34
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !47
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %37, %24
  %44 = add nuw nsw i32 %9, 1
  %45 = icmp eq i32 %44, 4
  br i1 %45, label %46, label %8

46:                                               ; preds = %43, %40, %21
  %47 = phi i32 [ -110, %40 ], [ 0, %43 ], [ -110, %21 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwmac5_flex_pps_config(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = shl i32 %1, 4
  %8 = add i32 %7, 2948
  %9 = getelementptr i8, ptr %0, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !48
  %11 = getelementptr i8, ptr %0, i32 2928
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !49
  %13 = load i8, ptr %2, align 8, !range !29
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %94, label %15

15:                                               ; preds = %6
  %16 = icmp sgt i32 %10, -1
  br i1 %16, label %17, label %94

17:                                               ; preds = %15
  %18 = icmp ne i32 %4, 0
  %19 = icmp ne i32 %5, 0
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %94

21:                                               ; preds = %17
  %22 = shl i32 %1, 3
  %23 = shl nsw i32 -1, %22
  %24 = sub i32 24, %22
  %25 = lshr i32 -1, %24
  %26 = and i32 %25, %23
  %27 = xor i32 %26, -1
  %28 = and i32 %12, %27
  %29 = sub i32 28, %22
  %30 = lshr i32 -1, %29
  br i1 %3, label %36, label %31

31:                                               ; preds = %21
  %32 = shl i32 5, %22
  %33 = and i32 %32, %30
  %34 = or i32 %28, %33
  %35 = or i32 %34, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %35) #5, !srcloc !11
  br label %94

36:                                               ; preds = %21
  %37 = shl i32 2, %22
  %38 = and i32 %37, %30
  %39 = or i32 %22, 5
  %40 = shl nsw i32 -1, %39
  %41 = sub i32 25, %22
  %42 = lshr i32 -1, %41
  %43 = and i32 %40, %42
  %44 = shl i32 2, %39
  %45 = and i32 %43, %44
  %46 = or i32 %28, %38
  %47 = or i32 %46, %45
  %48 = or i32 %47, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %49 = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %2, i32 0, i32 1
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = add i32 %7, 2944
  %53 = getelementptr i8, ptr %0, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #5, !srcloc !11
  %54 = and i32 %5, 512
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %36
  %57 = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %2, i32 0, i32 1, i32 1
  %58 = load i32, ptr %57, align 8
  %59 = mul i32 %58, 1000
  %60 = sdiv i32 %59, 465
  store i32 %60, ptr %57, align 8
  br label %61

61:                                               ; preds = %56, %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %62 = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %2, i32 0, i32 1, i32 1
  %63 = load i32, ptr %62, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %63) #5, !srcloc !11
  %64 = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %2, i32 0, i32 2
  %65 = load i64, ptr %64, align 8
  %66 = mul i64 %65, 1000000000
  %67 = getelementptr inbounds %struct.stmmac_pps_cfg, ptr %2, i32 0, i32 2, i32 1
  %68 = load i32, ptr %67, align 8
  %69 = sext i32 %68 to i64
  %70 = add i64 %66, %69
  %71 = icmp ult i64 %70, 4294967296
  br i1 %71, label %72, label %76, !prof !53

72:                                               ; preds = %61
  %73 = trunc i64 %70 to i32
  %74 = udiv i32 %73, %4
  %75 = zext i32 %74 to i64
  br label %79

76:                                               ; preds = %61
  %77 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %70) #7, !srcloc !54
  %78 = extractvalue { i64, i64 } %77, 1
  br label %79

79:                                               ; preds = %76, %72
  %80 = phi i64 [ %75, %72 ], [ %78, %76 ]
  %81 = icmp ult i64 %80, 2
  br i1 %81, label %94, label %82

82:                                               ; preds = %79
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %83 = trunc i64 %80 to i32
  %84 = add i32 %83, -1
  %85 = add i32 %7, 2952
  %86 = getelementptr i8, ptr %0, i32 %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #5, !srcloc !11
  %87 = icmp ult i64 %80, 4
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = lshr i64 %80, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %90 = trunc i64 %89 to i32
  %91 = add i32 %90, -1
  %92 = add i32 %7, 2956
  %93 = getelementptr i8, ptr %0, i32 %92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %91) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %48) #5, !srcloc !11
  br label %94

94:                                               ; preds = %88, %82, %79, %31, %17, %15, %6
  %95 = phi i32 [ 0, %88 ], [ 0, %31 ], [ -22, %6 ], [ -16, %15 ], [ -22, %17 ], [ -22, %79 ], [ -22, %82 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwmac5_est_configure(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.stmmac_est, ptr %1, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = tail call fastcc i32 @dwmac5_est_write(ptr noundef %0, i32 noundef 0, i32 noundef %5, i1 noundef zeroext false)
  %7 = getelementptr %struct.stmmac_est, ptr %1, i32 0, i32 4, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call fastcc i32 @dwmac5_est_write(ptr noundef %0, i32 noundef 1, i32 noundef %8, i1 noundef zeroext false)
  %10 = or i32 %9, %6
  %11 = getelementptr inbounds %struct.stmmac_est, ptr %1, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = tail call fastcc i32 @dwmac5_est_write(ptr noundef %0, i32 noundef 4, i32 noundef %12, i1 noundef zeroext false)
  %14 = or i32 %10, %13
  %15 = getelementptr inbounds %struct.stmmac_est, ptr %1, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = tail call fastcc i32 @dwmac5_est_write(ptr noundef %0, i32 noundef 5, i32 noundef %16, i1 noundef zeroext false)
  %18 = or i32 %14, %17
  %19 = getelementptr inbounds %struct.stmmac_est, ptr %1, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = tail call fastcc i32 @dwmac5_est_write(ptr noundef %0, i32 noundef 2, i32 noundef %20, i1 noundef zeroext false)
  %22 = or i32 %18, %21
  %23 = getelementptr %struct.stmmac_est, ptr %1, i32 0, i32 5, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = tail call fastcc i32 @dwmac5_est_write(ptr noundef %0, i32 noundef 3, i32 noundef %24, i1 noundef zeroext false)
  %26 = or i32 %22, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %3
  %29 = load i32, ptr %15, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %35

31:                                               ; preds = %35
  %32 = add nuw i32 %36, 1
  %33 = load i32, ptr %15, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31, %28
  %36 = phi i32 [ %32, %31 ], [ 0, %28 ]
  %37 = getelementptr %struct.stmmac_est, ptr %1, i32 0, i32 8, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = tail call fastcc i32 @dwmac5_est_write(ptr noundef %0, i32 noundef %36, i32 noundef %38, i1 noundef zeroext true)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %31, label %58

41:                                               ; preds = %31, %28
  %42 = getelementptr i8, ptr %0, i32 3152
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !58
  %44 = and i32 %43, 16777215
  %45 = udiv i32 1000000000, %2
  %46 = mul i32 %45, 100663296
  %47 = or i32 %46, %44
  %48 = getelementptr inbounds %struct.stmmac_est, ptr %1, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  %51 = or i32 %47, 3
  %52 = and i32 %47, -16777218
  %53 = select i1 %50, i32 %52, i32 %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %53) #5, !srcloc !11
  %54 = load i32, ptr %48, align 4
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 0, i32 31
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %57 = getelementptr i8, ptr %0, i32 3184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %56) #5, !srcloc !11
  br label %58

58:                                               ; preds = %41, %35, %3
  %59 = phi i32 [ 0, %41 ], [ %26, %3 ], [ %39, %35 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwmac5_est_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %5 = getelementptr i8, ptr %0, i32 3204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %2) #5, !srcloc !11
  %6 = shl i32 %1, 8
  %7 = select i1 %3, i32 0, i32 4
  %8 = or i32 %7, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %9 = getelementptr i8, ptr %0, i32 3200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #5, !srcloc !11
  %10 = or i32 %8, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %10) #5, !srcloc !11
  %11 = tail call i64 @ktime_get() #5
  %12 = add i64 %11, 5000000
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !64
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %19, %4
  %17 = tail call i64 @ktime_get() #5
  %18 = icmp sgt i64 %17, %12
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #5
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !64
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %16

23:                                               ; preds = %16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !65
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19, %4
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ 0, %27 ], [ -110, %23 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwmac5_est_irq_status(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = shl nsw i32 -1, %3
  %6 = xor i32 %5, -1
  %7 = getelementptr i8, ptr %0, i32 3160
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !66
  %9 = and i32 %8, 31
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %77, label %11

11:                                               ; preds = %4
  %12 = and i32 %8, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 16) #5, !srcloc !11
  %15 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %2, i32 0, i32 113
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  br label %18

18:                                               ; preds = %14, %11
  %19 = and i32 %8, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = getelementptr i8, ptr %0, i32 3168
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !68
  %24 = and i32 %23, %6
  %25 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %2, i32 0, i32 114
  %26 = load i32, ptr %25, align 8
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %24) #5, !srcloc !11
  %28 = tail call i32 @net_ratelimit() #5
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %24) #6
  br label %31

31:                                               ; preds = %30, %21, %18
  %32 = and i32 %8, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %53, label %34

34:                                               ; preds = %31
  %35 = getelementptr i8, ptr %0, i32 3172
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !70
  %37 = and i32 %36, %6
  %38 = getelementptr i8, ptr %0, i32 3176
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !71
  %40 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %2, i32 0, i32 115
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %37) #5, !srcloc !11
  %43 = tail call i32 @net_ratelimit() #5
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %34
  %46 = icmp ugt i32 %3, 4
  %47 = icmp ugt i32 %3, 2
  %48 = select i1 %47, i32 196608, i32 65536
  %49 = select i1 %46, i32 458752, i32 %48
  %50 = and i32 %39, 32767
  %51 = and i32 %39, %49
  %52 = lshr exact i32 %51, 16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %52, i32 noundef %50) #6
  br label %53

53:                                               ; preds = %45, %34, %31
  %54 = and i32 %8, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %53
  %57 = and i32 %8, 3840
  %58 = icmp eq i32 %57, 3840
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %2, i32 0, i32 117
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 4
  br label %67

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.stmmac_extra_stats, ptr %2, i32 0, i32 116
  %65 = load i32, ptr %64, align 16
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 16
  br label %67

67:                                               ; preds = %63, %59
  %68 = tail call i32 @net_ratelimit() #5
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = lshr exact i32 %57, 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %71) #6
  br label %72

72:                                               ; preds = %70, %67
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 2) #5, !srcloc !11
  br label %73

73:                                               ; preds = %72, %53
  %74 = and i32 %8, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1) #5, !srcloc !11
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.3) #6
  br label %77

77:                                               ; preds = %76, %73, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwmac5_fpe_configure(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  br i1 %3, label %9, label %5

5:                                                ; preds = %4
  %6 = getelementptr i8, ptr %0, i32 564
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !75
  %8 = and i32 %7, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %8) #5, !srcloc !11
  br label %19

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 164
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !77
  %12 = and i32 %11, -117440513
  %13 = shl i32 %2, 24
  %14 = add i32 %13, -16777216
  %15 = or i32 %12, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %15) #5, !srcloc !11
  %16 = getelementptr i8, ptr %0, i32 564
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !79
  %18 = or i32 %17, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %18) #5, !srcloc !11
  br label %19

19:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwmac5_fpe_irq_status(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 564
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !81
  %5 = and i32 %4, 524288
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.4) #6
  br label %8

8:                                                ; preds = %7, %2
  %9 = phi i32 [ 1, %7 ], [ 0, %2 ]
  %10 = and i32 %4, 262144
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = or i32 %9, 2
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.5) #6
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %13, %12 ], [ %9, %8 ]
  %16 = and i32 %4, 131072
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = or i32 %15, 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.6) #6
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi i32 [ %19, %18 ], [ %15, %14 ]
  %22 = and i32 %4, 65536
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = or i32 %21, 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.7) #6
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ %25, %24 ], [ %21, %20 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwmac5_fpe_send_mpacket(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 564
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !82
  %5 = icmp eq i32 %1, 0
  %6 = and i32 %4, -7
  %7 = select i1 %5, i32 2, i32 4
  %8 = or i32 %6, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %8) #5, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{i64 2410243}
!9 = !{i64 2156023942}
!10 = !{i64 2156024634}
!11 = !{i64 2409825}
!12 = !{i64 2156025120}
!13 = !{i64 2156025650}
!14 = !{i64 2156026136}
!15 = !{i64 2156026418}
!16 = !{i64 2156026904}
!17 = !{i64 2156027268}
!18 = !{i64 2156027754}
!19 = !{i64 2156028036}
!20 = !{i64 2156028453}
!21 = !{i64 2156028942}
!22 = !{i64 2156029293}
!23 = !{i64 2156021311}
!24 = !{i64 2156021511}
!25 = !{i64 2156022187}
!26 = !{i64 2156022387}
!27 = !{i64 2156023063}
!28 = !{i64 2156023263}
!29 = !{i8 0, i8 2}
!30 = !{i64 2156040363}
!31 = !{i64 2156040643}
!32 = !{i64 2156030993}
!33 = !{i64 2156031275}
!34 = !{i64 2156032939}
!35 = !{i64 2156033279}
!36 = !{i64 2156042338}
!37 = !{i64 2156033634}
!38 = !{i64 2156033916}
!39 = !{i64 2156042671}
!40 = !{i64 2156035596}
!41 = !{i64 2156035936}
!42 = !{i64 2156036138}
!43 = !{i64 2156037150}
!44 = !{i64 2156037563}
!45 = !{i64 2156037976}
!46 = !{i64 2156039656}
!47 = !{i64 2156039996}
!48 = !{i64 2156043253}
!49 = !{i64 2156043604}
!50 = !{i64 2156046109}
!51 = !{i64 2156048966}
!52 = !{i64 2156049489}
!53 = !{!"branch_weights", i32 2000, i32 1}
!54 = !{i64 2148352137, i64 2148352417, i64 2148352751, i64 2148353085}
!55 = !{i64 2156055037}
!56 = !{i64 2156055459}
!57 = !{i64 2156055825}
!58 = !{i64 2156059388}
!59 = !{i64 2156060528}
!60 = !{i64 2156061295}
!61 = !{i64 2156056154}
!62 = !{i64 2156056568}
!63 = !{i64 2156056982}
!64 = !{i64 2156058669}
!65 = !{i64 2156059009}
!66 = !{i64 2156061779}
!67 = !{i64 2156062575}
!68 = !{i64 2156063187}
!69 = !{i64 2156063387}
!70 = !{i64 2156063955}
!71 = !{i64 2156064306}
!72 = !{i64 2156066762}
!73 = !{i64 2156068671}
!74 = !{i64 2156069236}
!75 = !{i64 2156069766}
!76 = !{i64 2156070048}
!77 = !{i64 2156070534}
!78 = !{i64 2156071429}
!79 = !{i64 2156071915}
!80 = !{i64 2156072197}
!81 = !{i64 2156072685}
!82 = !{i64 2156073700}
!83 = !{i64 2156074228}
