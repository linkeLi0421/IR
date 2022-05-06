; ModuleID = '/llk/IR/drivers/net/ethernet/ti/cpsw_ale.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/cpsw_ale.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ale_control_info = type { ptr, i32, i32, i32, i32, i32 }
%struct.cpsw_ale_dev_id = type { ptr, i32, i32, i32, i8, ptr }
%struct.ale_entry_fld = type { i8, i8, i8 }
%struct.cpsw_ale_params = type { ptr, ptr, i32, i32, i32, i8, i32, ptr, i32 }
%struct.cpsw_ale = type { %struct.cpsw_ale_params, %struct.timer_list, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@.str = private unnamed_addr constant [20 x i8] c"Unable to add vlan\0A\00", align 1
@ale_controls = internal unnamed_addr global [27 x %struct.ale_control_info] [%struct.ale_control_info { ptr @.str.6, i32 8, i32 0, i32 31, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.7, i32 8, i32 0, i32 30, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.8, i32 8, i32 0, i32 29, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.9, i32 8, i32 0, i32 8, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.10, i32 8, i32 0, i32 7, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.11, i32 8, i32 0, i32 6, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.12, i32 8, i32 0, i32 5, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.13, i32 8, i32 0, i32 4, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.14, i32 8, i32 0, i32 3, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.15, i32 8, i32 0, i32 2, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.16, i32 8, i32 0, i32 1, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.17, i32 8, i32 0, i32 0, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.18, i32 64, i32 4, i32 0, i32 0, i32 2 }, %struct.ale_control_info { ptr @.str.19, i32 64, i32 4, i32 2, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.20, i32 64, i32 4, i32 3, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.21, i32 64, i32 4, i32 4, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.22, i32 64, i32 4, i32 5, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.23, i32 24, i32 0, i32 0, i32 0, i32 6 }, %struct.ale_control_info { ptr @.str.24, i32 24, i32 0, i32 8, i32 0, i32 6 }, %struct.ale_control_info { ptr @.str.25, i32 24, i32 0, i32 16, i32 0, i32 6 }, %struct.ale_control_info { ptr @.str.26, i32 24, i32 0, i32 24, i32 0, i32 6 }, %struct.ale_control_info { ptr @.str.27, i32 64, i32 4, i32 11, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.28, i32 64, i32 4, i32 13, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.29, i32 64, i32 4, i32 24, i32 0, i32 8 }, %struct.ale_control_info { ptr @.str.30, i32 64, i32 4, i32 16, i32 0, i32 8 }, %struct.ale_control_info { ptr @.str.31, i32 308, i32 0, i32 0, i32 0, i32 6 }, %struct.ale_control_info { ptr @.str.32, i32 308, i32 0, i32 15, i32 0, i32 1 }], align 4
@cpsw_ale_id_match = internal unnamed_addr constant [8 x %struct.cpsw_ale_dev_id] [%struct.cpsw_ale_dev_id { ptr @.str.34, i32 0, i32 1024, i32 255, i8 0, ptr @vlan_entry_cpsw }, %struct.cpsw_ale_dev_id { ptr @.str.35, i32 0, i32 2048, i32 255, i8 0, ptr @vlan_entry_cpsw }, %struct.cpsw_ale_dev_id { ptr @.str.36, i32 1, i32 0, i32 7, i8 1, ptr @vlan_entry_nu }, %struct.cpsw_ale_dev_id { ptr @.str.37, i32 1, i32 64, i32 7, i8 1, ptr @vlan_entry_nu }, %struct.cpsw_ale_dev_id { ptr @.str.38, i32 3, i32 64, i32 7, i8 1, ptr @vlan_entry_nu }, %struct.cpsw_ale_dev_id { ptr @.str.39, i32 3, i32 0, i32 7, i8 0, ptr @vlan_entry_k3_cpswxg }, %struct.cpsw_ale_dev_id { ptr @.str.40, i32 3, i32 512, i32 7, i8 0, ptr @vlan_entry_k3_cpswxg }, %struct.cpsw_ale_dev_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"initialized cpsw ale version %d.%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ALE Table size %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"drivers/net/ethernet/ti/cpsw_ale.c\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"set: wrong ale fld id %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"get: wrong ale fld id %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ageout\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"port0_unicast_flood\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"vlan_nolearn\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"no_port_vlan\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"oui_deny\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"bypass\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"rate_limit_tx\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"vlan_aware\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"auth_enable\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"rate_limit\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"port_state\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"drop_untagged\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"drop_unknown\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"nolearn\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"no_source_update\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"unknown_vlan_member\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"unknown_mcast_flood\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"unknown_reg_flood\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"untagged_egress\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"mac_only_port_mode\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"mac_only_port_caf\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"bcast_limit\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"mcast_limit\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"default_thread_id\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"default_thread_id_enable\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.33 = private unnamed_addr constant [38 x i8] c"ALE aging timer overflow, set to max\0A\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"cpsw\00", align 1
@vlan_entry_cpsw = internal constant [6 x %struct.ale_entry_fld] [%struct.ale_entry_fld { i8 0, i8 3, i8 1 }, %struct.ale_entry_fld { i8 8, i8 3, i8 1 }, %struct.ale_entry_fld { i8 16, i8 3, i8 1 }, %struct.ale_entry_fld { i8 24, i8 3, i8 1 }, %struct.ale_entry_fld zeroinitializer, %struct.ale_entry_fld zeroinitializer], align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"66ak2h-xgbe\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"66ak2el\00", align 1
@vlan_entry_nu = internal constant [6 x %struct.ale_entry_fld] [%struct.ale_entry_fld { i8 0, i8 0, i8 3 }, %struct.ale_entry_fld zeroinitializer, %struct.ale_entry_fld zeroinitializer, %struct.ale_entry_fld { i8 24, i8 0, i8 3 }, %struct.ale_entry_fld { i8 20, i8 3, i8 1 }, %struct.ale_entry_fld { i8 44, i8 3, i8 1 }], align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"66ak2g\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"am65x-cpsw2g\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"j721e-cpswxg\00", align 1
@vlan_entry_k3_cpswxg = internal constant [4 x %struct.ale_entry_fld] [%struct.ale_entry_fld { i8 0, i8 0, i8 3 }, %struct.ale_entry_fld { i8 12, i8 0, i8 3 }, %struct.ale_entry_fld { i8 36, i8 0, i8 3 }, %struct.ale_entry_fld { i8 24, i8 0, i8 3 }], align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"am64-cpswxg\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_ale_flush_multicast(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %89, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %9 = icmp eq i32 %2, -1
  %10 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %11 = xor i32 %1, -1
  br label %12

12:                                               ; preds = %85, %7
  %13 = phi i32 [ 0, %7 ], [ %86, %85 ]
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #9, !srcloc !8
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr i8, ptr %16, i32 52
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !9
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr i8, ptr %19, i32 56
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !9
  %22 = load ptr, ptr %8, align 4
  %23 = getelementptr i8, ptr %22, i32 60
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !9
  %25 = and i32 %21, 268435456
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %85, label %27

27:                                               ; preds = %12
  %28 = lshr i32 %21, 16
  %29 = and i32 %28, 4095
  %30 = icmp eq i32 %29, %2
  %31 = select i1 %9, i1 true, i1 %30
  br i1 %31, label %32, label %85

32:                                               ; preds = %27
  %33 = and i32 %21, 256
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %69, label %35

35:                                               ; preds = %32
  %36 = and i32 %18, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %85

38:                                               ; preds = %35
  %39 = lshr i32 %24, 24
  %40 = lshr i32 %24, 8
  %41 = trunc i32 %40 to i16
  %42 = and i16 %41, -256
  %43 = trunc i32 %39 to i16
  %44 = or i16 %42, %43
  %45 = and i32 %24, %21
  %46 = trunc i32 %45 to i16
  %47 = call i16 @llvm.bswap.i16(i16 %46)
  %48 = and i16 %47, %44
  %49 = icmp eq i16 %48, -1
  br i1 %49, label %69, label %50

50:                                               ; preds = %38
  %51 = load i32, ptr %10, align 4
  %52 = lshr i32 %18, 2
  %53 = shl nsw i32 -1, %51
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = and i32 %55, %1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %50
  %59 = and i32 %55, %11
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = shl i32 %54, 2
  %63 = xor i32 %62, -1
  %64 = and i32 %18, %63
  %65 = shl nuw i32 %59, 2
  %66 = or i32 %65, %64
  br label %69

67:                                               ; preds = %58
  %68 = and i32 %21, -805306369
  br label %69

69:                                               ; preds = %67, %61, %50, %38, %32
  %70 = phi i32 [ %18, %32 ], [ %66, %61 ], [ %18, %67 ], [ %18, %50 ], [ %18, %38 ]
  %71 = phi i32 [ %21, %32 ], [ %21, %61 ], [ %68, %67 ], [ %21, %50 ], [ %21, %38 ]
  %72 = load i32, ptr %4, align 4
  %73 = icmp ult i32 %72, %13
  br i1 %73, label %74, label %75, !prof !10

74:                                               ; preds = %69
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 317, i32 noundef 9, ptr noundef null) #9
  br label %75

75:                                               ; preds = %74, %69
  %76 = load ptr, ptr %8, align 4
  %77 = getelementptr i8, ptr %76, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %70) #9, !srcloc !8
  %78 = load ptr, ptr %8, align 4
  %79 = getelementptr i8, ptr %78, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %71) #9, !srcloc !8
  %80 = load ptr, ptr %8, align 4
  %81 = getelementptr i8, ptr %80, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %24) #9, !srcloc !8
  %82 = or i32 %13, -2147483648
  %83 = load ptr, ptr %8, align 4
  %84 = getelementptr i8, ptr %83, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #9, !srcloc !8
  br label %85

85:                                               ; preds = %75, %35, %27, %12
  %86 = add nuw i32 %13, 1
  %87 = load i32, ptr %4, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %12, label %89

89:                                               ; preds = %85, %3
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_ale_add_ucast(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = and i32 %3, 8
  %7 = icmp eq i32 %6, 0
  %8 = zext i16 %4 to i32
  %9 = shl nuw i32 %8, 16
  %10 = and i32 %9, 268369920
  %11 = or i32 %10, 805306368
  %12 = select i1 %7, i32 268435456, i32 %11
  %13 = load i8, ptr %1, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or i32 %15, %12
  %17 = getelementptr i8, ptr %1, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %16, %19
  %21 = getelementptr i8, ptr %1, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw i32 %23, 24
  %25 = getelementptr i8, ptr %1, i32 3
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 16
  %29 = or i32 %28, %24
  %30 = getelementptr i8, ptr %1, i32 4
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 8
  %34 = or i32 %29, %33
  %35 = getelementptr i8, ptr %1, i32 5
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %34, %37
  %39 = and i32 %3, 3
  %40 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = shl nsw i32 -1, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %43, %2
  %45 = shl i32 %44, 2
  %46 = or i32 %45, %39
  %47 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %164, label %50

50:                                               ; preds = %5
  %51 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %52 = select i1 %7, i32 0, i32 %8
  br label %53

53:                                               ; preds = %91, %50
  %54 = phi i32 [ 0, %50 ], [ %92, %91 ]
  %55 = load ptr, ptr %51, align 4
  %56 = getelementptr i8, ptr %55, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #9, !srcloc !8
  %57 = load ptr, ptr %51, align 4
  %58 = getelementptr i8, ptr %57, i32 52
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #9, !srcloc !9
  %60 = load ptr, ptr %51, align 4
  %61 = getelementptr i8, ptr %60, i32 56
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #9, !srcloc !9
  %63 = load ptr, ptr %51, align 4
  %64 = getelementptr i8, ptr %63, i32 60
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #9, !srcloc !9
  %66 = and i32 %62, 268435456
  %67 = icmp ne i32 %66, 0
  %68 = lshr i32 %62, 16
  %69 = and i32 %68, 4095
  %70 = icmp eq i32 %69, %52
  %71 = select i1 %67, i1 %70, i1 false
  br i1 %71, label %72, label %91

72:                                               ; preds = %53
  %73 = trunc i32 %65 to i16
  %74 = tail call i16 @llvm.bswap.i16(i16 %73) #9
  %75 = shl i32 %65, 8
  %76 = and i32 %75, -16777216
  %77 = lshr i32 %65, 8
  %78 = and i32 %77, 16711680
  %79 = trunc i32 %62 to i16
  %80 = tail call i16 @llvm.bswap.i16(i16 %79) #9
  %81 = zext i16 %80 to i32
  %82 = or i32 %78, %81
  %83 = or i32 %82, %76
  %84 = load i32, ptr %1, align 4
  %85 = xor i32 %84, %83
  %86 = load i16, ptr %30, align 2
  %87 = xor i16 %86, %74
  %88 = zext i16 %87 to i32
  %89 = or i32 %85, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %72, %53
  %92 = add nuw i32 %54, 1
  %93 = load i32, ptr %47, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %53, label %99

95:                                               ; preds = %72
  %96 = icmp slt i32 %54, 0
  br i1 %96, label %97, label %149

97:                                               ; preds = %95
  %98 = load i32, ptr %47, align 4
  br label %99

99:                                               ; preds = %97, %91
  %100 = phi i32 [ %98, %97 ], [ %93, %91 ]
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %164, label %102

102:                                              ; preds = %117, %99
  %103 = phi i32 [ %118, %117 ], [ 0, %99 ]
  %104 = load ptr, ptr %51, align 4
  %105 = getelementptr i8, ptr %104, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #9, !srcloc !8
  %106 = load ptr, ptr %51, align 4
  %107 = getelementptr i8, ptr %106, i32 52
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #9, !srcloc !9
  %109 = load ptr, ptr %51, align 4
  %110 = getelementptr i8, ptr %109, i32 56
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #9, !srcloc !9
  %112 = load ptr, ptr %51, align 4
  %113 = getelementptr i8, ptr %112, i32 60
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #9, !srcloc !9
  %115 = and i32 %111, 805306368
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %102
  %118 = add nuw i32 %103, 1
  %119 = load i32, ptr %47, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %102, label %125

121:                                              ; preds = %102
  %122 = icmp slt i32 %103, 0
  br i1 %122, label %123, label %149

123:                                              ; preds = %121
  %124 = load i32, ptr %47, align 4
  br label %125

125:                                              ; preds = %123, %117
  %126 = phi i32 [ %124, %123 ], [ %119, %117 ]
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %164, label %128

128:                                              ; preds = %143, %125
  %129 = phi i32 [ %144, %143 ], [ 0, %125 ]
  %130 = load ptr, ptr %51, align 4
  %131 = getelementptr i8, ptr %130, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %129) #9, !srcloc !8
  %132 = load ptr, ptr %51, align 4
  %133 = getelementptr i8, ptr %132, i32 52
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #9, !srcloc !9
  %135 = load ptr, ptr %51, align 4
  %136 = getelementptr i8, ptr %135, i32 56
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #9, !srcloc !9
  %138 = load ptr, ptr %51, align 4
  %139 = getelementptr i8, ptr %138, i32 60
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #9, !srcloc !9
  %141 = and i32 %137, 1342177536
  %142 = icmp eq i32 %141, 1342177280
  br i1 %142, label %147, label %143

143:                                              ; preds = %128
  %144 = add nuw i32 %129, 1
  %145 = load i32, ptr %47, align 4
  %146 = icmp ult i32 %144, %145
  br i1 %146, label %128, label %164

147:                                              ; preds = %128
  %148 = icmp slt i32 %129, 0
  br i1 %148, label %164, label %149

149:                                              ; preds = %147, %121, %95
  %150 = phi i32 [ %129, %147 ], [ %103, %121 ], [ %54, %95 ]
  %151 = load i32, ptr %47, align 4
  %152 = icmp ult i32 %151, %150
  br i1 %152, label %153, label %154, !prof !10

153:                                              ; preds = %149
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 317, i32 noundef 9, ptr noundef null) #9
  br label %154

154:                                              ; preds = %153, %149
  %155 = load ptr, ptr %51, align 4
  %156 = getelementptr i8, ptr %155, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %46) #9, !srcloc !8
  %157 = load ptr, ptr %51, align 4
  %158 = getelementptr i8, ptr %157, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %20) #9, !srcloc !8
  %159 = load ptr, ptr %51, align 4
  %160 = getelementptr i8, ptr %159, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %38) #9, !srcloc !8
  %161 = or i32 %150, -2147483648
  %162 = load ptr, ptr %51, align 4
  %163 = getelementptr i8, ptr %162, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 %161) #9, !srcloc !8
  br label %164

164:                                              ; preds = %154, %147, %143, %125, %99, %5
  %165 = phi i32 [ 0, %154 ], [ -12, %147 ], [ -12, %125 ], [ -12, %5 ], [ -12, %99 ], [ -12, %143 ]
  ret i32 %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_ale_del_ucast(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %74, label %9

9:                                                ; preds = %5
  %10 = and i32 %3, 8
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %13 = zext i16 %4 to i32
  %14 = select i1 %11, i32 0, i32 %13
  %15 = getelementptr i8, ptr %1, i32 4
  br label %16

16:                                               ; preds = %54, %9
  %17 = phi i32 [ 0, %9 ], [ %55, %54 ]
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #9, !srcloc !8
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr i8, ptr %20, i32 52
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !9
  %23 = load ptr, ptr %12, align 4
  %24 = getelementptr i8, ptr %23, i32 56
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !9
  %26 = load ptr, ptr %12, align 4
  %27 = getelementptr i8, ptr %26, i32 60
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !9
  %29 = and i32 %25, 268435456
  %30 = icmp ne i32 %29, 0
  %31 = lshr i32 %25, 16
  %32 = and i32 %31, 4095
  %33 = icmp eq i32 %32, %14
  %34 = select i1 %30, i1 %33, i1 false
  br i1 %34, label %35, label %54

35:                                               ; preds = %16
  %36 = trunc i32 %28 to i16
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #9
  %38 = shl i32 %28, 8
  %39 = and i32 %38, -16777216
  %40 = lshr i32 %28, 8
  %41 = and i32 %40, 16711680
  %42 = trunc i32 %25 to i16
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #9
  %44 = zext i16 %43 to i32
  %45 = or i32 %41, %44
  %46 = or i32 %45, %39
  %47 = load i32, ptr %1, align 4
  %48 = xor i32 %47, %46
  %49 = load i16, ptr %15, align 2
  %50 = xor i16 %49, %37
  %51 = zext i16 %50 to i32
  %52 = or i32 %48, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %35, %16
  %55 = add nuw i32 %17, 1
  %56 = load i32, ptr %6, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %16, label %74

58:                                               ; preds = %35
  %59 = icmp slt i32 %17, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %58
  %61 = load i32, ptr %6, align 4
  %62 = icmp ult i32 %61, %17
  br i1 %62, label %63, label %64, !prof !10

63:                                               ; preds = %60
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 317, i32 noundef 9, ptr noundef null) #9
  br label %64

64:                                               ; preds = %63, %60
  %65 = load ptr, ptr %12, align 4
  %66 = getelementptr i8, ptr %65, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 0) #9, !srcloc !8
  %67 = load ptr, ptr %12, align 4
  %68 = getelementptr i8, ptr %67, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 0) #9, !srcloc !8
  %69 = load ptr, ptr %12, align 4
  %70 = getelementptr i8, ptr %69, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 0) #9, !srcloc !8
  %71 = or i32 %17, -2147483648
  %72 = load ptr, ptr %12, align 4
  %73 = getelementptr i8, ptr %72, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #9, !srcloc !8
  br label %74

74:                                               ; preds = %64, %58, %54, %5
  %75 = phi i32 [ 0, %64 ], [ -2, %58 ], [ -2, %5 ], [ -2, %54 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_ale_add_mcast(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = and i32 %3, 8
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %80, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %14 = zext i16 %4 to i32
  %15 = select i1 %8, i32 0, i32 %14
  %16 = getelementptr i8, ptr %1, i32 4
  br label %17

17:                                               ; preds = %55, %12
  %18 = phi i32 [ 0, %12 ], [ %56, %55 ]
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr i8, ptr %19, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #9, !srcloc !8
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr i8, ptr %21, i32 52
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !9
  %24 = load ptr, ptr %13, align 4
  %25 = getelementptr i8, ptr %24, i32 56
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #9, !srcloc !9
  %27 = load ptr, ptr %13, align 4
  %28 = getelementptr i8, ptr %27, i32 60
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !9
  %30 = and i32 %26, 268435456
  %31 = icmp ne i32 %30, 0
  %32 = lshr i32 %26, 16
  %33 = and i32 %32, 4095
  %34 = icmp eq i32 %33, %15
  %35 = select i1 %31, i1 %34, i1 false
  br i1 %35, label %36, label %55

36:                                               ; preds = %17
  %37 = trunc i32 %29 to i16
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #9
  %39 = shl i32 %29, 8
  %40 = and i32 %39, -16777216
  %41 = lshr i32 %29, 8
  %42 = and i32 %41, 16711680
  %43 = trunc i32 %26 to i16
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #9
  %45 = zext i16 %44 to i32
  %46 = or i32 %42, %45
  %47 = or i32 %46, %40
  %48 = load i32, ptr %1, align 4
  %49 = xor i32 %48, %47
  %50 = load i16, ptr %16, align 2
  %51 = xor i16 %50, %38
  %52 = zext i16 %51 to i32
  %53 = or i32 %49, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %36, %17
  %56 = add nuw i32 %18, 1
  %57 = load i32, ptr %9, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %17, label %80

59:                                               ; preds = %36
  %60 = icmp sgt i32 %18, -1
  br i1 %60, label %61, label %80

61:                                               ; preds = %59
  %62 = load i32, ptr %9, align 4
  %63 = icmp ult i32 %62, %18
  br i1 %63, label %64, label %65, !prof !10

64:                                               ; preds = %61
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 302, i32 noundef 9, ptr noundef null) #9
  br label %65

65:                                               ; preds = %64, %61
  %66 = load ptr, ptr %13, align 4
  %67 = getelementptr i8, ptr %66, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %18) #9, !srcloc !8
  %68 = load ptr, ptr %13, align 4
  %69 = getelementptr i8, ptr %68, i32 52
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #9, !srcloc !9
  %71 = load ptr, ptr %13, align 4
  %72 = getelementptr i8, ptr %71, i32 56
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #9, !srcloc !9
  %74 = load ptr, ptr %13, align 4
  %75 = getelementptr i8, ptr %74, i32 60
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #9, !srcloc !9
  %77 = and i32 %70, -3
  %78 = and i32 %73, -805306369
  %79 = or i32 %78, 268435456
  br label %80

80:                                               ; preds = %65, %59, %55, %6
  %81 = phi i32 [ %18, %65 ], [ %18, %59 ], [ -2, %6 ], [ -2, %55 ]
  %82 = phi i32 [ %77, %65 ], [ 0, %59 ], [ 0, %6 ], [ 0, %55 ]
  %83 = phi i32 [ %79, %65 ], [ 268435456, %59 ], [ 268435456, %6 ], [ 268435456, %55 ]
  %84 = zext i16 %4 to i32
  %85 = shl nuw i32 %84, 16
  %86 = or i32 %85, 805306368
  %87 = select i1 %8, i32 %83, i32 %86
  %88 = load i8, ptr %1, align 1
  %89 = zext i8 %88 to i32
  %90 = and i32 %87, 1073676288
  %91 = shl nuw nsw i32 %89, 8
  %92 = or i32 %91, %90
  %93 = getelementptr i8, ptr %1, i32 1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = or i32 %92, %95
  %97 = getelementptr i8, ptr %1, i32 2
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = shl nuw i32 %99, 24
  %101 = getelementptr i8, ptr %1, i32 3
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = shl nuw nsw i32 %103, 16
  %105 = getelementptr i8, ptr %1, i32 4
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i32
  %108 = or i32 %104, %100
  %109 = shl nuw nsw i32 %107, 8
  %110 = or i32 %108, %109
  %111 = getelementptr i8, ptr %1, i32 5
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = or i32 %110, %113
  %115 = lshr i32 %3, 1
  %116 = and i32 %115, 2
  %117 = or i32 %82, %116
  %118 = shl i32 %5, 30
  %119 = or i32 %96, %118
  %120 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %121 = load i32, ptr %120, align 4
  %122 = lshr i32 %82, 2
  %123 = shl nsw i32 -1, %121
  %124 = xor i32 %123, -1
  %125 = and i32 %122, %124
  %126 = or i32 %125, %2
  %127 = and i32 %126, %124
  %128 = shl i32 %124, 2
  %129 = xor i32 %128, -1
  %130 = and i32 %117, %129
  %131 = shl i32 %127, 2
  %132 = or i32 %131, %130
  %133 = icmp slt i32 %81, 0
  br i1 %133, label %134, label %185

134:                                              ; preds = %80
  %135 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %136 = load i32, ptr %9, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %201, label %138

138:                                              ; preds = %153, %134
  %139 = phi i32 [ %154, %153 ], [ 0, %134 ]
  %140 = load ptr, ptr %135, align 4
  %141 = getelementptr i8, ptr %140, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %139) #9, !srcloc !8
  %142 = load ptr, ptr %135, align 4
  %143 = getelementptr i8, ptr %142, i32 52
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #9, !srcloc !9
  %145 = load ptr, ptr %135, align 4
  %146 = getelementptr i8, ptr %145, i32 56
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #9, !srcloc !9
  %148 = load ptr, ptr %135, align 4
  %149 = getelementptr i8, ptr %148, i32 60
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #9, !srcloc !9
  %151 = and i32 %147, 805306368
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %138
  %154 = add nuw i32 %139, 1
  %155 = load i32, ptr %9, align 4
  %156 = icmp ult i32 %154, %155
  br i1 %156, label %138, label %161

157:                                              ; preds = %138
  %158 = icmp slt i32 %139, 0
  br i1 %158, label %159, label %185

159:                                              ; preds = %157
  %160 = load i32, ptr %9, align 4
  br label %161

161:                                              ; preds = %159, %153
  %162 = phi i32 [ %160, %159 ], [ %155, %153 ]
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %201, label %164

164:                                              ; preds = %179, %161
  %165 = phi i32 [ %180, %179 ], [ 0, %161 ]
  %166 = load ptr, ptr %135, align 4
  %167 = getelementptr i8, ptr %166, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %165) #9, !srcloc !8
  %168 = load ptr, ptr %135, align 4
  %169 = getelementptr i8, ptr %168, i32 52
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #9, !srcloc !9
  %171 = load ptr, ptr %135, align 4
  %172 = getelementptr i8, ptr %171, i32 56
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #9, !srcloc !9
  %174 = load ptr, ptr %135, align 4
  %175 = getelementptr i8, ptr %174, i32 60
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %175) #9, !srcloc !9
  %177 = and i32 %173, 1342177536
  %178 = icmp eq i32 %177, 1342177280
  br i1 %178, label %183, label %179

179:                                              ; preds = %164
  %180 = add nuw i32 %165, 1
  %181 = load i32, ptr %9, align 4
  %182 = icmp ult i32 %180, %181
  br i1 %182, label %164, label %201

183:                                              ; preds = %164
  %184 = icmp slt i32 %165, 0
  br i1 %184, label %201, label %185

185:                                              ; preds = %183, %157, %80
  %186 = phi i32 [ %165, %183 ], [ %139, %157 ], [ %81, %80 ]
  %187 = load i32, ptr %9, align 4
  %188 = icmp ult i32 %187, %186
  br i1 %188, label %189, label %190, !prof !10

189:                                              ; preds = %185
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 317, i32 noundef 9, ptr noundef null) #9
  br label %190

190:                                              ; preds = %189, %185
  %191 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr i8, ptr %192, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 %132) #9, !srcloc !8
  %194 = load ptr, ptr %191, align 4
  %195 = getelementptr i8, ptr %194, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %119) #9, !srcloc !8
  %196 = load ptr, ptr %191, align 4
  %197 = getelementptr i8, ptr %196, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 %114) #9, !srcloc !8
  %198 = or i32 %186, -2147483648
  %199 = load ptr, ptr %191, align 4
  %200 = getelementptr i8, ptr %199, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %200, i32 %198) #9, !srcloc !8
  br label %201

201:                                              ; preds = %190, %183, %179, %161, %134
  %202 = phi i32 [ 0, %190 ], [ -12, %183 ], [ -12, %161 ], [ -12, %134 ], [ -12, %179 ]
  ret i32 %202
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_ale_del_mcast(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %111, label %9

9:                                                ; preds = %5
  %10 = and i32 %3, 8
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %13 = zext i16 %4 to i32
  %14 = select i1 %11, i32 0, i32 %13
  %15 = getelementptr i8, ptr %1, i32 4
  br label %16

16:                                               ; preds = %54, %9
  %17 = phi i32 [ 0, %9 ], [ %55, %54 ]
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #9, !srcloc !8
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr i8, ptr %20, i32 52
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !9
  %23 = load ptr, ptr %12, align 4
  %24 = getelementptr i8, ptr %23, i32 56
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !9
  %26 = load ptr, ptr %12, align 4
  %27 = getelementptr i8, ptr %26, i32 60
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !9
  %29 = and i32 %25, 268435456
  %30 = icmp ne i32 %29, 0
  %31 = lshr i32 %25, 16
  %32 = and i32 %31, 4095
  %33 = icmp eq i32 %32, %14
  %34 = select i1 %30, i1 %33, i1 false
  br i1 %34, label %35, label %54

35:                                               ; preds = %16
  %36 = trunc i32 %28 to i16
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #9
  %38 = shl i32 %28, 8
  %39 = and i32 %38, -16777216
  %40 = lshr i32 %28, 8
  %41 = and i32 %40, 16711680
  %42 = trunc i32 %25 to i16
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #9
  %44 = zext i16 %43 to i32
  %45 = or i32 %41, %44
  %46 = or i32 %45, %39
  %47 = load i32, ptr %1, align 4
  %48 = xor i32 %47, %46
  %49 = load i16, ptr %15, align 2
  %50 = xor i16 %49, %37
  %51 = zext i16 %50 to i32
  %52 = or i32 %48, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %35, %16
  %55 = add nuw i32 %17, 1
  %56 = load i32, ptr %6, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %16, label %111

58:                                               ; preds = %35
  %59 = icmp slt i32 %17, 0
  br i1 %59, label %111, label %60

60:                                               ; preds = %58
  %61 = load i32, ptr %6, align 4
  %62 = icmp ult i32 %61, %17
  br i1 %62, label %63, label %64, !prof !10

63:                                               ; preds = %60
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 302, i32 noundef 9, ptr noundef null) #9
  br label %64

64:                                               ; preds = %63, %60
  %65 = load ptr, ptr %12, align 4
  %66 = getelementptr i8, ptr %65, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %17) #9, !srcloc !8
  %67 = load ptr, ptr %12, align 4
  %68 = getelementptr i8, ptr %67, i32 52
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #9, !srcloc !9
  %70 = load ptr, ptr %12, align 4
  %71 = getelementptr i8, ptr %70, i32 56
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #9, !srcloc !9
  %73 = load ptr, ptr %12, align 4
  %74 = getelementptr i8, ptr %73, i32 60
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #9, !srcloc !9
  %76 = icmp eq i32 %2, 0
  br i1 %76, label %93, label %77

77:                                               ; preds = %64
  %78 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %79 = load i32, ptr %78, align 4
  %80 = lshr i32 %69, 2
  %81 = shl nsw i32 -1, %79
  %82 = or i32 %81, %2
  %83 = xor i32 %82, -1
  %84 = and i32 %80, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %77
  %87 = xor i32 %81, -1
  %88 = shl i32 %87, 2
  %89 = xor i32 %88, -1
  %90 = and i32 %69, %89
  %91 = shl nuw i32 %84, 2
  %92 = or i32 %90, %91
  br label %95

93:                                               ; preds = %77, %64
  %94 = and i32 %72, -805306369
  br label %95

95:                                               ; preds = %93, %86
  %96 = phi i32 [ %69, %93 ], [ %92, %86 ]
  %97 = phi i32 [ %94, %93 ], [ %72, %86 ]
  %98 = load i32, ptr %6, align 4
  %99 = icmp ult i32 %98, %17
  br i1 %99, label %100, label %101, !prof !10

100:                                              ; preds = %95
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 317, i32 noundef 9, ptr noundef null) #9
  br label %101

101:                                              ; preds = %100, %95
  %102 = load ptr, ptr %12, align 4
  %103 = getelementptr i8, ptr %102, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %96) #9, !srcloc !8
  %104 = load ptr, ptr %12, align 4
  %105 = getelementptr i8, ptr %104, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %97) #9, !srcloc !8
  %106 = load ptr, ptr %12, align 4
  %107 = getelementptr i8, ptr %106, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %75) #9, !srcloc !8
  %108 = or i32 %17, -2147483648
  %109 = load ptr, ptr %12, align 4
  %110 = getelementptr i8, ptr %109, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %108) #9, !srcloc !8
  br label %111

111:                                              ; preds = %101, %58, %54, %5
  %112 = phi i32 [ 0, %101 ], [ -2, %58 ], [ -2, %5 ], [ -2, %54 ]
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_ale_add_vlan(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i32 12, i1 false)
  %8 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = zext i16 %1 to i32
  br label %58

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %15 = zext i16 %1 to i32
  br label %16

16:                                               ; preds = %35, %13
  %17 = phi i32 [ 0, %13 ], [ %36, %35 ]
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #9, !srcloc !8
  %20 = load ptr, ptr %14, align 4
  %21 = getelementptr i8, ptr %20, i32 52
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !9
  %23 = load ptr, ptr %14, align 4
  %24 = getelementptr i8, ptr %23, i32 56
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !9
  %26 = load ptr, ptr %14, align 4
  %27 = getelementptr i8, ptr %26, i32 60
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !9
  %29 = and i32 %25, 805306368
  %30 = icmp eq i32 %29, 536870912
  %31 = lshr i32 %25, 16
  %32 = and i32 %31, 4095
  %33 = icmp eq i32 %32, %15
  %34 = select i1 %30, i1 %33, i1 false
  br i1 %34, label %39, label %35

35:                                               ; preds = %16
  %36 = add nuw i32 %17, 1
  %37 = load i32, ptr %8, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %16, label %58

39:                                               ; preds = %16
  %40 = icmp sgt i32 %17, -1
  br i1 %40, label %41, label %58

41:                                               ; preds = %39
  %42 = load i32, ptr %8, align 4
  %43 = icmp ult i32 %42, %17
  br i1 %43, label %44, label %45, !prof !10

44:                                               ; preds = %41
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 302, i32 noundef 9, ptr noundef null) #9
  br label %45

45:                                               ; preds = %44, %41
  %46 = load ptr, ptr %14, align 4
  %47 = getelementptr i8, ptr %46, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %17) #9, !srcloc !8
  %48 = load ptr, ptr %14, align 4
  %49 = getelementptr i8, ptr %48, i32 52
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !9
  store i32 %50, ptr %7, align 4
  %51 = load ptr, ptr %14, align 4
  %52 = getelementptr i8, ptr %51, i32 56
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #9, !srcloc !9
  %54 = load ptr, ptr %14, align 4
  %55 = getelementptr i8, ptr %54, i32 60
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #9, !srcloc !9
  %57 = getelementptr inbounds i32, ptr %7, i32 2
  store i32 %56, ptr %57, align 4
  br label %58

58:                                               ; preds = %45, %39, %35, %11
  %59 = phi i32 [ %12, %11 ], [ %15, %45 ], [ %15, %39 ], [ %15, %35 ]
  %60 = phi i32 [ 0, %11 ], [ %53, %45 ], [ 0, %39 ], [ 0, %35 ]
  %61 = phi i32 [ -2, %11 ], [ %17, %45 ], [ %17, %39 ], [ -2, %35 ]
  %62 = getelementptr inbounds i32, ptr %7, i32 1
  %63 = and i32 %60, -1073676289
  %64 = shl nuw i32 %59, 16
  %65 = and i32 %64, 268369920
  %66 = or i32 %65, %63
  %67 = or i32 %66, 536870912
  store i32 %67, ptr %62, align 4
  %68 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 9
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %0, null
  br i1 %70, label %106, label %71

71:                                               ; preds = %58
  %72 = getelementptr %struct.ale_entry_fld, ptr %69, i32 3
  %73 = getelementptr %struct.ale_entry_fld, ptr %69, i32 3, i32 2
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.4, i32 noundef 3) #10
  br label %106

80:                                               ; preds = %71
  %81 = getelementptr %struct.ale_entry_fld, ptr %69, i32 3, i32 1
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %75, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %88 = load i32, ptr %87, align 4
  br label %89

89:                                               ; preds = %86, %80
  %90 = phi i32 [ %88, %86 ], [ %83, %80 ]
  %91 = load i8, ptr %72, align 1
  %92 = zext i8 %91 to i32
  %93 = shl nsw i32 -1, %90
  %94 = xor i32 %93, -1
  %95 = and i32 %94, %3
  %96 = lshr i32 %92, 5
  %97 = and i32 %92, 31
  %98 = sub nsw i32 2, %96
  %99 = shl i32 %94, %97
  %100 = xor i32 %99, -1
  %101 = getelementptr i32, ptr %7, i32 %98
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, %100
  %104 = shl i32 %95, %97
  %105 = or i32 %103, %104
  store i32 %105, ptr %101, align 4
  br label %106

106:                                              ; preds = %89, %78, %58
  %107 = and i32 %3, 1
  %108 = icmp eq i32 %107, 0
  %109 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 8
  %110 = load ptr, ptr %109, align 4
  %111 = and i32 %59, 31
  %112 = shl nuw i32 1, %111
  %113 = lshr i32 %59, 5
  %114 = getelementptr i32, ptr %110, i32 %113
  br i1 %108, label %118, label %115

115:                                              ; preds = %106
  %116 = load i32, ptr %114, align 4
  %117 = or i32 %116, %112
  br label %122

118:                                              ; preds = %106
  %119 = xor i32 %112, -1
  %120 = load i32, ptr %114, align 4
  %121 = and i32 %120, %119
  br label %122

122:                                              ; preds = %118, %115
  %123 = phi i32 [ %121, %118 ], [ %117, %115 ]
  store i32 %123, ptr %114, align 4
  %124 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 5
  %125 = load i8, ptr %124, align 4, !range !11
  %126 = icmp eq i8 %125, 0
  %127 = load ptr, ptr %68, align 4
  br i1 %126, label %128, label %201

128:                                              ; preds = %122
  br i1 %70, label %274, label %129

129:                                              ; preds = %128
  %130 = getelementptr %struct.ale_entry_fld, ptr %127, i32 2
  %131 = getelementptr %struct.ale_entry_fld, ptr %127, i32 2, i32 2
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = and i32 %133, 1
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.4, i32 noundef 2) #10
  %138 = load ptr, ptr %68, align 4
  br label %165

139:                                              ; preds = %129
  %140 = getelementptr %struct.ale_entry_fld, ptr %127, i32 2, i32 1
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = and i32 %133, 2
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %147 = load i32, ptr %146, align 4
  br label %148

148:                                              ; preds = %145, %139
  %149 = phi i32 [ %147, %145 ], [ %142, %139 ]
  %150 = load i8, ptr %130, align 1
  %151 = zext i8 %150 to i32
  %152 = shl nsw i32 -1, %149
  %153 = xor i32 %152, -1
  %154 = and i32 %153, %4
  %155 = lshr i32 %151, 5
  %156 = and i32 %151, 31
  %157 = sub nsw i32 2, %155
  %158 = shl i32 %153, %156
  %159 = xor i32 %158, -1
  %160 = getelementptr i32, ptr %7, i32 %157
  %161 = load i32, ptr %160, align 4
  %162 = and i32 %161, %159
  %163 = shl i32 %154, %156
  %164 = or i32 %162, %163
  store i32 %164, ptr %160, align 4
  br label %165

165:                                              ; preds = %148, %136
  %166 = phi ptr [ %138, %136 ], [ %127, %148 ]
  %167 = getelementptr %struct.ale_entry_fld, ptr %166, i32 1
  %168 = getelementptr %struct.ale_entry_fld, ptr %166, i32 1, i32 2
  %169 = load i8, ptr %168, align 1
  %170 = zext i8 %169 to i32
  %171 = and i32 %170, 1
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %165
  %174 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %174, ptr noundef nonnull @.str.4, i32 noundef 1) #10
  br label %239

175:                                              ; preds = %165
  %176 = getelementptr %struct.ale_entry_fld, ptr %166, i32 1, i32 1
  %177 = load i8, ptr %176, align 1
  %178 = zext i8 %177 to i32
  %179 = and i32 %170, 2
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %183 = load i32, ptr %182, align 4
  br label %184

184:                                              ; preds = %181, %175
  %185 = phi i32 [ %183, %181 ], [ %178, %175 ]
  %186 = load i8, ptr %167, align 1
  %187 = zext i8 %186 to i32
  %188 = shl nsw i32 -1, %185
  %189 = xor i32 %188, -1
  %190 = and i32 %189, %5
  %191 = lshr i32 %187, 5
  %192 = and i32 %187, 31
  %193 = sub nsw i32 2, %191
  %194 = shl i32 %189, %192
  %195 = xor i32 %194, -1
  %196 = getelementptr i32, ptr %7, i32 %193
  %197 = load i32, ptr %196, align 4
  %198 = and i32 %197, %195
  %199 = shl i32 %190, %192
  %200 = or i32 %198, %199
  store i32 %200, ptr %196, align 4
  br label %239

201:                                              ; preds = %122
  br i1 %70, label %238, label %202

202:                                              ; preds = %201
  %203 = getelementptr %struct.ale_entry_fld, ptr %127, i32 4
  %204 = getelementptr %struct.ale_entry_fld, ptr %127, i32 4, i32 2
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i32
  %207 = and i32 %206, 1
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %202
  %210 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %210, ptr noundef nonnull @.str.4, i32 noundef 4) #10
  br label %237

211:                                              ; preds = %202
  %212 = getelementptr %struct.ale_entry_fld, ptr %127, i32 4, i32 1
  %213 = load i8, ptr %212, align 1
  %214 = zext i8 %213 to i32
  %215 = and i32 %206, 2
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %219 = load i32, ptr %218, align 4
  br label %220

220:                                              ; preds = %217, %211
  %221 = phi i32 [ %219, %217 ], [ %214, %211 ]
  %222 = load i8, ptr %203, align 1
  %223 = zext i8 %222 to i32
  %224 = shl nsw i32 -1, %221
  %225 = xor i32 %224, -1
  %226 = and i32 %225, 1
  %227 = lshr i32 %223, 5
  %228 = and i32 %223, 31
  %229 = sub nsw i32 2, %227
  %230 = shl i32 %225, %228
  %231 = xor i32 %230, -1
  %232 = getelementptr i32, ptr %7, i32 %229
  %233 = load i32, ptr %232, align 4
  %234 = and i32 %233, %231
  %235 = shl nuw i32 %226, %228
  %236 = or i32 %234, %235
  store i32 %236, ptr %232, align 4
  br label %237

237:                                              ; preds = %220, %209
  call fastcc void @cpsw_ale_set_vlan_mcast(ptr noundef nonnull %0, ptr noundef nonnull %7, i32 noundef %4, i32 noundef %5)
  br label %239

238:                                              ; preds = %201
  call fastcc void @cpsw_ale_set_vlan_mcast(ptr noundef null, ptr noundef nonnull %7, i32 noundef %4, i32 noundef %5)
  br label %274

239:                                              ; preds = %237, %184, %173
  %240 = load ptr, ptr %68, align 4
  %241 = getelementptr %struct.ale_entry_fld, ptr %240, i32 0, i32 2
  %242 = load i8, ptr %241, align 1
  %243 = zext i8 %242 to i32
  %244 = and i32 %243, 1
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %239
  %247 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %247, ptr noundef nonnull @.str.4, i32 noundef 0) #10
  br label %274

248:                                              ; preds = %239
  %249 = getelementptr %struct.ale_entry_fld, ptr %240, i32 0, i32 1
  %250 = load i8, ptr %249, align 1
  %251 = zext i8 %250 to i32
  %252 = and i32 %243, 2
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %257, label %254

254:                                              ; preds = %248
  %255 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %256 = load i32, ptr %255, align 4
  br label %257

257:                                              ; preds = %254, %248
  %258 = phi i32 [ %256, %254 ], [ %251, %248 ]
  %259 = load i8, ptr %240, align 1
  %260 = zext i8 %259 to i32
  %261 = shl nsw i32 -1, %258
  %262 = xor i32 %261, -1
  %263 = and i32 %262, %2
  %264 = lshr i32 %260, 5
  %265 = and i32 %260, 31
  %266 = sub nsw i32 2, %264
  %267 = shl i32 %262, %265
  %268 = xor i32 %267, -1
  %269 = getelementptr i32, ptr %7, i32 %266
  %270 = load i32, ptr %269, align 4
  %271 = and i32 %270, %268
  %272 = shl i32 %263, %265
  %273 = or i32 %271, %272
  store i32 %273, ptr %269, align 4
  br label %274

274:                                              ; preds = %257, %246, %238, %128
  %275 = icmp slt i32 %61, 0
  br i1 %275, label %276, label %327

276:                                              ; preds = %274
  %277 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %278 = load i32, ptr %8, align 4
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %347, label %280

280:                                              ; preds = %295, %276
  %281 = phi i32 [ %296, %295 ], [ 0, %276 ]
  %282 = load ptr, ptr %277, align 4
  %283 = getelementptr i8, ptr %282, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %283, i32 %281) #9, !srcloc !8
  %284 = load ptr, ptr %277, align 4
  %285 = getelementptr i8, ptr %284, i32 52
  %286 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %285) #9, !srcloc !9
  %287 = load ptr, ptr %277, align 4
  %288 = getelementptr i8, ptr %287, i32 56
  %289 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %288) #9, !srcloc !9
  %290 = load ptr, ptr %277, align 4
  %291 = getelementptr i8, ptr %290, i32 60
  %292 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %291) #9, !srcloc !9
  %293 = and i32 %289, 805306368
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %299, label %295

295:                                              ; preds = %280
  %296 = add nuw i32 %281, 1
  %297 = load i32, ptr %8, align 4
  %298 = icmp ult i32 %296, %297
  br i1 %298, label %280, label %303

299:                                              ; preds = %280
  %300 = icmp slt i32 %281, 0
  br i1 %300, label %301, label %327

301:                                              ; preds = %299
  %302 = load i32, ptr %8, align 4
  br label %303

303:                                              ; preds = %301, %295
  %304 = phi i32 [ %302, %301 ], [ %297, %295 ]
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %347, label %306

306:                                              ; preds = %321, %303
  %307 = phi i32 [ %322, %321 ], [ 0, %303 ]
  %308 = load ptr, ptr %277, align 4
  %309 = getelementptr i8, ptr %308, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %309, i32 %307) #9, !srcloc !8
  %310 = load ptr, ptr %277, align 4
  %311 = getelementptr i8, ptr %310, i32 52
  %312 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %311) #9, !srcloc !9
  %313 = load ptr, ptr %277, align 4
  %314 = getelementptr i8, ptr %313, i32 56
  %315 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %314) #9, !srcloc !9
  %316 = load ptr, ptr %277, align 4
  %317 = getelementptr i8, ptr %316, i32 60
  %318 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %317) #9, !srcloc !9
  %319 = and i32 %315, 1342177536
  %320 = icmp eq i32 %319, 1342177280
  br i1 %320, label %325, label %321

321:                                              ; preds = %306
  %322 = add nuw i32 %307, 1
  %323 = load i32, ptr %8, align 4
  %324 = icmp ult i32 %322, %323
  br i1 %324, label %306, label %347

325:                                              ; preds = %306
  %326 = icmp slt i32 %307, 0
  br i1 %326, label %347, label %327

327:                                              ; preds = %325, %299, %274
  %328 = phi i32 [ %307, %325 ], [ %281, %299 ], [ %61, %274 ]
  %329 = load i32, ptr %8, align 4
  %330 = icmp ult i32 %329, %328
  br i1 %330, label %331, label %332, !prof !10

331:                                              ; preds = %327
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 317, i32 noundef 9, ptr noundef null) #9
  br label %332

332:                                              ; preds = %331, %327
  %333 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %334 = load i32, ptr %7, align 4
  %335 = load ptr, ptr %333, align 4
  %336 = getelementptr i8, ptr %335, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %336, i32 %334) #9, !srcloc !8
  %337 = load i32, ptr %62, align 4
  %338 = load ptr, ptr %333, align 4
  %339 = getelementptr i8, ptr %338, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %339, i32 %337) #9, !srcloc !8
  %340 = getelementptr inbounds i32, ptr %7, i32 2
  %341 = load i32, ptr %340, align 4
  %342 = load ptr, ptr %333, align 4
  %343 = getelementptr i8, ptr %342, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %343, i32 %341) #9, !srcloc !8
  %344 = or i32 %328, -2147483648
  %345 = load ptr, ptr %333, align 4
  %346 = getelementptr i8, ptr %345, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %346, i32 %344) #9, !srcloc !8
  br label %347

347:                                              ; preds = %332, %325, %321, %303, %276
  %348 = phi i32 [ 0, %332 ], [ -12, %325 ], [ -12, %303 ], [ -12, %276 ], [ -12, %321 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  ret i32 %348
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpsw_ale_set_vlan_mcast(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ne ptr %0, null
  %8 = icmp ne ptr %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %43

10:                                               ; preds = %4
  %11 = getelementptr %struct.ale_entry_fld, ptr %6, i32 5
  %12 = getelementptr %struct.ale_entry_fld, ptr %6, i32 5, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.5, i32 noundef 5) #10
  br label %43

19:                                               ; preds = %10
  %20 = getelementptr %struct.ale_entry_fld, ptr %6, i32 5, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %14, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i32 [ %27, %25 ], [ %22, %19 ]
  %30 = load i8, ptr %11, align 1
  %31 = zext i8 %30 to i32
  %32 = lshr i32 %31, 5
  %33 = and i32 %31, 31
  %34 = sub nsw i32 2, %32
  %35 = getelementptr i32, ptr %1, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, %33
  %38 = shl nsw i32 -1, %29
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = shl i32 %40, 2
  %42 = add i32 %41, 192
  br label %43

43:                                               ; preds = %28, %17, %4
  %44 = phi i32 [ %42, %28 ], [ 184, %17 ], [ 104, %4 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %45 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %2) #9, !srcloc !8
  %48 = load ptr, ptr %5, align 4
  br i1 %9, label %49, label %82

49:                                               ; preds = %43
  %50 = getelementptr %struct.ale_entry_fld, ptr %48, i32 4
  %51 = getelementptr %struct.ale_entry_fld, ptr %48, i32 4, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.5, i32 noundef 4) #10
  br label %82

58:                                               ; preds = %49
  %59 = getelementptr %struct.ale_entry_fld, ptr %48, i32 4, i32 1
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %53, 2
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %66 = load i32, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %58
  %68 = phi i32 [ %66, %64 ], [ %61, %58 ]
  %69 = load i8, ptr %50, align 1
  %70 = zext i8 %69 to i32
  %71 = lshr i32 %70, 5
  %72 = and i32 %70, 31
  %73 = sub nsw i32 2, %71
  %74 = getelementptr i32, ptr %1, i32 %73
  %75 = load i32, ptr %74, align 4
  %76 = lshr i32 %75, %72
  %77 = shl nsw i32 -1, %68
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  %80 = shl i32 %79, 2
  %81 = add i32 %80, 192
  br label %82

82:                                               ; preds = %67, %56, %43
  %83 = phi i32 [ %81, %67 ], [ 184, %56 ], [ 104, %43 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  %84 = load ptr, ptr %45, align 4
  %85 = getelementptr i8, ptr %84, i32 %83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %3) #9, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_ale_vlan_del_modify(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %70, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %10 = zext i16 %1 to i32
  br label %11

11:                                               ; preds = %30, %8
  %12 = phi i32 [ 0, %8 ], [ %31, %30 ]
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #9, !srcloc !8
  %15 = load ptr, ptr %9, align 4
  %16 = getelementptr i8, ptr %15, i32 52
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !9
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr i8, ptr %18, i32 56
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !9
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr i8, ptr %21, i32 60
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !9
  %24 = and i32 %20, 805306368
  %25 = icmp eq i32 %24, 536870912
  %26 = lshr i32 %20, 16
  %27 = and i32 %26, 4095
  %28 = icmp eq i32 %27, %10
  %29 = select i1 %25, i1 %28, i1 false
  br i1 %29, label %34, label %30

30:                                               ; preds = %11
  %31 = add nuw i32 %12, 1
  %32 = load i32, ptr %5, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %11, label %70

34:                                               ; preds = %11
  %35 = icmp slt i32 %12, 0
  br i1 %35, label %70, label %36

36:                                               ; preds = %34
  %37 = load i32, ptr %5, align 4
  %38 = icmp ult i32 %37, %12
  br i1 %38, label %39, label %40, !prof !10

39:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 302, i32 noundef 9, ptr noundef null) #9
  br label %40

40:                                               ; preds = %39, %36
  %41 = load ptr, ptr %9, align 4
  %42 = getelementptr i8, ptr %41, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %12) #9, !srcloc !8
  %43 = load ptr, ptr %9, align 4
  %44 = getelementptr i8, ptr %43, i32 52
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !9
  store i32 %45, ptr %4, align 4
  %46 = load ptr, ptr %9, align 4
  %47 = getelementptr i8, ptr %46, i32 56
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #9, !srcloc !9
  %49 = getelementptr inbounds i32, ptr %4, i32 1
  store i32 %48, ptr %49, align 4
  %50 = load ptr, ptr %9, align 4
  %51 = getelementptr i8, ptr %50, i32 60
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #9, !srcloc !9
  %53 = getelementptr inbounds i32, ptr %4, i32 2
  store i32 %52, ptr %53, align 4
  call fastcc void @cpsw_ale_vlan_del_modify_int(ptr noundef %0, ptr noundef nonnull %4, i16 noundef zeroext %1, i32 noundef %2)
  %54 = load i32, ptr %5, align 4
  %55 = icmp ult i32 %54, %12
  br i1 %55, label %56, label %57, !prof !10

56:                                               ; preds = %40
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 317, i32 noundef 9, ptr noundef null) #9
  br label %57

57:                                               ; preds = %56, %40
  %58 = load i32, ptr %4, align 4
  %59 = load ptr, ptr %9, align 4
  %60 = getelementptr i8, ptr %59, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #9, !srcloc !8
  %61 = load i32, ptr %49, align 4
  %62 = load ptr, ptr %9, align 4
  %63 = getelementptr i8, ptr %62, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #9, !srcloc !8
  %64 = load i32, ptr %53, align 4
  %65 = load ptr, ptr %9, align 4
  %66 = getelementptr i8, ptr %65, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #9, !srcloc !8
  %67 = or i32 %12, -2147483648
  %68 = load ptr, ptr %9, align 4
  %69 = getelementptr i8, ptr %68, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #9, !srcloc !8
  br label %70

70:                                               ; preds = %57, %34, %30, %3
  %71 = phi i32 [ 0, %57 ], [ -2, %34 ], [ -2, %3 ], [ -2, %30 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpsw_ale_vlan_del_modify_int(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ne ptr %0, null
  %8 = icmp ne ptr %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %52

10:                                               ; preds = %4
  %11 = getelementptr %struct.ale_entry_fld, ptr %6, i32 0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.5, i32 noundef 0) #10
  br label %40

18:                                               ; preds = %10
  %19 = getelementptr %struct.ale_entry_fld, ptr %6, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %13, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi i32 [ %26, %24 ], [ %21, %18 ]
  %29 = load i8, ptr %6, align 1
  %30 = zext i8 %29 to i32
  %31 = lshr i32 %30, 5
  %32 = and i32 %30, 31
  %33 = sub nsw i32 2, %31
  %34 = getelementptr i32, ptr %1, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %35, %32
  %37 = shl nsw i32 -1, %28
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  br label %40

40:                                               ; preds = %27, %16
  %41 = phi i32 [ %39, %27 ], [ -2, %16 ]
  %42 = xor i32 %3, -1
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  %45 = load ptr, ptr %5, align 4
  %46 = getelementptr %struct.ale_entry_fld, ptr %45, i32 3
  %47 = getelementptr %struct.ale_entry_fld, ptr %45, i32 3, i32 2
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %44, label %56, label %96

52:                                               ; preds = %4
  %53 = and i32 %3, -22
  %54 = xor i32 %53, -22
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %82, label %230

56:                                               ; preds = %40
  br i1 %51, label %57, label %59

57:                                               ; preds = %56
  %58 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.4, i32 noundef 3) #10
  br label %82

59:                                               ; preds = %56
  %60 = getelementptr %struct.ale_entry_fld, ptr %45, i32 3, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %49, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  br label %68

68:                                               ; preds = %65, %59
  %69 = phi i32 [ %67, %65 ], [ %62, %59 ]
  %70 = load i8, ptr %46, align 1
  %71 = zext i8 %70 to i32
  %72 = shl nsw i32 -1, %69
  %73 = xor i32 %72, -1
  %74 = lshr i32 %71, 5
  %75 = and i32 %71, 31
  %76 = sub nsw i32 2, %74
  %77 = shl i32 %73, %75
  %78 = xor i32 %77, -1
  %79 = getelementptr i32, ptr %1, i32 %76
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, %78
  store i32 %81, ptr %79, align 4
  br label %82

82:                                               ; preds = %68, %57, %52
  %83 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 8
  %84 = load ptr, ptr %83, align 4
  %85 = zext i16 %2 to i32
  %86 = and i32 %85, 31
  %87 = shl nuw i32 1, %86
  %88 = lshr i32 %85, 5
  %89 = getelementptr i32, ptr %84, i32 %88
  %90 = xor i32 %87, -1
  %91 = load i32, ptr %89, align 4
  %92 = and i32 %91, %90
  store i32 %92, ptr %89, align 4
  %93 = getelementptr i32, ptr %1, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, -805306369
  store i32 %95, ptr %93, align 4
  br label %365

96:                                               ; preds = %40
  br i1 %51, label %97, label %100

97:                                               ; preds = %96
  %98 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.5, i32 noundef 3) #10
  %99 = load ptr, ptr %5, align 4
  br label %122

100:                                              ; preds = %96
  %101 = getelementptr %struct.ale_entry_fld, ptr %45, i32 3, i32 1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i32
  %104 = and i32 %49, 2
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %108 = load i32, ptr %107, align 4
  br label %109

109:                                              ; preds = %106, %100
  %110 = phi i32 [ %108, %106 ], [ %103, %100 ]
  %111 = load i8, ptr %46, align 1
  %112 = zext i8 %111 to i32
  %113 = lshr i32 %112, 5
  %114 = and i32 %112, 31
  %115 = sub nsw i32 2, %113
  %116 = getelementptr i32, ptr %1, i32 %115
  %117 = load i32, ptr %116, align 4
  %118 = lshr i32 %117, %114
  %119 = shl nsw i32 -1, %110
  %120 = xor i32 %119, -1
  %121 = and i32 %118, %120
  br label %122

122:                                              ; preds = %109, %97
  %123 = phi ptr [ %99, %97 ], [ %45, %109 ]
  %124 = phi i32 [ -2, %97 ], [ %121, %109 ]
  %125 = getelementptr %struct.ale_entry_fld, ptr %123, i32 2
  %126 = getelementptr %struct.ale_entry_fld, ptr %123, i32 2, i32 2
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i32
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %122
  %132 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.5, i32 noundef 2) #10
  %133 = load ptr, ptr %5, align 4
  br label %156

134:                                              ; preds = %122
  %135 = getelementptr %struct.ale_entry_fld, ptr %123, i32 2, i32 1
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i32
  %138 = and i32 %128, 2
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %142 = load i32, ptr %141, align 4
  br label %143

143:                                              ; preds = %140, %134
  %144 = phi i32 [ %142, %140 ], [ %137, %134 ]
  %145 = load i8, ptr %125, align 1
  %146 = zext i8 %145 to i32
  %147 = lshr i32 %146, 5
  %148 = and i32 %146, 31
  %149 = sub nsw i32 2, %147
  %150 = getelementptr i32, ptr %1, i32 %149
  %151 = load i32, ptr %150, align 4
  %152 = lshr i32 %151, %148
  %153 = shl nsw i32 -1, %144
  %154 = xor i32 %153, -1
  %155 = and i32 %152, %154
  br label %156

156:                                              ; preds = %143, %131
  %157 = phi ptr [ %133, %131 ], [ %123, %143 ]
  %158 = phi i32 [ -2, %131 ], [ %155, %143 ]
  %159 = getelementptr %struct.ale_entry_fld, ptr %157, i32 1
  %160 = getelementptr %struct.ale_entry_fld, ptr %157, i32 1, i32 2
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i32
  %163 = and i32 %162, 1
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %156
  %166 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %166, ptr noundef nonnull @.str.5, i32 noundef 1) #10
  %167 = load ptr, ptr %5, align 4
  br label %190

168:                                              ; preds = %156
  %169 = getelementptr %struct.ale_entry_fld, ptr %157, i32 1, i32 1
  %170 = load i8, ptr %169, align 1
  %171 = zext i8 %170 to i32
  %172 = and i32 %162, 2
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %176 = load i32, ptr %175, align 4
  br label %177

177:                                              ; preds = %174, %168
  %178 = phi i32 [ %176, %174 ], [ %171, %168 ]
  %179 = load i8, ptr %159, align 1
  %180 = zext i8 %179 to i32
  %181 = lshr i32 %180, 5
  %182 = and i32 %180, 31
  %183 = sub nsw i32 2, %181
  %184 = getelementptr i32, ptr %1, i32 %183
  %185 = load i32, ptr %184, align 4
  %186 = lshr i32 %185, %182
  %187 = shl nsw i32 -1, %178
  %188 = xor i32 %187, -1
  %189 = and i32 %186, %188
  br label %190

190:                                              ; preds = %177, %165
  %191 = phi ptr [ %167, %165 ], [ %157, %177 ]
  %192 = phi i32 [ -2, %165 ], [ %189, %177 ]
  %193 = and i32 %124, %43
  %194 = and i32 %158, %43
  %195 = and i32 %192, %43
  %196 = getelementptr %struct.ale_entry_fld, ptr %191, i32 3
  %197 = getelementptr %struct.ale_entry_fld, ptr %191, i32 3, i32 2
  %198 = load i8, ptr %197, align 1
  %199 = zext i8 %198 to i32
  %200 = and i32 %199, 1
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %190
  %203 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %203, ptr noundef nonnull @.str.4, i32 noundef 3) #10
  br label %230

204:                                              ; preds = %190
  %205 = getelementptr %struct.ale_entry_fld, ptr %191, i32 3, i32 1
  %206 = load i8, ptr %205, align 1
  %207 = zext i8 %206 to i32
  %208 = and i32 %199, 2
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %212 = load i32, ptr %211, align 4
  br label %213

213:                                              ; preds = %210, %204
  %214 = phi i32 [ %212, %210 ], [ %207, %204 ]
  %215 = load i8, ptr %196, align 1
  %216 = zext i8 %215 to i32
  %217 = shl nsw i32 -1, %214
  %218 = xor i32 %217, -1
  %219 = and i32 %193, %218
  %220 = lshr i32 %216, 5
  %221 = and i32 %216, 31
  %222 = sub nsw i32 2, %220
  %223 = shl i32 %218, %221
  %224 = xor i32 %223, -1
  %225 = getelementptr i32, ptr %1, i32 %222
  %226 = load i32, ptr %225, align 4
  %227 = and i32 %226, %224
  %228 = shl i32 %219, %221
  %229 = or i32 %227, %228
  store i32 %229, ptr %225, align 4
  br label %230

230:                                              ; preds = %213, %202, %52
  %231 = phi i32 [ %195, %213 ], [ %195, %202 ], [ %54, %52 ]
  %232 = phi i32 [ %194, %213 ], [ %194, %202 ], [ %54, %52 ]
  %233 = phi i32 [ %193, %213 ], [ %193, %202 ], [ %54, %52 ]
  %234 = phi i32 [ %43, %213 ], [ %43, %202 ], [ %54, %52 ]
  %235 = and i32 %233, 1
  %236 = icmp eq i32 %235, 0
  %237 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 8
  %238 = load ptr, ptr %237, align 4
  %239 = zext i16 %2 to i32
  %240 = and i32 %239, 31
  %241 = shl nuw i32 1, %240
  %242 = lshr i32 %239, 5
  %243 = getelementptr i32, ptr %238, i32 %242
  br i1 %236, label %247, label %244

244:                                              ; preds = %230
  %245 = load i32, ptr %243, align 4
  %246 = or i32 %245, %241
  br label %251

247:                                              ; preds = %230
  %248 = xor i32 %241, -1
  %249 = load i32, ptr %243, align 4
  %250 = and i32 %249, %248
  br label %251

251:                                              ; preds = %247, %244
  %252 = phi i32 [ %250, %247 ], [ %246, %244 ]
  store i32 %252, ptr %243, align 4
  %253 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 5
  %254 = load i8, ptr %253, align 4, !range !11
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %256, label %329

256:                                              ; preds = %251
  %257 = load ptr, ptr %5, align 4
  br i1 %9, label %258, label %365

258:                                              ; preds = %256
  %259 = getelementptr %struct.ale_entry_fld, ptr %257, i32 2
  %260 = getelementptr %struct.ale_entry_fld, ptr %257, i32 2, i32 2
  %261 = load i8, ptr %260, align 1
  %262 = zext i8 %261 to i32
  %263 = and i32 %262, 1
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %258
  %266 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %266, ptr noundef nonnull @.str.4, i32 noundef 2) #10
  br label %293

267:                                              ; preds = %258
  %268 = getelementptr %struct.ale_entry_fld, ptr %257, i32 2, i32 1
  %269 = load i8, ptr %268, align 1
  %270 = zext i8 %269 to i32
  %271 = and i32 %262, 2
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %276, label %273

273:                                              ; preds = %267
  %274 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %275 = load i32, ptr %274, align 4
  br label %276

276:                                              ; preds = %273, %267
  %277 = phi i32 [ %275, %273 ], [ %270, %267 ]
  %278 = load i8, ptr %259, align 1
  %279 = zext i8 %278 to i32
  %280 = shl nsw i32 -1, %277
  %281 = xor i32 %280, -1
  %282 = and i32 %232, %281
  %283 = lshr i32 %279, 5
  %284 = and i32 %279, 31
  %285 = sub nsw i32 2, %283
  %286 = shl i32 %281, %284
  %287 = xor i32 %286, -1
  %288 = getelementptr i32, ptr %1, i32 %285
  %289 = load i32, ptr %288, align 4
  %290 = and i32 %289, %287
  %291 = shl i32 %282, %284
  %292 = or i32 %290, %291
  store i32 %292, ptr %288, align 4
  br label %293

293:                                              ; preds = %276, %265
  %294 = load ptr, ptr %5, align 4
  %295 = getelementptr %struct.ale_entry_fld, ptr %294, i32 1
  %296 = getelementptr %struct.ale_entry_fld, ptr %294, i32 1, i32 2
  %297 = load i8, ptr %296, align 1
  %298 = zext i8 %297 to i32
  %299 = and i32 %298, 1
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %293
  %302 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %302, ptr noundef nonnull @.str.4, i32 noundef 1) #10
  br label %330

303:                                              ; preds = %293
  %304 = getelementptr %struct.ale_entry_fld, ptr %294, i32 1, i32 1
  %305 = load i8, ptr %304, align 1
  %306 = zext i8 %305 to i32
  %307 = and i32 %298, 2
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %312, label %309

309:                                              ; preds = %303
  %310 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %311 = load i32, ptr %310, align 4
  br label %312

312:                                              ; preds = %309, %303
  %313 = phi i32 [ %311, %309 ], [ %306, %303 ]
  %314 = load i8, ptr %295, align 1
  %315 = zext i8 %314 to i32
  %316 = shl nsw i32 -1, %313
  %317 = xor i32 %316, -1
  %318 = and i32 %231, %317
  %319 = lshr i32 %315, 5
  %320 = and i32 %315, 31
  %321 = sub nsw i32 2, %319
  %322 = shl i32 %317, %320
  %323 = xor i32 %322, -1
  %324 = getelementptr i32, ptr %1, i32 %321
  %325 = load i32, ptr %324, align 4
  %326 = and i32 %325, %323
  %327 = shl i32 %318, %320
  %328 = or i32 %326, %327
  store i32 %328, ptr %324, align 4
  br label %330

329:                                              ; preds = %251
  tail call fastcc void @cpsw_ale_set_vlan_mcast(ptr noundef %0, ptr noundef %1, i32 noundef %232, i32 noundef %231)
  br i1 %9, label %330, label %365

330:                                              ; preds = %329, %312, %301
  %331 = load ptr, ptr %5, align 4
  %332 = getelementptr %struct.ale_entry_fld, ptr %331, i32 0, i32 2
  %333 = load i8, ptr %332, align 1
  %334 = zext i8 %333 to i32
  %335 = and i32 %334, 1
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %330
  %338 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %338, ptr noundef nonnull @.str.4, i32 noundef 0) #10
  br label %365

339:                                              ; preds = %330
  %340 = getelementptr %struct.ale_entry_fld, ptr %331, i32 0, i32 1
  %341 = load i8, ptr %340, align 1
  %342 = zext i8 %341 to i32
  %343 = and i32 %334, 2
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %348, label %345

345:                                              ; preds = %339
  %346 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %347 = load i32, ptr %346, align 4
  br label %348

348:                                              ; preds = %345, %339
  %349 = phi i32 [ %347, %345 ], [ %342, %339 ]
  %350 = load i8, ptr %331, align 1
  %351 = zext i8 %350 to i32
  %352 = shl nsw i32 -1, %349
  %353 = xor i32 %352, -1
  %354 = and i32 %234, %353
  %355 = lshr i32 %351, 5
  %356 = and i32 %351, 31
  %357 = sub nsw i32 2, %355
  %358 = shl i32 %353, %356
  %359 = xor i32 %358, -1
  %360 = getelementptr i32, ptr %1, i32 %357
  %361 = load i32, ptr %360, align 4
  %362 = and i32 %361, %359
  %363 = shl i32 %354, %356
  %364 = or i32 %362, %363
  store i32 %364, ptr %360, align 4
  br label %365

365:                                              ; preds = %348, %337, %329, %256, %82
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_ale_del_vlan(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %163, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %10 = zext i16 %1 to i32
  br label %11

11:                                               ; preds = %30, %8
  %12 = phi i32 [ 0, %8 ], [ %31, %30 ]
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #9, !srcloc !8
  %15 = load ptr, ptr %9, align 4
  %16 = getelementptr i8, ptr %15, i32 52
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !9
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr i8, ptr %18, i32 56
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !9
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr i8, ptr %21, i32 60
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !9
  %24 = and i32 %20, 805306368
  %25 = icmp eq i32 %24, 536870912
  %26 = lshr i32 %20, 16
  %27 = and i32 %26, 4095
  %28 = icmp eq i32 %27, %10
  %29 = select i1 %25, i1 %28, i1 false
  br i1 %29, label %34, label %30

30:                                               ; preds = %11
  %31 = add nuw i32 %12, 1
  %32 = load i32, ptr %5, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %11, label %163

34:                                               ; preds = %11
  %35 = icmp slt i32 %12, 0
  br i1 %35, label %163, label %36

36:                                               ; preds = %34
  %37 = load i32, ptr %5, align 4
  %38 = icmp ult i32 %37, %12
  br i1 %38, label %39, label %40, !prof !10

39:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 302, i32 noundef 9, ptr noundef null) #9
  br label %40

40:                                               ; preds = %39, %36
  %41 = load ptr, ptr %9, align 4
  %42 = getelementptr i8, ptr %41, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %12) #9, !srcloc !8
  %43 = load ptr, ptr %9, align 4
  %44 = getelementptr i8, ptr %43, i32 52
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !9
  store i32 %45, ptr %4, align 4
  %46 = load ptr, ptr %9, align 4
  %47 = getelementptr i8, ptr %46, i32 56
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #9, !srcloc !9
  %49 = getelementptr inbounds i32, ptr %4, i32 1
  store i32 %48, ptr %49, align 4
  %50 = load ptr, ptr %9, align 4
  %51 = getelementptr i8, ptr %50, i32 60
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #9, !srcloc !9
  %53 = getelementptr inbounds i32, ptr %4, i32 2
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 9
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %0, null
  br i1 %56, label %94, label %57

57:                                               ; preds = %40
  %58 = getelementptr %struct.ale_entry_fld, ptr %55, i32 0, i32 2
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.5, i32 noundef 0) #10
  br label %87

65:                                               ; preds = %57
  %66 = getelementptr %struct.ale_entry_fld, ptr %55, i32 0, i32 1
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %60, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  br label %74

74:                                               ; preds = %71, %65
  %75 = phi i32 [ %73, %71 ], [ %68, %65 ]
  %76 = load i8, ptr %55, align 1
  %77 = zext i8 %76 to i32
  %78 = lshr i32 %77, 5
  %79 = and i32 %77, 31
  %80 = sub nsw i32 2, %78
  %81 = getelementptr i32, ptr %4, i32 %80
  %82 = load i32, ptr %81, align 4
  %83 = lshr i32 %82, %79
  %84 = shl nsw i32 -1, %75
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  br label %87

87:                                               ; preds = %74, %63
  %88 = phi i32 [ %86, %74 ], [ -2, %63 ]
  %89 = xor i32 %2, -1
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %2, 0
  %92 = icmp ne i32 %90, 0
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %144, label %99

94:                                               ; preds = %40
  %95 = and i32 %2, -22
  %96 = icmp ne i32 %2, 0
  %97 = icmp ne i32 %95, -22
  %98 = and i1 %96, %97
  br i1 %98, label %144, label %132

99:                                               ; preds = %87
  %100 = load ptr, ptr %54, align 4
  %101 = getelementptr %struct.ale_entry_fld, ptr %100, i32 3
  %102 = getelementptr %struct.ale_entry_fld, ptr %100, i32 3, i32 2
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.4, i32 noundef 3) #10
  br label %132

109:                                              ; preds = %99
  %110 = getelementptr %struct.ale_entry_fld, ptr %100, i32 3, i32 1
  %111 = load i8, ptr %110, align 1
  %112 = zext i8 %111 to i32
  %113 = and i32 %104, 2
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %117 = load i32, ptr %116, align 4
  br label %118

118:                                              ; preds = %115, %109
  %119 = phi i32 [ %117, %115 ], [ %112, %109 ]
  %120 = load i8, ptr %101, align 1
  %121 = zext i8 %120 to i32
  %122 = shl nsw i32 -1, %119
  %123 = xor i32 %122, -1
  %124 = lshr i32 %121, 5
  %125 = and i32 %121, 31
  %126 = sub nsw i32 2, %124
  %127 = shl i32 %123, %125
  %128 = xor i32 %127, -1
  %129 = getelementptr i32, ptr %4, i32 %126
  %130 = load i32, ptr %129, align 4
  %131 = and i32 %130, %128
  store i32 %131, ptr %129, align 4
  br label %132

132:                                              ; preds = %118, %107, %94
  %133 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 8
  %134 = load ptr, ptr %133, align 4
  %135 = and i32 %10, 31
  %136 = shl nuw i32 1, %135
  %137 = lshr i32 %10, 5
  %138 = getelementptr i32, ptr %134, i32 %137
  %139 = xor i32 %136, -1
  %140 = load i32, ptr %138, align 4
  %141 = and i32 %140, %139
  store i32 %141, ptr %138, align 4
  %142 = load i32, ptr %49, align 4
  %143 = and i32 %142, -805306369
  store i32 %143, ptr %49, align 4
  br label %146

144:                                              ; preds = %94, %87
  %145 = and i32 %2, -2
  call fastcc void @cpsw_ale_vlan_del_modify_int(ptr noundef %0, ptr noundef nonnull %4, i16 noundef zeroext %1, i32 noundef %145)
  br label %146

146:                                              ; preds = %144, %132
  %147 = load i32, ptr %5, align 4
  %148 = icmp ult i32 %147, %12
  br i1 %148, label %149, label %150, !prof !10

149:                                              ; preds = %146
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 317, i32 noundef 9, ptr noundef null) #9
  br label %150

150:                                              ; preds = %149, %146
  %151 = load i32, ptr %4, align 4
  %152 = load ptr, ptr %9, align 4
  %153 = getelementptr i8, ptr %152, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %151) #9, !srcloc !8
  %154 = load i32, ptr %49, align 4
  %155 = load ptr, ptr %9, align 4
  %156 = getelementptr i8, ptr %155, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %154) #9, !srcloc !8
  %157 = load i32, ptr %53, align 4
  %158 = load ptr, ptr %9, align 4
  %159 = getelementptr i8, ptr %158, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 %157) #9, !srcloc !8
  %160 = or i32 %12, -2147483648
  %161 = load ptr, ptr %9, align 4
  %162 = getelementptr i8, ptr %161, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %160) #9, !srcloc !8
  br label %163

163:                                              ; preds = %150, %34, %30, %3
  %164 = phi i32 [ 0, %150 ], [ -2, %34 ], [ -2, %3 ], [ -2, %30 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  ret i32 %164
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_ale_vlan_add_modify(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i32 12, i1 false)
  %8 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %57, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %13 = zext i16 %1 to i32
  br label %14

14:                                               ; preds = %33, %11
  %15 = phi i32 [ 0, %11 ], [ %34, %33 ]
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #9, !srcloc !8
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr i8, ptr %18, i32 52
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !9
  %21 = load ptr, ptr %12, align 4
  %22 = getelementptr i8, ptr %21, i32 56
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !9
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr i8, ptr %24, i32 60
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #9, !srcloc !9
  %27 = and i32 %23, 805306368
  %28 = icmp eq i32 %27, 536870912
  %29 = lshr i32 %23, 16
  %30 = and i32 %29, 4095
  %31 = icmp eq i32 %30, %13
  %32 = select i1 %28, i1 %31, i1 false
  br i1 %32, label %37, label %33

33:                                               ; preds = %14
  %34 = add nuw i32 %15, 1
  %35 = load i32, ptr %8, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %14, label %57

37:                                               ; preds = %14
  %38 = icmp sgt i32 %15, -1
  br i1 %38, label %39, label %57

39:                                               ; preds = %37
  %40 = load i32, ptr %8, align 4
  %41 = icmp ult i32 %40, %15
  br i1 %41, label %42, label %43, !prof !10

42:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 302, i32 noundef 9, ptr noundef null) #9
  br label %43

43:                                               ; preds = %42, %39
  %44 = load ptr, ptr %12, align 4
  %45 = getelementptr i8, ptr %44, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %15) #9, !srcloc !8
  %46 = load ptr, ptr %12, align 4
  %47 = getelementptr i8, ptr %46, i32 52
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #9, !srcloc !9
  store i32 %48, ptr %7, align 4
  %49 = load ptr, ptr %12, align 4
  %50 = getelementptr i8, ptr %49, i32 56
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #9, !srcloc !9
  %52 = getelementptr inbounds i32, ptr %7, i32 1
  store i32 %51, ptr %52, align 4
  %53 = load ptr, ptr %12, align 4
  %54 = getelementptr i8, ptr %53, i32 60
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #9, !srcloc !9
  %56 = getelementptr inbounds i32, ptr %7, i32 2
  store i32 %55, ptr %56, align 4
  br label %57

57:                                               ; preds = %43, %37, %33, %6
  %58 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 9
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %0, null
  br i1 %60, label %193, label %61

61:                                               ; preds = %57
  %62 = getelementptr %struct.ale_entry_fld, ptr %59, i32 0, i32 2
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.5, i32 noundef 0) #10
  %69 = load ptr, ptr %58, align 4
  br label %92

70:                                               ; preds = %61
  %71 = getelementptr %struct.ale_entry_fld, ptr %59, i32 0, i32 1
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %64, 2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %78 = load i32, ptr %77, align 4
  br label %79

79:                                               ; preds = %76, %70
  %80 = phi i32 [ %78, %76 ], [ %73, %70 ]
  %81 = load i8, ptr %59, align 1
  %82 = zext i8 %81 to i32
  %83 = lshr i32 %82, 5
  %84 = and i32 %82, 31
  %85 = sub nsw i32 2, %83
  %86 = getelementptr i32, ptr %7, i32 %85
  %87 = load i32, ptr %86, align 4
  %88 = lshr i32 %87, %84
  %89 = shl nsw i32 -1, %80
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  br label %92

92:                                               ; preds = %79, %67
  %93 = phi ptr [ %69, %67 ], [ %59, %79 ]
  %94 = phi i32 [ -2, %67 ], [ %91, %79 ]
  %95 = getelementptr %struct.ale_entry_fld, ptr %93, i32 2
  %96 = getelementptr %struct.ale_entry_fld, ptr %93, i32 2, i32 2
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.5, i32 noundef 2) #10
  %103 = load ptr, ptr %58, align 4
  br label %126

104:                                              ; preds = %92
  %105 = getelementptr %struct.ale_entry_fld, ptr %93, i32 2, i32 1
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i32
  %108 = and i32 %98, 2
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %112 = load i32, ptr %111, align 4
  br label %113

113:                                              ; preds = %110, %104
  %114 = phi i32 [ %112, %110 ], [ %107, %104 ]
  %115 = load i8, ptr %95, align 1
  %116 = zext i8 %115 to i32
  %117 = lshr i32 %116, 5
  %118 = and i32 %116, 31
  %119 = sub nsw i32 2, %117
  %120 = getelementptr i32, ptr %7, i32 %119
  %121 = load i32, ptr %120, align 4
  %122 = lshr i32 %121, %118
  %123 = shl nsw i32 -1, %114
  %124 = xor i32 %123, -1
  %125 = and i32 %122, %124
  br label %126

126:                                              ; preds = %113, %101
  %127 = phi ptr [ %103, %101 ], [ %93, %113 ]
  %128 = phi i32 [ -2, %101 ], [ %125, %113 ]
  %129 = getelementptr %struct.ale_entry_fld, ptr %127, i32 1
  %130 = getelementptr %struct.ale_entry_fld, ptr %127, i32 1, i32 2
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = and i32 %132, 1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %126
  %136 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.5, i32 noundef 1) #10
  %137 = load ptr, ptr %58, align 4
  br label %160

138:                                              ; preds = %126
  %139 = getelementptr %struct.ale_entry_fld, ptr %127, i32 1, i32 1
  %140 = load i8, ptr %139, align 1
  %141 = zext i8 %140 to i32
  %142 = and i32 %132, 2
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %146 = load i32, ptr %145, align 4
  br label %147

147:                                              ; preds = %144, %138
  %148 = phi i32 [ %146, %144 ], [ %141, %138 ]
  %149 = load i8, ptr %129, align 1
  %150 = zext i8 %149 to i32
  %151 = lshr i32 %150, 5
  %152 = and i32 %150, 31
  %153 = sub nsw i32 2, %151
  %154 = getelementptr i32, ptr %7, i32 %153
  %155 = load i32, ptr %154, align 4
  %156 = lshr i32 %155, %152
  %157 = shl nsw i32 -1, %148
  %158 = xor i32 %157, -1
  %159 = and i32 %156, %158
  br label %160

160:                                              ; preds = %147, %135
  %161 = phi ptr [ %137, %135 ], [ %127, %147 ]
  %162 = phi i32 [ -2, %135 ], [ %159, %147 ]
  %163 = getelementptr %struct.ale_entry_fld, ptr %161, i32 3
  %164 = getelementptr %struct.ale_entry_fld, ptr %161, i32 3, i32 2
  %165 = load i8, ptr %164, align 1
  %166 = zext i8 %165 to i32
  %167 = and i32 %166, 1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %160
  %170 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %170, ptr noundef nonnull @.str.5, i32 noundef 3) #10
  br label %193

171:                                              ; preds = %160
  %172 = getelementptr %struct.ale_entry_fld, ptr %161, i32 3, i32 1
  %173 = load i8, ptr %172, align 1
  %174 = zext i8 %173 to i32
  %175 = and i32 %166, 2
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %179 = load i32, ptr %178, align 4
  br label %180

180:                                              ; preds = %177, %171
  %181 = phi i32 [ %179, %177 ], [ %174, %171 ]
  %182 = load i8, ptr %163, align 1
  %183 = zext i8 %182 to i32
  %184 = lshr i32 %183, 5
  %185 = and i32 %183, 31
  %186 = sub nsw i32 2, %184
  %187 = getelementptr i32, ptr %7, i32 %186
  %188 = load i32, ptr %187, align 4
  %189 = lshr i32 %188, %185
  %190 = shl nsw i32 -1, %181
  %191 = xor i32 %190, -1
  %192 = and i32 %189, %191
  br label %193

193:                                              ; preds = %180, %169, %57
  %194 = phi i32 [ %162, %180 ], [ %162, %169 ], [ -22, %57 ]
  %195 = phi i32 [ %94, %180 ], [ %94, %169 ], [ -22, %57 ]
  %196 = phi i32 [ %128, %180 ], [ %128, %169 ], [ -22, %57 ]
  %197 = phi i32 [ %192, %180 ], [ -2, %169 ], [ -22, %57 ]
  %198 = or i32 %195, %2
  %199 = xor i32 %2, -1
  %200 = and i32 %197, %199
  %201 = or i32 %200, %3
  %202 = and i32 %196, %199
  %203 = or i32 %202, %4
  %204 = and i32 %194, %199
  %205 = or i32 %204, %5
  %206 = tail call i32 @cpsw_ale_add_vlan(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %198, i32 noundef %201, i32 noundef %203, i32 noundef %205)
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %193
  %209 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %209, ptr noundef nonnull @.str) #10
  br label %210

210:                                              ; preds = %208, %193
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  ret i32 %206
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_ale_set_unreg_mcast(ptr noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %125, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds i32, ptr %4, i32 1
  %11 = getelementptr inbounds i32, ptr %4, i32 2
  %12 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 9
  %13 = icmp eq ptr %0, null
  %14 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %15 = xor i32 %1, -1
  br label %16

16:                                               ; preds = %121, %8
  %17 = phi i32 [ 0, %8 ], [ %122, %121 ]
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #9, !srcloc !8
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr i8, ptr %20, i32 52
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !9
  store i32 %22, ptr %4, align 4
  %23 = load ptr, ptr %9, align 4
  %24 = getelementptr i8, ptr %23, i32 56
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !9
  store i32 %25, ptr %10, align 4
  %26 = load ptr, ptr %9, align 4
  %27 = getelementptr i8, ptr %26, i32 60
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !9
  store i32 %28, ptr %11, align 4
  %29 = and i32 %25, 805306368
  %30 = icmp eq i32 %29, 536870912
  br i1 %30, label %31, label %121

31:                                               ; preds = %16
  %32 = load ptr, ptr %12, align 4
  br i1 %13, label %104, label %33

33:                                               ; preds = %31
  %34 = getelementptr %struct.ale_entry_fld, ptr %32, i32 1
  %35 = getelementptr %struct.ale_entry_fld, ptr %32, i32 1, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.5, i32 noundef 1) #10
  %42 = load ptr, ptr %12, align 4
  %43 = getelementptr %struct.ale_entry_fld, ptr %42, i32 1, i32 2
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  br label %67

46:                                               ; preds = %33
  %47 = getelementptr %struct.ale_entry_fld, ptr %32, i32 1, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %37, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = load i32, ptr %14, align 4
  br label %54

54:                                               ; preds = %52, %46
  %55 = phi i32 [ %53, %52 ], [ %49, %46 ]
  %56 = load i8, ptr %34, align 1
  %57 = zext i8 %56 to i32
  %58 = lshr i32 %57, 5
  %59 = and i32 %57, 31
  %60 = sub nsw i32 2, %58
  %61 = getelementptr i32, ptr %4, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = lshr i32 %62, %59
  %64 = shl nsw i32 -1, %55
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  br label %67

67:                                               ; preds = %54, %40
  %68 = phi i32 [ %45, %40 ], [ %37, %54 ]
  %69 = phi ptr [ %42, %40 ], [ %32, %54 ]
  %70 = phi i32 [ -2, %40 ], [ %66, %54 ]
  %71 = or i32 %70, %1
  %72 = and i32 %70, %15
  %73 = select i1 %2, i32 %71, i32 %72
  %74 = getelementptr %struct.ale_entry_fld, ptr %69, i32 1
  %75 = and i32 %68, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.4, i32 noundef 1) #10
  br label %104

79:                                               ; preds = %67
  %80 = getelementptr %struct.ale_entry_fld, ptr %69, i32 1, i32 1
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %68, 2
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = load i32, ptr %14, align 4
  br label %87

87:                                               ; preds = %85, %79
  %88 = phi i32 [ %86, %85 ], [ %82, %79 ]
  %89 = load i8, ptr %74, align 1
  %90 = zext i8 %89 to i32
  %91 = shl nsw i32 -1, %88
  %92 = xor i32 %91, -1
  %93 = and i32 %73, %92
  %94 = lshr i32 %90, 5
  %95 = and i32 %90, 31
  %96 = sub nsw i32 2, %94
  %97 = shl i32 %92, %95
  %98 = xor i32 %97, -1
  %99 = getelementptr i32, ptr %4, i32 %96
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, %98
  %102 = shl i32 %93, %95
  %103 = or i32 %101, %102
  store i32 %103, ptr %99, align 4
  br label %104

104:                                              ; preds = %87, %77, %31
  %105 = load i32, ptr %5, align 4
  %106 = icmp ult i32 %105, %17
  br i1 %106, label %107, label %108, !prof !10

107:                                              ; preds = %104
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 317, i32 noundef 9, ptr noundef null) #9
  br label %108

108:                                              ; preds = %107, %104
  %109 = load i32, ptr %4, align 4
  %110 = load ptr, ptr %9, align 4
  %111 = getelementptr i8, ptr %110, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #9, !srcloc !8
  %112 = load i32, ptr %10, align 4
  %113 = load ptr, ptr %9, align 4
  %114 = getelementptr i8, ptr %113, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %112) #9, !srcloc !8
  %115 = load i32, ptr %11, align 4
  %116 = load ptr, ptr %9, align 4
  %117 = getelementptr i8, ptr %116, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #9, !srcloc !8
  %118 = or i32 %17, -2147483648
  %119 = load ptr, ptr %9, align 4
  %120 = getelementptr i8, ptr %119, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %118) #9, !srcloc !8
  br label %121

121:                                              ; preds = %108, %16
  %122 = add nuw i32 %17, 1
  %123 = load i32, ptr %5, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %16, label %125

125:                                              ; preds = %121, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_ale_set_allmulti(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %209, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds i32, ptr %4, i32 1
  %11 = getelementptr inbounds i32, ptr %4, i32 2
  %12 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 9
  %13 = icmp eq ptr %0, null
  %14 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 5
  %15 = icmp ne i32 %2, -1
  %16 = shl nuw i32 1, %2
  %17 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 5
  %18 = icmp ne i32 %1, 0
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %205, %8
  %21 = phi i32 [ 0, %8 ], [ %206, %205 ]
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr i8, ptr %22, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #9, !srcloc !8
  %24 = load ptr, ptr %9, align 4
  %25 = getelementptr i8, ptr %24, i32 52
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #9, !srcloc !9
  store i32 %26, ptr %4, align 4
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr i8, ptr %27, i32 56
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !9
  store i32 %29, ptr %10, align 4
  %30 = load ptr, ptr %9, align 4
  %31 = getelementptr i8, ptr %30, i32 60
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !9
  store i32 %32, ptr %11, align 4
  %33 = and i32 %29, 805306368
  %34 = icmp eq i32 %33, 536870912
  br i1 %34, label %35, label %205

35:                                               ; preds = %20
  %36 = load ptr, ptr %12, align 4
  br i1 %13, label %66, label %37

37:                                               ; preds = %35
  %38 = getelementptr %struct.ale_entry_fld, ptr %36, i32 0, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.5, i32 noundef 0) #10
  br label %66

45:                                               ; preds = %37
  %46 = getelementptr %struct.ale_entry_fld, ptr %36, i32 0, i32 1
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %40, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = load i32, ptr %14, align 4
  br label %53

53:                                               ; preds = %51, %45
  %54 = phi i32 [ %52, %51 ], [ %48, %45 ]
  %55 = load i8, ptr %36, align 1
  %56 = zext i8 %55 to i32
  %57 = lshr i32 %56, 5
  %58 = and i32 %56, 31
  %59 = sub nsw i32 2, %57
  %60 = getelementptr i32, ptr %4, i32 %59
  %61 = load i32, ptr %60, align 4
  %62 = lshr i32 %61, %58
  %63 = shl nsw i32 -1, %54
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  br label %66

66:                                               ; preds = %53, %43, %35
  %67 = phi i32 [ %65, %53 ], [ -2, %43 ], [ -22, %35 ]
  %68 = and i32 %67, %16
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %15, i1 %69, i1 false
  br i1 %70, label %205, label %71

71:                                               ; preds = %66
  %72 = load i8, ptr %17, align 4, !range !11
  %73 = icmp eq i8 %72, 0
  %74 = load ptr, ptr %12, align 4
  br i1 %73, label %75, label %146

75:                                               ; preds = %71
  br i1 %13, label %188, label %76

76:                                               ; preds = %75
  %77 = getelementptr %struct.ale_entry_fld, ptr %74, i32 1
  %78 = getelementptr %struct.ale_entry_fld, ptr %74, i32 1, i32 2
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.5, i32 noundef 1) #10
  %85 = load ptr, ptr %12, align 4
  %86 = getelementptr %struct.ale_entry_fld, ptr %85, i32 1, i32 2
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  br label %111

89:                                               ; preds = %76
  %90 = getelementptr %struct.ale_entry_fld, ptr %74, i32 1, i32 1
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %80, 2
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %89
  %96 = load i32, ptr %14, align 4
  br label %97

97:                                               ; preds = %95, %89
  %98 = phi i32 [ %96, %95 ], [ %92, %89 ]
  %99 = load i8, ptr %77, align 1
  %100 = zext i8 %99 to i32
  %101 = lshr i32 %100, 5
  %102 = and i32 %100, 31
  %103 = sub nsw i32 2, %101
  %104 = getelementptr i32, ptr %4, i32 %103
  %105 = load i32, ptr %104, align 4
  %106 = lshr i32 %105, %102
  %107 = shl nsw i32 -1, %98
  %108 = and i32 %107, -2
  %109 = xor i32 %108, -2
  %110 = and i32 %106, %109
  br label %111

111:                                              ; preds = %97, %83
  %112 = phi i32 [ %88, %83 ], [ %80, %97 ]
  %113 = phi ptr [ %85, %83 ], [ %74, %97 ]
  %114 = phi i32 [ -2, %83 ], [ %110, %97 ]
  %115 = or i32 %114, %19
  %116 = getelementptr %struct.ale_entry_fld, ptr %113, i32 1
  %117 = and i32 %112, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.4, i32 noundef 1) #10
  br label %188

121:                                              ; preds = %111
  %122 = getelementptr %struct.ale_entry_fld, ptr %113, i32 1, i32 1
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %112, 2
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %121
  %128 = load i32, ptr %14, align 4
  br label %129

129:                                              ; preds = %127, %121
  %130 = phi i32 [ %128, %127 ], [ %124, %121 ]
  %131 = load i8, ptr %116, align 1
  %132 = zext i8 %131 to i32
  %133 = shl nsw i32 -1, %130
  %134 = xor i32 %133, -1
  %135 = and i32 %115, %134
  %136 = lshr i32 %132, 5
  %137 = and i32 %132, 31
  %138 = sub nsw i32 2, %136
  %139 = shl i32 %134, %137
  %140 = xor i32 %139, -1
  %141 = getelementptr i32, ptr %4, i32 %138
  %142 = load i32, ptr %141, align 4
  %143 = and i32 %142, %140
  %144 = shl i32 %135, %137
  %145 = or i32 %143, %144
  store i32 %145, ptr %141, align 4
  br label %188

146:                                              ; preds = %71
  br i1 %13, label %179, label %147

147:                                              ; preds = %146
  %148 = getelementptr %struct.ale_entry_fld, ptr %74, i32 4
  %149 = getelementptr %struct.ale_entry_fld, ptr %74, i32 4, i32 2
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i32
  %152 = and i32 %151, 1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.5, i32 noundef 4) #10
  br label %179

156:                                              ; preds = %147
  %157 = getelementptr %struct.ale_entry_fld, ptr %74, i32 4, i32 1
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  %160 = and i32 %151, 2
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %156
  %163 = load i32, ptr %14, align 4
  br label %164

164:                                              ; preds = %162, %156
  %165 = phi i32 [ %163, %162 ], [ %159, %156 ]
  %166 = load i8, ptr %148, align 1
  %167 = zext i8 %166 to i32
  %168 = lshr i32 %167, 5
  %169 = and i32 %167, 31
  %170 = sub nsw i32 2, %168
  %171 = getelementptr i32, ptr %4, i32 %170
  %172 = load i32, ptr %171, align 4
  %173 = lshr i32 %172, %169
  %174 = shl nsw i32 -1, %165
  %175 = xor i32 %174, -1
  %176 = and i32 %173, %175
  %177 = shl i32 %176, 2
  %178 = add i32 %177, 192
  br label %179

179:                                              ; preds = %164, %154, %146
  %180 = phi i32 [ %178, %164 ], [ 184, %154 ], [ 104, %146 ]
  %181 = load ptr, ptr %9, align 4
  %182 = getelementptr i8, ptr %181, i32 %180
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  %184 = and i32 %183, -2
  %185 = or i32 %184, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %186 = load ptr, ptr %9, align 4
  %187 = getelementptr i8, ptr %186, i32 %180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %185) #9, !srcloc !8
  br label %188

188:                                              ; preds = %179, %129, %119, %75
  %189 = load i32, ptr %5, align 4
  %190 = icmp ult i32 %189, %21
  br i1 %190, label %191, label %192, !prof !10

191:                                              ; preds = %188
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 317, i32 noundef 9, ptr noundef null) #9
  br label %192

192:                                              ; preds = %191, %188
  %193 = load i32, ptr %4, align 4
  %194 = load ptr, ptr %9, align 4
  %195 = getelementptr i8, ptr %194, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %193) #9, !srcloc !8
  %196 = load i32, ptr %10, align 4
  %197 = load ptr, ptr %9, align 4
  %198 = getelementptr i8, ptr %197, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 %196) #9, !srcloc !8
  %199 = load i32, ptr %11, align 4
  %200 = load ptr, ptr %9, align 4
  %201 = getelementptr i8, ptr %200, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 %199) #9, !srcloc !8
  %202 = or i32 %21, -2147483648
  %203 = load ptr, ptr %9, align 4
  %204 = getelementptr i8, ptr %203, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %202) #9, !srcloc !8
  br label %205

205:                                              ; preds = %192, %66, %20
  %206 = add nuw i32 %21, 1
  %207 = load i32, ptr %5, align 4
  %208 = icmp ult i32 %206, %207
  br i1 %208, label %20, label %209

209:                                              ; preds = %205, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_ale_control_set(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ugt i32 %2, 26
  br i1 %5, label %50, label %6

6:                                                ; preds = %4
  %7 = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %2, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %2, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10, %6
  %15 = icmp slt i32 %1, 0
  br i1 %15, label %50, label %16

16:                                               ; preds = %14, %10
  %17 = phi i32 [ %1, %14 ], [ 0, %10 ]
  %18 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %16
  %22 = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %2, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = shl nsw i32 -1, %23
  %25 = and i32 %24, %3
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %21
  %28 = xor i32 %24, -1
  %29 = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %2, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = mul i32 %17, %8
  %32 = add i32 %30, %31
  %33 = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %2, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %2, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = mul i32 %36, %17
  %38 = add i32 %37, %34
  %39 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 %32
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #9, !srcloc !9
  %43 = shl i32 %28, %38
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = shl i32 %3, %38
  %47 = or i32 %45, %46
  %48 = load ptr, ptr %39, align 4
  %49 = getelementptr i8, ptr %48, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #9, !srcloc !8
  br label %50

50:                                               ; preds = %27, %21, %16, %14, %4
  %51 = phi i32 [ 0, %27 ], [ -22, %4 ], [ -22, %16 ], [ -22, %14 ], [ -22, %21 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpsw_ale_control_get(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i32 %2, 26
  br i1 %4, label %41, label %5

5:                                                ; preds = %3
  %6 = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %2, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %2, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9, %5
  %14 = icmp slt i32 %1, 0
  br i1 %14, label %41, label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %1, %13 ], [ 0, %9 ]
  %17 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %15
  %21 = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %2, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = mul i32 %16, %7
  %24 = add i32 %22, %23
  %25 = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %2, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %2, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = mul i32 %28, %16
  %30 = add i32 %29, %26
  %31 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %24
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !9
  %35 = lshr i32 %34, %30
  %36 = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %2, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = shl nsw i32 -1, %37
  %39 = xor i32 %38, -1
  %40 = and i32 %35, %39
  br label %41

41:                                               ; preds = %20, %15, %13, %3
  %42 = phi i32 [ %40, %20 ], [ -22, %3 ], [ -22, %15 ], [ -22, %13 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_ale_start(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %47, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 0, i32 5), align 4
  %7 = shl nsw i32 -1, %6
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %5
  %11 = xor i32 %7, -1
  %12 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 0, i32 1), align 4
  %13 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 0, i32 3), align 4
  %14 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !9
  %18 = shl i32 %11, %13
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = shl nuw i32 1, %13
  %22 = or i32 %20, %21
  %23 = load ptr, ptr %14, align 4
  %24 = getelementptr i8, ptr %23, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #9, !srcloc !8
  %25 = load i32, ptr %2, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %10, %5
  %28 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 1, i32 5), align 4
  %29 = shl nsw i32 -1, %28
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = xor i32 %29, -1
  %34 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 1, i32 1), align 4
  %35 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 1, i32 3), align 4
  %36 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 %34
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #9, !srcloc !9
  %40 = shl i32 %33, %35
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = shl nuw i32 1, %35
  %44 = or i32 %42, %43
  %45 = load ptr, ptr %36, align 4
  %46 = getelementptr i8, ptr %45, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #9, !srcloc !8
  br label %47

47:                                               ; preds = %32, %27, %10, %1
  %48 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %76, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 8
  %58 = load i32, ptr %57, align 4
  %59 = udiv i32 %58, 1000000
  %60 = mul i32 %59, %49
  %61 = icmp ult i32 %60, 16777216
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %63, ptr noundef nonnull @.str.33) #10
  br label %64

64:                                               ; preds = %62, %56
  %65 = phi i32 [ 16777215, %62 ], [ %60, %56 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %66 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %65) #9, !srcloc !8
  br label %76

69:                                               ; preds = %51
  %70 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %70, ptr noundef nonnull @cpsw_ale_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  %71 = load volatile i32, ptr @jiffies, align 64
  %72 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, %71
  %75 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 1, i32 1
  store i32 %74, ptr %75, align 4
  tail call void @add_timer(ptr noundef %70) #9
  br label %76

76:                                               ; preds = %69, %64, %47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_ale_stop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %11 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #9, !srcloc !8
  br label %17

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.cpsw_ale, ptr %0, i32 0, i32 1
  %16 = tail call i32 @del_timer_sync(ptr noundef %15) #9
  br label %17

17:                                               ; preds = %14, %10, %1
  %18 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %58, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 1, i32 5), align 4
  %23 = shl nsw i32 -1, %22
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = xor i32 %23, -1
  %28 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 1, i32 1), align 4
  %29 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 1, i32 3), align 4
  %30 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 %28
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !9
  %34 = shl i32 %27, %29
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = shl nuw i32 1, %29
  %38 = or i32 %36, %37
  %39 = load ptr, ptr %30, align 4
  %40 = getelementptr i8, ptr %39, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #9, !srcloc !8
  %41 = load i32, ptr %18, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %26, %21
  %44 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 0, i32 5), align 4
  %45 = shl nsw i32 -1, %44
  %46 = xor i32 %45, -1
  %47 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 0, i32 1), align 4
  %48 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 0, i32 3), align 4
  %49 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 %47
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #9, !srcloc !9
  %53 = shl i32 %46, %48
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = load ptr, ptr %49, align 4
  %57 = getelementptr i8, ptr %56, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #9, !srcloc !8
  br label %58

58:                                               ; preds = %43, %26, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cpsw_ale_create(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %102, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(5) @.str.34) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(12) @.str.35) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(8) @.str.36) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(7) @.str.37) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(13) @.str.38) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(13) @.str.39) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(12) @.str.40) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %102

26:                                               ; preds = %23, %20, %17, %14, %11, %8, %5
  %27 = phi ptr [ getelementptr inbounds ([8 x %struct.cpsw_ale_dev_id], ptr @cpsw_ale_id_match, i32 0, i32 5), %20 ], [ getelementptr inbounds ([8 x %struct.cpsw_ale_dev_id], ptr @cpsw_ale_id_match, i32 0, i32 4), %17 ], [ getelementptr inbounds ([8 x %struct.cpsw_ale_dev_id], ptr @cpsw_ale_id_match, i32 0, i32 3), %14 ], [ getelementptr inbounds ([8 x %struct.cpsw_ale_dev_id], ptr @cpsw_ale_id_match, i32 0, i32 2), %11 ], [ getelementptr inbounds ([8 x %struct.cpsw_ale_dev_id], ptr @cpsw_ale_id_match, i32 0, i32 1), %8 ], [ @cpsw_ale_id_match, %5 ], [ getelementptr inbounds ([8 x %struct.cpsw_ale_dev_id], ptr @cpsw_ale_id_match, i32 0, i32 6), %23 ]
  %28 = getelementptr inbounds %struct.cpsw_ale_dev_id, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.cpsw_ale_dev_id, ptr %27, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 6
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.cpsw_ale_dev_id, ptr %27, i32 0, i32 4
  %35 = load i8, ptr %34, align 4, !range !11
  %36 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 5
  store i8 %35, ptr %36, align 4
  %37 = load ptr, ptr %0, align 4
  %38 = tail call noalias ptr @devm_kmalloc(ptr noundef %37, i32 noundef 88, i32 noundef 3520) #9
  %39 = icmp eq ptr %38, null
  br i1 %39, label %102, label %40

40:                                               ; preds = %26
  %41 = load ptr, ptr %0, align 4
  %42 = tail call ptr @devm_bitmap_zalloc(ptr noundef %41, i32 noundef 4096, i32 noundef 3264) #9
  %43 = getelementptr inbounds %struct.cpsw_ale, ptr %38, i32 0, i32 8
  store ptr %42, ptr %43, align 4
  %44 = icmp eq ptr %42, null
  br i1 %44, label %102, label %45

45:                                               ; preds = %40
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %38, ptr noundef align 4 dereferenceable(36) %0, i32 36, i1 false)
  %46 = getelementptr inbounds %struct.cpsw_ale_params, ptr %38, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = mul i32 %47, 100
  %49 = getelementptr inbounds %struct.cpsw_ale, ptr %38, i32 0, i32 2
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.cpsw_ale_dev_id, ptr %27, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.cpsw_ale, ptr %38, i32 0, i32 4
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.cpsw_ale_dev_id, ptr %27, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.cpsw_ale, ptr %38, i32 0, i32 9
  store ptr %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.cpsw_ale_params, ptr %38, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #9, !srcloc !9
  %59 = lshr i32 %58, 8
  %60 = getelementptr inbounds %struct.cpsw_ale_params, ptr %38, i32 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %59, %61
  %63 = shl nuw i32 %62, 8
  %64 = and i32 %58, 255
  %65 = or i32 %63, %64
  %66 = getelementptr inbounds %struct.cpsw_ale, ptr %38, i32 0, i32 3
  store i32 %65, ptr %66, align 4
  %67 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %67, ptr noundef nonnull @.str.1, i32 noundef %62, i32 noundef %64) #10
  %68 = load i32, ptr %52, align 4
  %69 = and i32 %68, 1
  %70 = icmp ne i32 %69, 0
  %71 = getelementptr inbounds %struct.cpsw_ale_params, ptr %38, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %70, i1 %73, i1 false
  br i1 %74, label %75, label %83

75:                                               ; preds = %45
  %76 = load ptr, ptr %56, align 4
  %77 = getelementptr i8, ptr %76, i32 4
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #9, !srcloc !9
  %79 = and i32 %78, 31
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %102, label %81

81:                                               ; preds = %75
  %82 = shl nuw nsw i32 %79, 10
  store i32 %82, ptr %71, align 4
  br label %83

83:                                               ; preds = %81, %45
  %84 = phi i32 [ %82, %81 ], [ %72, %45 ]
  %85 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %85, ptr noundef nonnull @.str.2, i32 noundef %84) #10
  %86 = getelementptr inbounds %struct.cpsw_ale_params, ptr %38, i32 0, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.cpsw_ale, ptr %38, i32 0, i32 5
  store i32 %87, ptr %88, align 4
  %89 = icmp ugt i32 %87, 1
  %90 = add i32 %87, -1
  %91 = tail call i32 @llvm.ctlz.i32(i32 %90, i1 false) #9, !range !18
  %92 = sub nuw nsw i32 32, %91
  %93 = select i1 %89, i32 %92, i32 0
  %94 = getelementptr inbounds %struct.cpsw_ale, ptr %38, i32 0, i32 6
  store i32 %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.cpsw_ale, ptr %38, i32 0, i32 7
  store i32 %87, ptr %95, align 4
  %96 = getelementptr inbounds %struct.cpsw_ale_params, ptr %38, i32 0, i32 5
  %97 = load i8, ptr %96, align 4, !range !11
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %83
  store i32 %87, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 17, i32 5), align 4
  store i32 144, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 17, i32 1), align 4
  store i32 %87, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 18, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 18, i32 3), align 4
  store i32 148, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 18, i32 1), align 4
  store i32 %87, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 19, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 19, i32 3), align 4
  store i32 152, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 19, i32 1), align 4
  store i32 %87, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 20, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 20, i32 3), align 4
  store i32 156, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 20, i32 1), align 4
  br label %100

100:                                              ; preds = %99, %83
  %101 = tail call i32 @cpsw_ale_control_set(ptr noundef nonnull %38, i32 noundef 0, i32 noundef 1, i32 noundef 1)
  br label %102

102:                                              ; preds = %100, %75, %40, %26, %23, %1
  %103 = phi ptr [ %38, %100 ], [ inttoptr (i32 -22 to ptr), %1 ], [ inttoptr (i32 -22 to ptr), %23 ], [ inttoptr (i32 -12 to ptr), %26 ], [ inttoptr (i32 -12 to ptr), %40 ], [ inttoptr (i32 -22 to ptr), %75 ]
  ret ptr %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_bitmap_zalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpsw_ale_dump(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %25, %8 ]
  %10 = phi ptr [ %1, %6 ], [ %24, %8 ]
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %9) #9, !srcloc !8
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr i8, ptr %13, i32 52
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !9
  store i32 %15, ptr %10, align 4
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr i8, ptr %16, i32 56
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !9
  %19 = getelementptr i32, ptr %10, i32 1
  store i32 %18, ptr %19, align 4
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr i8, ptr %20, i32 60
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !9
  %23 = getelementptr i32, ptr %10, i32 2
  store i32 %22, ptr %23, align 4
  %24 = getelementptr i32, ptr %10, i32 3
  %25 = add nuw i32 %9, 1
  %26 = load i32, ptr %3, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %8, label %28

28:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @cpsw_ale_get_num_entries(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.cpsw_ale_params, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpsw_ale_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 2, i32 5), align 4
  %7 = shl nsw i32 -1, %6
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %5
  %11 = xor i32 %7, -1
  %12 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 2, i32 1), align 4
  %13 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 2, i32 3), align 4
  %14 = getelementptr i8, ptr %0, i32 -32
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !9
  %18 = shl i32 %11, %13
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = shl nuw i32 1, %13
  %22 = or i32 %20, %21
  %23 = load ptr, ptr %14, align 4
  %24 = getelementptr i8, ptr %23, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #9, !srcloc !8
  br label %25

25:                                               ; preds = %10, %5, %1
  %26 = getelementptr i8, ptr %0, i32 20
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load volatile i32, ptr @jiffies, align 64
  %31 = add i32 %30, %27
  %32 = getelementptr inbounds %struct.timer_list, ptr %0, i32 0, i32 1
  store i32 %31, ptr %32, align 4
  tail call void @add_timer(ptr noundef %0) #9
  br label %33

33:                                               ; preds = %29, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 5281390}
!9 = !{i64 5281808}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i8 0, i8 2}
!12 = !{i64 2154755311}
!13 = !{i64 2154755732}
!14 = !{i64 2154758355}
!15 = !{i64 2154758769}
!16 = !{i64 2154764241}
!17 = !{i64 2154764594}
!18 = !{i32 0, i32 33}
