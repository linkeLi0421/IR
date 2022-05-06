; ModuleID = '/llk/IR/drivers/net/pcs/pcs-xpcs.c_pt.bc'
source_filename = "../drivers/net/pcs/pcs-xpcs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xpcs_get_an_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22xpcs_get_an_mode\22\09\09\09\09\09"
module asm "__kstrtabns_xpcs_get_an_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xpcs_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22xpcs_validate\22\09\09\09\09\09"
module asm "__kstrtabns_xpcs_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xpcs_config_eee:\09\09\09\09\09"
module asm "\09.asciz \09\22xpcs_config_eee\22\09\09\09\09\09"
module asm "__kstrtabns_xpcs_config_eee:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xpcs_do_config:\09\09\09\09\09"
module asm "\09.asciz \09\22xpcs_do_config\22\09\09\09\09\09"
module asm "__kstrtabns_xpcs_do_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xpcs_link_up:\09\09\09\09\09"
module asm "\09.asciz \09\22xpcs_link_up\22\09\09\09\09\09"
module asm "__kstrtabns_xpcs_link_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xpcs_create:\09\09\09\09\09"
module asm "\09.asciz \09\22xpcs_create\22\09\09\09\09\09"
module asm "__kstrtabns_xpcs_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xpcs_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22xpcs_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_xpcs_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.xpcs_id = type { i32, i32, ptr }
%struct.phylink_pcs_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.xpcs_compat = type { ptr, ptr, i32, i32, ptr }
%struct.dw_xpcs = type { ptr, ptr, %struct.phylink_pcs }
%struct.phylink_pcs = type { ptr, i8 }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }

@__kstrtab_xpcs_get_an_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_xpcs_get_an_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_xpcs_get_an_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xpcs_get_an_mode to i32), ptr @__kstrtab_xpcs_get_an_mode, ptr @__kstrtabns_xpcs_get_an_mode }, section "___ksymtab_gpl+xpcs_get_an_mode", align 4
@__kstrtab_xpcs_validate = external dso_local constant [0 x i8], align 1
@__kstrtabns_xpcs_validate = external dso_local constant [0 x i8], align 1
@__ksymtab_xpcs_validate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xpcs_validate to i32), ptr @__kstrtab_xpcs_validate, ptr @__kstrtabns_xpcs_validate }, section "___ksymtab_gpl+xpcs_validate", align 4
@__kstrtab_xpcs_config_eee = external dso_local constant [0 x i8], align 1
@__kstrtabns_xpcs_config_eee = external dso_local constant [0 x i8], align 1
@__ksymtab_xpcs_config_eee = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xpcs_config_eee to i32), ptr @__kstrtab_xpcs_config_eee, ptr @__kstrtabns_xpcs_config_eee }, section "___ksymtab_gpl+xpcs_config_eee", align 4
@__kstrtab_xpcs_do_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_xpcs_do_config = external dso_local constant [0 x i8], align 1
@__ksymtab_xpcs_do_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xpcs_do_config to i32), ptr @__kstrtab_xpcs_do_config, ptr @__kstrtabns_xpcs_do_config }, section "___ksymtab_gpl+xpcs_do_config", align 4
@__kstrtab_xpcs_link_up = external dso_local constant [0 x i8], align 1
@__kstrtabns_xpcs_link_up = external dso_local constant [0 x i8], align 1
@__ksymtab_xpcs_link_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xpcs_link_up to i32), ptr @__kstrtab_xpcs_link_up, ptr @__kstrtabns_xpcs_link_up }, section "___ksymtab_gpl+xpcs_link_up", align 4
@xpcs_id_list = internal constant [3 x %struct.xpcs_id] [%struct.xpcs_id { i32 2039926480, i32 -1, ptr @synopsys_xpcs_compat }, %struct.xpcs_id { i32 16, i32 -1, ptr @nxp_sja1105_xpcs_compat }, %struct.xpcs_id { i32 32, i32 -1, ptr @nxp_sja1110_xpcs_compat }], align 4
@xpcs_phylink_ops = internal constant %struct.phylink_pcs_ops { ptr null, ptr @xpcs_get_state, ptr @xpcs_config, ptr null, ptr @xpcs_link_up }, align 4
@__kstrtab_xpcs_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_xpcs_create = external dso_local constant [0 x i8], align 1
@__ksymtab_xpcs_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xpcs_create to i32), ptr @__kstrtab_xpcs_create, ptr @__kstrtabns_xpcs_create }, section "___ksymtab_gpl+xpcs_create", align 4
@__kstrtab_xpcs_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_xpcs_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_xpcs_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xpcs_destroy to i32), ptr @__kstrtab_xpcs_destroy, ptr @__kstrtabns_xpcs_destroy }, section "___ksymtab_gpl+xpcs_destroy", align 4
@__UNIQUE_ID_file273 = internal constant [39 x i8] c"pcs_xpcs.file=drivers/net/pcs/pcs_xpcs\00", section ".modinfo", align 1
@__UNIQUE_ID_license274 = internal constant [24 x i8] c"pcs_xpcs.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [32 x i8] c"\013%s: XPCS access returned %pe\0A\00", align 1
@__func__.xpcs_config_usxgmii = private unnamed_addr constant [20 x i8] c"xpcs_config_usxgmii\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\013%s: xpcs_write returned %pe\0A\00", align 1
@__func__.xpcs_link_up_sgmii = private unnamed_addr constant [19 x i8] c"xpcs_link_up_sgmii\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@synopsys_xpcs_compat = internal constant [5 x %struct.xpcs_compat] [%struct.xpcs_compat { ptr @xpcs_usxgmii_features, ptr @xpcs_usxgmii_interfaces, i32 1, i32 1, ptr null }, %struct.xpcs_compat { ptr @xpcs_10gkr_features, ptr @xpcs_10gkr_interfaces, i32 1, i32 1, ptr null }, %struct.xpcs_compat { ptr @xpcs_xlgmii_features, ptr @xpcs_xlgmii_interfaces, i32 1, i32 1, ptr null }, %struct.xpcs_compat { ptr @xpcs_sgmii_features, ptr @xpcs_sgmii_interfaces, i32 1, i32 2, ptr null }, %struct.xpcs_compat { ptr @xpcs_2500basex_features, ptr @xpcs_2500basex_interfaces, i32 6, i32 3, ptr null }], align 4
@nxp_sja1105_xpcs_compat = internal constant [5 x %struct.xpcs_compat] [%struct.xpcs_compat zeroinitializer, %struct.xpcs_compat zeroinitializer, %struct.xpcs_compat zeroinitializer, %struct.xpcs_compat { ptr @xpcs_sgmii_features, ptr @xpcs_sgmii_interfaces, i32 1, i32 2, ptr @nxp_sja1105_sgmii_pma_config }, %struct.xpcs_compat zeroinitializer], align 4
@nxp_sja1110_xpcs_compat = internal constant [5 x %struct.xpcs_compat] [%struct.xpcs_compat zeroinitializer, %struct.xpcs_compat zeroinitializer, %struct.xpcs_compat zeroinitializer, %struct.xpcs_compat { ptr @xpcs_sgmii_features, ptr @xpcs_sgmii_interfaces, i32 1, i32 2, ptr @nxp_sja1110_sgmii_pma_config }, %struct.xpcs_compat { ptr @xpcs_2500basex_features, ptr @xpcs_2500basex_interfaces, i32 2, i32 3, ptr @nxp_sja1110_2500basex_pma_config }], align 4
@xpcs_usxgmii_features = internal constant [8 x i32] [i32 13, i32 14, i32 6, i32 17, i32 18, i32 19, i32 15, i32 92], align 4
@xpcs_usxgmii_interfaces = internal constant [1 x i32] [i32 28], align 4
@xpcs_10gkr_features = internal constant [4 x i32] [i32 13, i32 14, i32 19, i32 92], align 4
@xpcs_10gkr_interfaces = internal constant [1 x i32] [i32 29], align 4
@xpcs_xlgmii_features = internal constant [27 x i32] [i32 13, i32 14, i32 31, i32 32, i32 33, i32 23, i32 24, i32 25, i32 26, i32 34, i32 35, i32 40, i32 52, i32 53, i32 54, i32 55, i32 56, i32 36, i32 37, i32 38, i32 39, i32 57, i32 58, i32 59, i32 60, i32 61, i32 92], align 4
@xpcs_xlgmii_interfaces = internal constant [1 x i32] [i32 16], align 4
@xpcs_sgmii_features = internal constant [10 x i32] [i32 13, i32 14, i32 6, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 92], align 4
@xpcs_sgmii_interfaces = internal constant [1 x i32] [i32 4], align 4
@xpcs_2500basex_features = internal constant [6 x i32] [i32 13, i32 14, i32 6, i32 15, i32 47, i32 92], align 4
@xpcs_2500basex_interfaces = internal constant [2 x i32] [i32 22, i32 30], align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"\013xpcs_get_state_c73 returned %pe\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Link fault condition detected!\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Receiver fault detected!\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Transmitter fault detected!\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"FIFO fault condition detected!\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Link is not locked!\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Link has errors!\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_file273, ptr @__UNIQUE_ID_license274, ptr @__ksymtab_xpcs_config_eee, ptr @__ksymtab_xpcs_create, ptr @__ksymtab_xpcs_destroy, ptr @__ksymtab_xpcs_do_config, ptr @__ksymtab_xpcs_get_an_mode, ptr @__ksymtab_xpcs_link_up, ptr @__ksymtab_xpcs_validate], section "llvm.metadata"
@switch.table.xpcs_get_state = private unnamed_addr constant [3 x i32] [i32 1073938432, i32 1075773440, i32 1075773440], align 4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @xpcs_get_an_mode(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dw_xpcs, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.xpcs_id, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.xpcs_compat, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = getelementptr %struct.xpcs_compat, ptr %6, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  br label %16

13:                                               ; preds = %16
  %14 = add nuw nsw i32 %17, 1
  %15 = icmp eq i32 %14, %8
  br i1 %15, label %21, label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ 0, %10 ], [ %14, %13 ]
  %18 = getelementptr i32, ptr %12, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %81, label %13

21:                                               ; preds = %13, %2
  %22 = getelementptr %struct.xpcs_compat, ptr %6, i32 1, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = getelementptr %struct.xpcs_compat, ptr %6, i32 1, i32 1
  %27 = load ptr, ptr %26, align 4
  br label %28

28:                                               ; preds = %33, %25
  %29 = phi i32 [ 0, %25 ], [ %34, %33 ]
  %30 = getelementptr i32, ptr %27, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %81, label %33

33:                                               ; preds = %28
  %34 = add nuw nsw i32 %29, 1
  %35 = icmp eq i32 %34, %23
  br i1 %35, label %36, label %28

36:                                               ; preds = %33, %21
  %37 = getelementptr %struct.xpcs_compat, ptr %6, i32 2, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = getelementptr %struct.xpcs_compat, ptr %6, i32 2, i32 1
  %42 = load ptr, ptr %41, align 4
  br label %43

43:                                               ; preds = %48, %40
  %44 = phi i32 [ 0, %40 ], [ %49, %48 ]
  %45 = getelementptr i32, ptr %42, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, %1
  br i1 %47, label %81, label %48

48:                                               ; preds = %43
  %49 = add nuw nsw i32 %44, 1
  %50 = icmp eq i32 %49, %38
  br i1 %50, label %51, label %43

51:                                               ; preds = %48, %36
  %52 = getelementptr %struct.xpcs_compat, ptr %6, i32 3, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = getelementptr %struct.xpcs_compat, ptr %6, i32 3, i32 1
  %57 = load ptr, ptr %56, align 4
  br label %58

58:                                               ; preds = %63, %55
  %59 = phi i32 [ 0, %55 ], [ %64, %63 ]
  %60 = getelementptr i32, ptr %57, i32 %59
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, %1
  br i1 %62, label %81, label %63

63:                                               ; preds = %58
  %64 = add nuw nsw i32 %59, 1
  %65 = icmp eq i32 %64, %53
  br i1 %65, label %66, label %58

66:                                               ; preds = %63, %51
  %67 = getelementptr %struct.xpcs_compat, ptr %6, i32 4, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %66
  %71 = getelementptr %struct.xpcs_compat, ptr %6, i32 4, i32 1
  %72 = load ptr, ptr %71, align 4
  br label %73

73:                                               ; preds = %78, %70
  %74 = phi i32 [ 0, %70 ], [ %79, %78 ]
  %75 = getelementptr i32, ptr %72, i32 %74
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, %1
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = add nuw nsw i32 %74, 1
  %80 = icmp eq i32 %79, %68
  br i1 %80, label %88, label %73

81:                                               ; preds = %73, %58, %43, %28, %16
  %82 = phi i32 [ 4, %73 ], [ 3, %58 ], [ 2, %43 ], [ 1, %28 ], [ 0, %16 ]
  %83 = getelementptr %struct.xpcs_compat, ptr %6, i32 %82
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = getelementptr %struct.xpcs_compat, ptr %6, i32 %82, i32 3
  %87 = load i32, ptr %86, align 4
  br label %88

88:                                               ; preds = %85, %81, %78, %66
  %89 = phi i32 [ %87, %85 ], [ -19, %81 ], [ -19, %66 ], [ -19, %78 ]
  ret i32 %89
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xpcs_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = shl i32 %1, 16
  %5 = and i32 %2, 65535
  %6 = or i32 %5, %4
  %7 = or i32 %6, 1073741824
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.mdio_device, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.mdio_device, ptr %8, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 @mdiobus_read(ptr noundef %10, i32 noundef %12, i32 noundef %7) #8
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xpcs_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #2 {
  %5 = shl i32 %1, 16
  %6 = and i32 %2, 65535
  %7 = or i32 %6, %5
  %8 = or i32 %7, 1073741824
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.mdio_device, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.mdio_device, ptr %9, i32 0, i32 6
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 @mdiobus_write(ptr noundef %11, i32 noundef %13, i32 noundef %8, i16 noundef zeroext %3) #8
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xpcs_validate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct.phylink_link_state, ptr %2, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %106, label %8

8:                                                ; preds = %3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #8
  %9 = getelementptr inbounds %struct.dw_xpcs, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.xpcs_id, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.xpcs_compat, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %8
  %17 = getelementptr %struct.xpcs_compat, ptr %12, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  br label %22

19:                                               ; preds = %22
  %20 = add nuw nsw i32 %23, 1
  %21 = icmp eq i32 %20, %14
  br i1 %21, label %27, label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ 0, %16 ], [ %20, %19 ]
  %24 = getelementptr i32, ptr %18, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %6
  br i1 %26, label %87, label %19

27:                                               ; preds = %19, %8
  %28 = getelementptr %struct.xpcs_compat, ptr %12, i32 1, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = getelementptr %struct.xpcs_compat, ptr %12, i32 1, i32 1
  %33 = load ptr, ptr %32, align 4
  br label %34

34:                                               ; preds = %39, %31
  %35 = phi i32 [ 0, %31 ], [ %40, %39 ]
  %36 = getelementptr i32, ptr %33, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, %6
  br i1 %38, label %87, label %39

39:                                               ; preds = %34
  %40 = add nuw nsw i32 %35, 1
  %41 = icmp eq i32 %40, %29
  br i1 %41, label %42, label %34

42:                                               ; preds = %39, %27
  %43 = getelementptr %struct.xpcs_compat, ptr %12, i32 2, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = getelementptr %struct.xpcs_compat, ptr %12, i32 2, i32 1
  %48 = load ptr, ptr %47, align 4
  br label %49

49:                                               ; preds = %54, %46
  %50 = phi i32 [ 0, %46 ], [ %55, %54 ]
  %51 = getelementptr i32, ptr %48, i32 %50
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, %6
  br i1 %53, label %87, label %54

54:                                               ; preds = %49
  %55 = add nuw nsw i32 %50, 1
  %56 = icmp eq i32 %55, %44
  br i1 %56, label %57, label %49

57:                                               ; preds = %54, %42
  %58 = getelementptr %struct.xpcs_compat, ptr %12, i32 3, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = getelementptr %struct.xpcs_compat, ptr %12, i32 3, i32 1
  %63 = load ptr, ptr %62, align 4
  br label %64

64:                                               ; preds = %69, %61
  %65 = phi i32 [ 0, %61 ], [ %70, %69 ]
  %66 = getelementptr i32, ptr %63, i32 %65
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, %6
  br i1 %68, label %87, label %69

69:                                               ; preds = %64
  %70 = add nuw nsw i32 %65, 1
  %71 = icmp eq i32 %70, %59
  br i1 %71, label %72, label %64

72:                                               ; preds = %69, %57
  %73 = getelementptr %struct.xpcs_compat, ptr %12, i32 4, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %72
  %77 = getelementptr %struct.xpcs_compat, ptr %12, i32 4, i32 1
  %78 = load ptr, ptr %77, align 4
  br label %79

79:                                               ; preds = %84, %76
  %80 = phi i32 [ 0, %76 ], [ %85, %84 ]
  %81 = getelementptr i32, ptr %78, i32 %80
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, %6
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = add nuw nsw i32 %80, 1
  %86 = icmp eq i32 %85, %74
  br i1 %86, label %103, label %79

87:                                               ; preds = %79, %64, %49, %34, %22
  %88 = phi i32 [ 4, %79 ], [ 3, %64 ], [ 2, %49 ], [ 1, %34 ], [ 0, %22 ]
  %89 = getelementptr %struct.xpcs_compat, ptr %12, i32 %88
  %90 = icmp eq ptr %89, null
  br i1 %90, label %103, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %89, align 4
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 92
  br i1 %94, label %103, label %95

95:                                               ; preds = %95, %91
  %96 = phi i32 [ %101, %95 ], [ %93, %91 ]
  %97 = phi i32 [ %98, %95 ], [ 0, %91 ]
  call void @_set_bit(i32 noundef %96, ptr noundef nonnull %4) #8
  %98 = add i32 %97, 1
  %99 = load ptr, ptr %89, align 4
  %100 = getelementptr i32, ptr %99, i32 %98
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 92
  br i1 %102, label %103, label %95

103:                                              ; preds = %95, %91, %87, %84, %72
  %104 = call i32 @__bitmap_and(ptr noundef %1, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 92) #8
  %105 = call i32 @__bitmap_and(ptr noundef %2, ptr noundef %2, ptr noundef nonnull %4, i32 noundef 92) #8
  br label %106

106:                                              ; preds = %103, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xpcs_config_eee(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.mdio_device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mdio_device, ptr %4, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = tail call i32 @mdiobus_read(ptr noundef %6, i32 noundef %8, i32 noundef 1075806214) #8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %45, label %11

11:                                               ; preds = %3
  %12 = icmp eq i32 %2, 0
  %13 = shl i32 %1, 8
  %14 = or i32 %13, 159
  %15 = and i32 %9, 61536
  %16 = select i1 %12, i32 %15, i32 %14
  %17 = trunc i32 %16 to i16
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.mdio_device, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.mdio_device, ptr %18, i32 0, i32 6
  %22 = load i32, ptr %21, align 8
  %23 = tail call i32 @mdiobus_write(ptr noundef %20, i32 noundef %22, i32 noundef 1075806214, i16 noundef zeroext %17) #8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %11
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.mdio_device, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.mdio_device, ptr %26, i32 0, i32 6
  %30 = load i32, ptr %29, align 8
  %31 = tail call i32 @mdiobus_read(ptr noundef %28, i32 noundef %30, i32 noundef 1075806219) #8
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %25
  %34 = and i32 %31, 65534
  %35 = xor i1 %12, true
  %36 = zext i1 %35 to i32
  %37 = or i32 %34, %36
  %38 = trunc i32 %37 to i16
  %39 = load ptr, ptr %0, align 4
  %40 = getelementptr inbounds %struct.mdio_device, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.mdio_device, ptr %39, i32 0, i32 6
  %43 = load i32, ptr %42, align 8
  %44 = tail call i32 @mdiobus_write(ptr noundef %41, i32 noundef %43, i32 noundef 1075806219, i16 noundef zeroext %38) #8
  br label %45

45:                                               ; preds = %33, %25, %11, %3
  %46 = phi i32 [ %44, %33 ], [ %9, %3 ], [ %23, %11 ], [ %31, %25 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xpcs_do_config(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.dw_xpcs, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xpcs_id, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.xpcs_compat, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = getelementptr %struct.xpcs_compat, ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  br label %17

14:                                               ; preds = %17
  %15 = add nuw nsw i32 %18, 1
  %16 = icmp eq i32 %15, %9
  br i1 %16, label %22, label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ 0, %11 ], [ %15, %14 ]
  %19 = getelementptr i32, ptr %13, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %82, label %14

22:                                               ; preds = %14, %3
  %23 = getelementptr %struct.xpcs_compat, ptr %7, i32 1, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = getelementptr %struct.xpcs_compat, ptr %7, i32 1, i32 1
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %34, %26
  %30 = phi i32 [ 0, %26 ], [ %35, %34 ]
  %31 = getelementptr i32, ptr %28, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %82, label %34

34:                                               ; preds = %29
  %35 = add nuw nsw i32 %30, 1
  %36 = icmp eq i32 %35, %24
  br i1 %36, label %37, label %29

37:                                               ; preds = %34, %22
  %38 = getelementptr %struct.xpcs_compat, ptr %7, i32 2, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = getelementptr %struct.xpcs_compat, ptr %7, i32 2, i32 1
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %49, %41
  %45 = phi i32 [ 0, %41 ], [ %50, %49 ]
  %46 = getelementptr i32, ptr %43, i32 %45
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %1
  br i1 %48, label %82, label %49

49:                                               ; preds = %44
  %50 = add nuw nsw i32 %45, 1
  %51 = icmp eq i32 %50, %39
  br i1 %51, label %52, label %44

52:                                               ; preds = %49, %37
  %53 = getelementptr %struct.xpcs_compat, ptr %7, i32 3, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = getelementptr %struct.xpcs_compat, ptr %7, i32 3, i32 1
  %58 = load ptr, ptr %57, align 4
  br label %59

59:                                               ; preds = %64, %56
  %60 = phi i32 [ 0, %56 ], [ %65, %64 ]
  %61 = getelementptr i32, ptr %58, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, %1
  br i1 %63, label %82, label %64

64:                                               ; preds = %59
  %65 = add nuw nsw i32 %60, 1
  %66 = icmp eq i32 %65, %54
  br i1 %66, label %67, label %59

67:                                               ; preds = %64, %52
  %68 = getelementptr %struct.xpcs_compat, ptr %7, i32 4, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %214

71:                                               ; preds = %67
  %72 = getelementptr %struct.xpcs_compat, ptr %7, i32 4, i32 1
  %73 = load ptr, ptr %72, align 4
  br label %74

74:                                               ; preds = %79, %71
  %75 = phi i32 [ 0, %71 ], [ %80, %79 ]
  %76 = getelementptr i32, ptr %73, i32 %75
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, %1
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = add nuw nsw i32 %75, 1
  %81 = icmp eq i32 %80, %69
  br i1 %81, label %214, label %74

82:                                               ; preds = %74, %59, %44, %29, %17
  %83 = phi i32 [ 4, %74 ], [ 3, %59 ], [ 2, %44 ], [ 1, %29 ], [ 0, %17 ]
  %84 = getelementptr %struct.xpcs_compat, ptr %7, i32 %83
  %85 = icmp eq ptr %84, null
  br i1 %85, label %214, label %86

86:                                               ; preds = %82
  %87 = getelementptr %struct.xpcs_compat, ptr %7, i32 %83, i32 3
  %88 = load i32, ptr %87, align 4
  switch i32 %88, label %214 [
    i32 1, label %89
    i32 2, label %94
    i32 3, label %168
  ]

89:                                               ; preds = %86
  %90 = icmp eq i32 %2, 2
  br i1 %90, label %91, label %206

91:                                               ; preds = %89
  %92 = tail call fastcc i32 @xpcs_config_aneg_c73(ptr noundef %0, ptr noundef nonnull %84)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %206, label %214

94:                                               ; preds = %86
  %95 = load ptr, ptr %0, align 4
  %96 = getelementptr inbounds %struct.mdio_device, ptr %95, i32 0, i32 1
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.mdio_device, ptr %95, i32 0, i32 6
  %99 = load i32, ptr %98, align 8
  %100 = tail call i32 @mdiobus_read(ptr noundef %97, i32 noundef %99, i32 noundef 1075773440) #8
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %214, label %102

102:                                              ; preds = %94
  %103 = and i32 %100, 4096
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %102
  %106 = trunc i32 %100 to i16
  %107 = and i16 %106, -4097
  %108 = load ptr, ptr %0, align 4
  %109 = getelementptr inbounds %struct.mdio_device, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %struct.mdio_device, ptr %108, i32 0, i32 6
  %112 = load i32, ptr %111, align 8
  %113 = tail call i32 @mdiobus_write(ptr noundef %110, i32 noundef %112, i32 noundef 1075773440, i16 noundef zeroext %107) #8
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %214, label %115

115:                                              ; preds = %105, %102
  %116 = load ptr, ptr %0, align 4
  %117 = getelementptr inbounds %struct.mdio_device, ptr %116, i32 0, i32 1
  %118 = load ptr, ptr %117, align 8
  %119 = getelementptr inbounds %struct.mdio_device, ptr %116, i32 0, i32 6
  %120 = load i32, ptr %119, align 8
  %121 = tail call i32 @mdiobus_read(ptr noundef %118, i32 noundef %120, i32 noundef 1075806209) #8
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %214, label %123

123:                                              ; preds = %115
  %124 = trunc i32 %121 to i16
  %125 = and i16 %124, -15
  %126 = or i16 %125, 4
  %127 = load ptr, ptr %0, align 4
  %128 = getelementptr inbounds %struct.mdio_device, ptr %127, i32 0, i32 1
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %struct.mdio_device, ptr %127, i32 0, i32 6
  %131 = load i32, ptr %130, align 8
  %132 = tail call i32 @mdiobus_write(ptr noundef %129, i32 noundef %131, i32 noundef 1075806209, i16 noundef zeroext %126) #8
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %214, label %134

134:                                              ; preds = %123
  %135 = load ptr, ptr %0, align 4
  %136 = getelementptr inbounds %struct.mdio_device, ptr %135, i32 0, i32 1
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr inbounds %struct.mdio_device, ptr %135, i32 0, i32 6
  %139 = load i32, ptr %138, align 8
  %140 = tail call i32 @mdiobus_read(ptr noundef %137, i32 noundef %139, i32 noundef 1075806208) #8
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %214, label %142

142:                                              ; preds = %134
  %143 = icmp eq i32 %2, 2
  %144 = and i32 %140, 65023
  %145 = select i1 %143, i32 512, i32 0
  %146 = or i32 %144, %145
  %147 = trunc i32 %146 to i16
  %148 = load ptr, ptr %0, align 4
  %149 = getelementptr inbounds %struct.mdio_device, ptr %148, i32 0, i32 1
  %150 = load ptr, ptr %149, align 8
  %151 = getelementptr inbounds %struct.mdio_device, ptr %148, i32 0, i32 6
  %152 = load i32, ptr %151, align 8
  %153 = tail call i32 @mdiobus_write(ptr noundef %150, i32 noundef %152, i32 noundef 1075806208, i16 noundef zeroext %147) #8
  %154 = icmp sgt i32 %153, -1
  %155 = and i1 %143, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %142
  %157 = trunc i32 %100 to i16
  %158 = or i16 %157, 4096
  %159 = load ptr, ptr %0, align 4
  %160 = getelementptr inbounds %struct.mdio_device, ptr %159, i32 0, i32 1
  %161 = load ptr, ptr %160, align 8
  %162 = getelementptr inbounds %struct.mdio_device, ptr %159, i32 0, i32 6
  %163 = load i32, ptr %162, align 8
  %164 = tail call i32 @mdiobus_write(ptr noundef %161, i32 noundef %163, i32 noundef 1075773440, i16 noundef zeroext %158) #8
  br label %165

165:                                              ; preds = %156, %142
  %166 = phi i32 [ %153, %142 ], [ %164, %156 ]
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %206, label %214

168:                                              ; preds = %86
  %169 = load ptr, ptr %0, align 4
  %170 = getelementptr inbounds %struct.mdio_device, ptr %169, i32 0, i32 1
  %171 = load ptr, ptr %170, align 8
  %172 = getelementptr inbounds %struct.mdio_device, ptr %169, i32 0, i32 6
  %173 = load i32, ptr %172, align 8
  %174 = tail call i32 @mdiobus_read(ptr noundef %171, i32 noundef %173, i32 noundef 1075806208) #8
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %214, label %176

176:                                              ; preds = %168
  %177 = trunc i32 %174 to i16
  %178 = and i16 %177, -517
  %179 = or i16 %178, 4
  %180 = load ptr, ptr %0, align 4
  %181 = getelementptr inbounds %struct.mdio_device, ptr %180, i32 0, i32 1
  %182 = load ptr, ptr %181, align 8
  %183 = getelementptr inbounds %struct.mdio_device, ptr %180, i32 0, i32 6
  %184 = load i32, ptr %183, align 8
  %185 = tail call i32 @mdiobus_write(ptr noundef %182, i32 noundef %184, i32 noundef 1075806208, i16 noundef zeroext %179) #8
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %214, label %187

187:                                              ; preds = %176
  %188 = load ptr, ptr %0, align 4
  %189 = getelementptr inbounds %struct.mdio_device, ptr %188, i32 0, i32 1
  %190 = load ptr, ptr %189, align 8
  %191 = getelementptr inbounds %struct.mdio_device, ptr %188, i32 0, i32 6
  %192 = load i32, ptr %191, align 8
  %193 = tail call i32 @mdiobus_read(ptr noundef %190, i32 noundef %192, i32 noundef 1075773440) #8
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %214, label %195

195:                                              ; preds = %187
  %196 = trunc i32 %193 to i16
  %197 = and i16 %196, -12353
  %198 = or i16 %197, 64
  %199 = load ptr, ptr %0, align 4
  %200 = getelementptr inbounds %struct.mdio_device, ptr %199, i32 0, i32 1
  %201 = load ptr, ptr %200, align 8
  %202 = getelementptr inbounds %struct.mdio_device, ptr %199, i32 0, i32 6
  %203 = load i32, ptr %202, align 8
  %204 = tail call i32 @mdiobus_write(ptr noundef %201, i32 noundef %203, i32 noundef 1075773440, i16 noundef zeroext %198) #8
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %195, %165, %91, %89
  %207 = getelementptr %struct.xpcs_compat, ptr %7, i32 %83, i32 4
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %213, label %210

210:                                              ; preds = %206
  %211 = tail call i32 %208(ptr noundef %0) #8
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %210, %206
  br label %214

214:                                              ; preds = %213, %210, %195, %187, %176, %168, %165, %134, %123, %115, %105, %94, %91, %86, %82, %79, %67
  %215 = phi i32 [ 0, %213 ], [ -19, %82 ], [ %92, %91 ], [ %166, %165 ], [ %204, %195 ], [ -1, %86 ], [ %211, %210 ], [ -19, %67 ], [ %140, %134 ], [ %132, %123 ], [ %121, %115 ], [ %113, %105 ], [ %100, %94 ], [ %193, %187 ], [ %185, %176 ], [ %174, %168 ], [ -19, %79 ]
  ret i32 %215
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xpcs_config_aneg_c73(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = load ptr, ptr %1, align 4
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %8, %4 ]
  %6 = getelementptr i32, ptr %3, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %5, 1
  switch i32 %7, label %4 [
    i32 92, label %9
    i32 15, label %9
  ]

9:                                                ; preds = %4, %4
  %10 = icmp ne i32 %7, 92
  %11 = zext i1 %10 to i16
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.mdio_device, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.mdio_device, ptr %12, i32 0, i32 6
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 @mdiobus_write(ptr noundef %14, i32 noundef %16, i32 noundef 1074200594, i16 noundef zeroext %11) #8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %99, label %19

19:                                               ; preds = %9
  %20 = load ptr, ptr %1, align 4
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi i32 [ 0, %19 ], [ %25, %21 ]
  %23 = getelementptr i32, ptr %20, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %22, 1
  switch i32 %24, label %21 [
    i32 92, label %26
    i32 17, label %26
  ]

26:                                               ; preds = %21, %21
  %27 = icmp eq i32 %24, 92
  %28 = select i1 %27, i32 0, i32 32
  br label %29

29:                                               ; preds = %29, %26
  %30 = phi i32 [ 0, %26 ], [ %33, %29 ]
  %31 = getelementptr i32, ptr %20, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %30, 1
  switch i32 %32, label %29 [
    i32 92, label %34
    i32 18, label %34
  ]

34:                                               ; preds = %29, %29
  %35 = icmp eq i32 %32, 92
  %36 = or i32 %28, 64
  %37 = select i1 %35, i32 %28, i32 %36
  br label %38

38:                                               ; preds = %38, %34
  %39 = phi i32 [ 0, %34 ], [ %42, %38 ]
  %40 = getelementptr i32, ptr %20, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %39, 1
  switch i32 %41, label %38 [
    i32 92, label %43
    i32 19, label %43
  ]

43:                                               ; preds = %38, %38
  %44 = icmp eq i32 %41, 92
  %45 = or i32 %37, 128
  %46 = select i1 %44, i32 %37, i32 %45
  %47 = trunc i32 %46 to i16
  %48 = load ptr, ptr %0, align 4
  %49 = getelementptr inbounds %struct.mdio_device, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.mdio_device, ptr %48, i32 0, i32 6
  %52 = load i32, ptr %51, align 8
  %53 = tail call i32 @mdiobus_write(ptr noundef %50, i32 noundef %52, i32 noundef 1074200593, i16 noundef zeroext %47) #8
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %99, label %55

55:                                               ; preds = %43
  %56 = load ptr, ptr %1, align 4
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi i32 [ 0, %55 ], [ %61, %57 ]
  %59 = getelementptr i32, ptr %56, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %58, 1
  switch i32 %60, label %57 [
    i32 92, label %62
    i32 13, label %62
  ]

62:                                               ; preds = %57, %57
  %63 = icmp eq i32 %60, 92
  %64 = select i1 %63, i32 1, i32 1025
  br label %65

65:                                               ; preds = %65, %62
  %66 = phi i32 [ 0, %62 ], [ %69, %65 ]
  %67 = getelementptr i32, ptr %56, i32 %66
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %66, 1
  switch i32 %68, label %65 [
    i32 92, label %70
    i32 14, label %70
  ]

70:                                               ; preds = %65, %65
  %71 = icmp eq i32 %68, 92
  %72 = or i32 %64, 2048
  %73 = select i1 %71, i32 %64, i32 %72
  %74 = trunc i32 %73 to i16
  %75 = load ptr, ptr %0, align 4
  %76 = getelementptr inbounds %struct.mdio_device, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.mdio_device, ptr %75, i32 0, i32 6
  %79 = load i32, ptr %78, align 8
  %80 = tail call i32 @mdiobus_write(ptr noundef %77, i32 noundef %79, i32 noundef 1074200592, i16 noundef zeroext %74) #8
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %99, label %82

82:                                               ; preds = %70
  %83 = load ptr, ptr %0, align 4
  %84 = getelementptr inbounds %struct.mdio_device, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.mdio_device, ptr %83, i32 0, i32 6
  %87 = load i32, ptr %86, align 8
  %88 = tail call i32 @mdiobus_read(ptr noundef %85, i32 noundef %87, i32 noundef 1074200576) #8
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %82
  %91 = trunc i32 %88 to i16
  %92 = or i16 %91, 4608
  %93 = load ptr, ptr %0, align 4
  %94 = getelementptr inbounds %struct.mdio_device, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.mdio_device, ptr %93, i32 0, i32 6
  %97 = load i32, ptr %96, align 8
  %98 = tail call i32 @mdiobus_write(ptr noundef %95, i32 noundef %97, i32 noundef 1074200576, i16 noundef zeroext %92) #8
  br label %99

99:                                               ; preds = %90, %82, %70, %43, %9
  %100 = phi i32 [ %98, %90 ], [ %80, %70 ], [ %88, %82 ], [ %53, %43 ], [ %17, %9 ]
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xpcs_link_up(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr i8, ptr %0, i32 -8
  switch i32 %2, label %94 [
    i32 28, label %7
    i32 4, label %73
  ]

7:                                                ; preds = %5
  switch i32 %3, label %94 [
    i32 10, label %13
    i32 100, label %8
    i32 1000, label %9
    i32 2500, label %10
    i32 5000, label %11
    i32 10000, label %12
  ]

8:                                                ; preds = %7
  br label %13

9:                                                ; preds = %7
  br label %13

10:                                               ; preds = %7
  br label %13

11:                                               ; preds = %7
  br label %13

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12, %11, %10, %9, %8, %7
  %14 = phi i32 [ 8512, %12 ], [ 8480, %11 ], [ 288, %10 ], [ 320, %9 ], [ 8448, %8 ], [ 256, %7 ]
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.mdio_device, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.mdio_device, ptr %15, i32 0, i32 6
  %19 = load i32, ptr %18, align 8
  %20 = tail call i32 @mdiobus_read(ptr noundef %17, i32 noundef %19, i32 noundef 1073971200) #8
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %69, label %22

22:                                               ; preds = %13
  %23 = trunc i32 %20 to i16
  %24 = or i16 %23, 512
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr inbounds %struct.mdio_device, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.mdio_device, ptr %25, i32 0, i32 6
  %29 = load i32, ptr %28, align 8
  %30 = tail call i32 @mdiobus_write(ptr noundef %27, i32 noundef %29, i32 noundef 1073971200, i16 noundef zeroext %24) #8
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %69, label %32

32:                                               ; preds = %22
  %33 = load ptr, ptr %6, align 4
  %34 = getelementptr inbounds %struct.mdio_device, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.mdio_device, ptr %33, i32 0, i32 6
  %37 = load i32, ptr %36, align 8
  %38 = tail call i32 @mdiobus_read(ptr noundef %35, i32 noundef %37, i32 noundef 1075773440) #8
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %69, label %40

40:                                               ; preds = %32
  %41 = and i32 %38, 56991
  %42 = or i32 %41, %14
  %43 = trunc i32 %42 to i16
  %44 = load ptr, ptr %6, align 4
  %45 = getelementptr inbounds %struct.mdio_device, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.mdio_device, ptr %44, i32 0, i32 6
  %48 = load i32, ptr %47, align 8
  %49 = tail call i32 @mdiobus_write(ptr noundef %46, i32 noundef %48, i32 noundef 1075773440, i16 noundef zeroext %43) #8
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %40
  %52 = load ptr, ptr %6, align 4
  %53 = getelementptr inbounds %struct.mdio_device, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.mdio_device, ptr %52, i32 0, i32 6
  %56 = load i32, ptr %55, align 8
  %57 = tail call i32 @mdiobus_read(ptr noundef %54, i32 noundef %56, i32 noundef 1073971200) #8
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %51
  %60 = trunc i32 %57 to i16
  %61 = or i16 %60, 1024
  %62 = load ptr, ptr %6, align 4
  %63 = getelementptr inbounds %struct.mdio_device, ptr %62, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.mdio_device, ptr %62, i32 0, i32 6
  %66 = load i32, ptr %65, align 8
  %67 = tail call i32 @mdiobus_write(ptr noundef %64, i32 noundef %66, i32 noundef 1073971200, i16 noundef zeroext %61) #8
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %59, %51, %40, %32, %22, %13
  %70 = phi i32 [ %20, %13 ], [ %30, %22 ], [ %38, %32 ], [ %49, %40 ], [ %57, %51 ], [ %67, %59 ]
  %71 = inttoptr i32 %70 to ptr
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.xpcs_config_usxgmii, ptr noundef %71) #9
  br label %94

73:                                               ; preds = %5
  %74 = icmp eq i32 %1, 2
  br i1 %74, label %94, label %75

75:                                               ; preds = %73
  switch i32 %3, label %94 [
    i32 1000, label %78
    i32 100, label %76
    i32 10, label %77
  ]

76:                                               ; preds = %75
  br label %78

77:                                               ; preds = %75
  br label %78

78:                                               ; preds = %77, %76, %75
  %79 = phi i32 [ 0, %77 ], [ 8192, %76 ], [ 64, %75 ]
  %80 = icmp eq i32 %4, 1
  %81 = or i32 %79, 256
  %82 = select i1 %80, i32 %81, i32 %79
  %83 = trunc i32 %82 to i16
  %84 = load ptr, ptr %6, align 4
  %85 = getelementptr inbounds %struct.mdio_device, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.mdio_device, ptr %84, i32 0, i32 6
  %88 = load i32, ptr %87, align 8
  %89 = tail call i32 @mdiobus_write(ptr noundef %86, i32 noundef %88, i32 noundef 1075773440, i16 noundef zeroext %83) #8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %78
  %92 = inttoptr i32 %89 to ptr
  %93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xpcs_link_up_sgmii, ptr noundef nonnull %92) #9
  br label %94

94:                                               ; preds = %91, %78, %75, %73, %69, %59, %7, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xpcs_create(ptr noundef %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 16) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %152, label %6

6:                                                ; preds = %2
  store ptr %0, ptr %4, align 8
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 @mdiobus_read(ptr noundef %8, i32 noundef %10, i32 noundef 1073938434) #8
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %149, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr %7, align 8
  %15 = load i32, ptr %9, align 8
  %16 = tail call i32 @mdiobus_read(ptr noundef %14, i32 noundef %15, i32 noundef 1073938435) #8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %149, label %18

18:                                               ; preds = %13
  %19 = shl i32 %11, 16
  %20 = or i32 %16, %19
  switch i32 %20, label %35 [
    i32 0, label %21
    i32 -1, label %21
  ]

21:                                               ; preds = %18, %18
  %22 = load ptr, ptr %7, align 8
  %23 = load i32, ptr %9, align 8
  %24 = tail call i32 @mdiobus_read(ptr noundef %22, i32 noundef %23, i32 noundef 1075773442) #8
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %149, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %7, align 8
  %28 = load i32, ptr %9, align 8
  %29 = tail call i32 @mdiobus_read(ptr noundef %27, i32 noundef %28, i32 noundef 1075773443) #8
  %30 = icmp slt i32 %29, 0
  %31 = shl i32 %24, 16
  %32 = or i32 %29, %31
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %30, i1 true, i1 %33
  br i1 %34, label %149, label %35

35:                                               ; preds = %26, %18
  %36 = phi i32 [ %20, %18 ], [ %32, %26 ]
  switch i32 %36, label %149 [
    i32 2039926480, label %39
    i32 16, label %37
    i32 32, label %38
  ]

37:                                               ; preds = %35
  br label %39

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %38, %37, %35
  %40 = phi i32 [ 0, %35 ], [ 1, %37 ], [ 2, %38 ]
  %41 = phi ptr [ @xpcs_id_list, %35 ], [ getelementptr inbounds ([3 x %struct.xpcs_id], ptr @xpcs_id_list, i32 0, i32 1), %37 ], [ getelementptr inbounds ([3 x %struct.xpcs_id], ptr @xpcs_id_list, i32 0, i32 2), %38 ]
  %42 = getelementptr inbounds %struct.dw_xpcs, ptr %4, i32 0, i32 1
  store ptr %41, ptr %42, align 4
  %43 = getelementptr [3 x %struct.xpcs_id], ptr @xpcs_id_list, i32 0, i32 %40, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr %struct.xpcs_compat, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %39
  %49 = getelementptr %struct.xpcs_compat, ptr %44, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  br label %54

51:                                               ; preds = %54
  %52 = add nuw nsw i32 %55, 1
  %53 = icmp eq i32 %52, %46
  br i1 %53, label %59, label %54

54:                                               ; preds = %51, %48
  %55 = phi i32 [ 0, %48 ], [ %52, %51 ]
  %56 = getelementptr i32, ptr %50, i32 %55
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, %1
  br i1 %58, label %119, label %51

59:                                               ; preds = %51, %39
  %60 = getelementptr %struct.xpcs_compat, ptr %44, i32 1, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = getelementptr %struct.xpcs_compat, ptr %44, i32 1, i32 1
  %65 = load ptr, ptr %64, align 4
  br label %66

66:                                               ; preds = %71, %63
  %67 = phi i32 [ 0, %63 ], [ %72, %71 ]
  %68 = getelementptr i32, ptr %65, i32 %67
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, %1
  br i1 %70, label %119, label %71

71:                                               ; preds = %66
  %72 = add nuw nsw i32 %67, 1
  %73 = icmp eq i32 %72, %61
  br i1 %73, label %74, label %66

74:                                               ; preds = %71, %59
  %75 = getelementptr %struct.xpcs_compat, ptr %44, i32 2, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = getelementptr %struct.xpcs_compat, ptr %44, i32 2, i32 1
  %80 = load ptr, ptr %79, align 4
  br label %81

81:                                               ; preds = %86, %78
  %82 = phi i32 [ 0, %78 ], [ %87, %86 ]
  %83 = getelementptr i32, ptr %80, i32 %82
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, %1
  br i1 %85, label %119, label %86

86:                                               ; preds = %81
  %87 = add nuw nsw i32 %82, 1
  %88 = icmp eq i32 %87, %76
  br i1 %88, label %89, label %81

89:                                               ; preds = %86, %74
  %90 = getelementptr %struct.xpcs_compat, ptr %44, i32 3, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = getelementptr %struct.xpcs_compat, ptr %44, i32 3, i32 1
  %95 = load ptr, ptr %94, align 4
  br label %96

96:                                               ; preds = %101, %93
  %97 = phi i32 [ 0, %93 ], [ %102, %101 ]
  %98 = getelementptr i32, ptr %95, i32 %97
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, %1
  br i1 %100, label %119, label %101

101:                                              ; preds = %96
  %102 = add nuw nsw i32 %97, 1
  %103 = icmp eq i32 %102, %91
  br i1 %103, label %104, label %96

104:                                              ; preds = %101, %89
  %105 = getelementptr %struct.xpcs_compat, ptr %44, i32 4, i32 2
  %106 = load i32, ptr %105, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %149

108:                                              ; preds = %104
  %109 = getelementptr %struct.xpcs_compat, ptr %44, i32 4, i32 1
  %110 = load ptr, ptr %109, align 4
  br label %111

111:                                              ; preds = %116, %108
  %112 = phi i32 [ 0, %108 ], [ %117, %116 ]
  %113 = getelementptr i32, ptr %110, i32 %112
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, %1
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = add nuw nsw i32 %112, 1
  %118 = icmp eq i32 %117, %106
  br i1 %118, label %149, label %111

119:                                              ; preds = %111, %96, %81, %66, %54
  %120 = phi i32 [ 4, %111 ], [ 3, %96 ], [ 2, %81 ], [ 1, %66 ], [ 0, %54 ]
  %121 = getelementptr %struct.xpcs_compat, ptr %44, i32 %120
  %122 = icmp eq ptr %121, null
  br i1 %122, label %149, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.dw_xpcs, ptr %4, i32 0, i32 2
  store ptr @xpcs_phylink_ops, ptr %124, align 8
  %125 = getelementptr inbounds %struct.dw_xpcs, ptr %4, i32 0, i32 2, i32 1
  store i8 1, ptr %125, align 4
  %126 = getelementptr %struct.xpcs_compat, ptr %44, i32 %120, i32 3
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, -1
  %129 = icmp ult i32 %128, 3
  br i1 %129, label %130, label %149

130:                                              ; preds = %123
  %131 = getelementptr inbounds [3 x i32], ptr @switch.table.xpcs_get_state, i32 0, i32 %128
  %132 = load i32, ptr %131, align 4
  %133 = load ptr, ptr %7, align 8
  %134 = load i32, ptr %9, align 8
  %135 = tail call i32 @mdiobus_write(ptr noundef %133, i32 noundef %134, i32 noundef %132, i16 noundef zeroext -32768) #8
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %149, label %137

137:                                              ; preds = %146, %130
  %138 = phi i32 [ %147, %146 ], [ 12, %130 ]
  tail call void @msleep(i32 noundef 50) #8
  %139 = load ptr, ptr %7, align 8
  %140 = load i32, ptr %9, align 8
  %141 = tail call i32 @mdiobus_read(ptr noundef %139, i32 noundef %140, i32 noundef %132) #8
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %137
  %144 = and i32 %141, 32768
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %143
  %147 = add nsw i32 %138, -1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %137

149:                                              ; preds = %146, %137, %130, %123, %119, %116, %104, %35, %26, %21, %13, %6
  %150 = phi i32 [ -19, %119 ], [ -19, %104 ], [ %135, %130 ], [ -1, %123 ], [ -19, %6 ], [ -19, %13 ], [ -19, %21 ], [ -19, %26 ], [ -19, %35 ], [ -110, %146 ], [ %141, %137 ], [ -19, %116 ]
  tail call void @kfree(ptr noundef nonnull %4) #8
  %151 = inttoptr i32 %150 to ptr
  br label %152

152:                                              ; preds = %149, %143, %2
  %153 = phi ptr [ %151, %149 ], [ inttoptr (i32 -12 to ptr), %2 ], [ %4, %143 ]
  ret ptr %153
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xpcs_destroy(ptr noundef %0) #2 {
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nxp_sja1105_sgmii_pma_config(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nxp_sja1110_sgmii_pma_config(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nxp_sja1110_2500basex_pma_config(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xpcs_get_state(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.xpcs_id, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.xpcs_compat, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = getelementptr %struct.xpcs_compat, ptr %9, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  br label %19

16:                                               ; preds = %19
  %17 = add nuw nsw i32 %20, 1
  %18 = icmp eq i32 %17, %11
  br i1 %18, label %24, label %19

19:                                               ; preds = %16, %13
  %20 = phi i32 [ 0, %13 ], [ %17, %16 ]
  %21 = getelementptr i32, ptr %15, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %7
  br i1 %23, label %84, label %16

24:                                               ; preds = %16, %2
  %25 = getelementptr %struct.xpcs_compat, ptr %9, i32 1, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = getelementptr %struct.xpcs_compat, ptr %9, i32 1, i32 1
  %30 = load ptr, ptr %29, align 4
  br label %31

31:                                               ; preds = %36, %28
  %32 = phi i32 [ 0, %28 ], [ %37, %36 ]
  %33 = getelementptr i32, ptr %30, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, %7
  br i1 %35, label %84, label %36

36:                                               ; preds = %31
  %37 = add nuw nsw i32 %32, 1
  %38 = icmp eq i32 %37, %26
  br i1 %38, label %39, label %31

39:                                               ; preds = %36, %24
  %40 = getelementptr %struct.xpcs_compat, ptr %9, i32 2, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = getelementptr %struct.xpcs_compat, ptr %9, i32 2, i32 1
  %45 = load ptr, ptr %44, align 4
  br label %46

46:                                               ; preds = %51, %43
  %47 = phi i32 [ 0, %43 ], [ %52, %51 ]
  %48 = getelementptr i32, ptr %45, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, %7
  br i1 %50, label %84, label %51

51:                                               ; preds = %46
  %52 = add nuw nsw i32 %47, 1
  %53 = icmp eq i32 %52, %41
  br i1 %53, label %54, label %46

54:                                               ; preds = %51, %39
  %55 = getelementptr %struct.xpcs_compat, ptr %9, i32 3, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = getelementptr %struct.xpcs_compat, ptr %9, i32 3, i32 1
  %60 = load ptr, ptr %59, align 4
  br label %61

61:                                               ; preds = %66, %58
  %62 = phi i32 [ 0, %58 ], [ %67, %66 ]
  %63 = getelementptr i32, ptr %60, i32 %62
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, %7
  br i1 %65, label %84, label %66

66:                                               ; preds = %61
  %67 = add nuw nsw i32 %62, 1
  %68 = icmp eq i32 %67, %56
  br i1 %68, label %69, label %61

69:                                               ; preds = %66, %54
  %70 = getelementptr %struct.xpcs_compat, ptr %9, i32 4, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %443

73:                                               ; preds = %69
  %74 = getelementptr %struct.xpcs_compat, ptr %9, i32 4, i32 1
  %75 = load ptr, ptr %74, align 4
  br label %76

76:                                               ; preds = %81, %73
  %77 = phi i32 [ 0, %73 ], [ %82, %81 ]
  %78 = getelementptr i32, ptr %75, i32 %77
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, %7
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = add nuw nsw i32 %77, 1
  %83 = icmp eq i32 %82, %71
  br i1 %83, label %443, label %76

84:                                               ; preds = %76, %61, %46, %31, %19
  %85 = phi i32 [ 4, %76 ], [ 3, %61 ], [ 2, %46 ], [ 1, %31 ], [ 0, %19 ]
  %86 = getelementptr %struct.xpcs_compat, ptr %9, i32 %85
  %87 = icmp eq ptr %86, null
  br i1 %87, label %443, label %88

88:                                               ; preds = %84
  %89 = getelementptr %struct.xpcs_compat, ptr %9, i32 %85, i32 3
  %90 = load i32, ptr %89, align 4
  switch i32 %90, label %443 [
    i32 1, label %91
    i32 2, label %417
  ]

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 6
  %93 = load i8, ptr %92, align 4
  %94 = load ptr, ptr %3, align 4
  %95 = getelementptr inbounds %struct.mdio_device, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.mdio_device, ptr %94, i32 0, i32 6
  %98 = load i32, ptr %97, align 8
  %99 = tail call i32 @mdiobus_read(ptr noundef %96, i32 noundef %98, i32 noundef 1073938433) #8
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %121, label %101

101:                                              ; preds = %91
  %102 = and i8 %93, 2
  %103 = icmp eq i8 %102, 0
  %104 = and i32 %99, 4
  %105 = icmp ne i32 %104, 0
  br i1 %103, label %118, label %106

106:                                              ; preds = %101
  %107 = load ptr, ptr %3, align 4
  %108 = getelementptr inbounds %struct.mdio_device, ptr %107, i32 0, i32 1
  %109 = load ptr, ptr %108, align 8
  %110 = getelementptr inbounds %struct.mdio_device, ptr %107, i32 0, i32 6
  %111 = load i32, ptr %110, align 8
  %112 = tail call i32 @mdiobus_read(ptr noundef %109, i32 noundef %111, i32 noundef 1074200577) #8
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %106
  %115 = and i32 %112, 4
  %116 = icmp ne i32 %115, 0
  %117 = select i1 %116, i1 %105, i1 false
  br label %118

118:                                              ; preds = %114, %101
  %119 = phi i1 [ %105, %101 ], [ %117, %114 ]
  %120 = zext i1 %119 to i32
  br label %121

121:                                              ; preds = %118, %106, %91
  %122 = phi i32 [ %120, %118 ], [ %99, %91 ], [ %112, %106 ]
  %123 = icmp sgt i32 %122, 0
  %124 = zext i1 %123 to i8
  %125 = load i8, ptr %92, align 4
  %126 = and i8 %125, -2
  %127 = or i8 %126, %124
  store i8 %127, ptr %92, align 4
  %128 = load ptr, ptr %3, align 4
  %129 = getelementptr inbounds %struct.mdio_device, ptr %128, i32 0, i32 1
  %130 = load ptr, ptr %129, align 8
  %131 = getelementptr inbounds %struct.mdio_device, ptr %128, i32 0, i32 6
  %132 = load i32, ptr %131, align 8
  %133 = tail call i32 @mdiobus_read(ptr noundef %130, i32 noundef %132, i32 noundef 1073938433) #8
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %218, label %135

135:                                              ; preds = %121
  %136 = and i32 %133, 128
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %135
  %139 = load i8, ptr %92, align 4
  %140 = and i8 %139, 1
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %218, label %215

142:                                              ; preds = %135
  %143 = load ptr, ptr %3, align 4
  %144 = getelementptr inbounds %struct.mdio_device, ptr %143, i32 0, i32 1
  %145 = load ptr, ptr %144, align 8
  %146 = getelementptr inbounds %struct.mdio_device, ptr %143, i32 0, i32 6
  %147 = load i32, ptr %146, align 8
  %148 = tail call i32 @mdiobus_read(ptr noundef %145, i32 noundef %147, i32 noundef 1073938440) #8
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %218, label %150

150:                                              ; preds = %142
  %151 = and i32 %148, 1024
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %150
  %154 = load i8, ptr %92, align 4
  %155 = and i8 %154, 1
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %158, ptr noundef nonnull @.str.5) #9
  br label %159

159:                                              ; preds = %157, %153, %150
  %160 = and i32 %148, 2048
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %159
  %163 = load i8, ptr %92, align 4
  %164 = and i8 %163, 1
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %162
  %167 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %167, ptr noundef nonnull @.str.6) #9
  br label %168

168:                                              ; preds = %166, %162, %159
  %169 = load ptr, ptr %3, align 4
  %170 = getelementptr inbounds %struct.mdio_device, ptr %169, i32 0, i32 1
  %171 = load ptr, ptr %170, align 8
  %172 = getelementptr inbounds %struct.mdio_device, ptr %169, i32 0, i32 6
  %173 = load i32, ptr %172, align 8
  %174 = tail call i32 @mdiobus_read(ptr noundef %171, i32 noundef %173, i32 noundef 1073971216) #8
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %218, label %176

176:                                              ; preds = %168
  %177 = and i32 %174, 96
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %176
  %180 = load i8, ptr %92, align 4
  %181 = and i8 %180, 1
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %218, label %215

183:                                              ; preds = %176
  %184 = load ptr, ptr %3, align 4
  %185 = getelementptr inbounds %struct.mdio_device, ptr %184, i32 0, i32 1
  %186 = load ptr, ptr %185, align 8
  %187 = getelementptr inbounds %struct.mdio_device, ptr %184, i32 0, i32 6
  %188 = load i32, ptr %187, align 8
  %189 = tail call i32 @mdiobus_read(ptr noundef %186, i32 noundef %188, i32 noundef 1073938464) #8
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %218, label %191

191:                                              ; preds = %183
  %192 = and i32 %189, 1
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load i8, ptr %92, align 4
  %196 = and i8 %195, 1
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %194
  %199 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %199, ptr noundef nonnull @.str.8) #9
  br label %200

200:                                              ; preds = %198, %194, %191
  %201 = load ptr, ptr %3, align 4
  %202 = getelementptr inbounds %struct.mdio_device, ptr %201, i32 0, i32 1
  %203 = load ptr, ptr %202, align 8
  %204 = getelementptr inbounds %struct.mdio_device, ptr %201, i32 0, i32 6
  %205 = load i32, ptr %204, align 8
  %206 = tail call i32 @mdiobus_read(ptr noundef %203, i32 noundef %205, i32 noundef 1073938465) #8
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %218, label %208

208:                                              ; preds = %200
  %209 = and i32 %206, 255
  %210 = icmp eq i32 %209, 0
  %211 = load i8, ptr %92, align 4
  br i1 %210, label %247, label %212

212:                                              ; preds = %208
  %213 = and i8 %211, 1
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %212, %179, %138
  %216 = phi ptr [ @.str.4, %138 ], [ @.str.7, %179 ], [ @.str.9, %212 ]
  %217 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %217, ptr noundef nonnull %216) #9
  br label %218

218:                                              ; preds = %215, %212, %200, %183, %179, %168, %142, %138, %121
  %219 = load i32, ptr %89, align 4
  %220 = add i32 %219, -1
  %221 = icmp ult i32 %220, 3
  br i1 %221, label %222, label %413

222:                                              ; preds = %218
  %223 = getelementptr inbounds [3 x i32], ptr @switch.table.xpcs_get_state, i32 0, i32 %220
  %224 = load i32, ptr %223, align 4
  %225 = load ptr, ptr %3, align 4
  %226 = getelementptr inbounds %struct.mdio_device, ptr %225, i32 0, i32 1
  %227 = load ptr, ptr %226, align 8
  %228 = getelementptr inbounds %struct.mdio_device, ptr %225, i32 0, i32 6
  %229 = load i32, ptr %228, align 8
  %230 = tail call i32 @mdiobus_write(ptr noundef %227, i32 noundef %229, i32 noundef %224, i16 noundef zeroext -32768) #8
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %413, label %232

232:                                              ; preds = %244, %222
  %233 = phi i32 [ %245, %244 ], [ 12, %222 ]
  tail call void @msleep(i32 noundef 50) #8
  %234 = load ptr, ptr %3, align 4
  %235 = getelementptr inbounds %struct.mdio_device, ptr %234, i32 0, i32 1
  %236 = load ptr, ptr %235, align 8
  %237 = getelementptr inbounds %struct.mdio_device, ptr %234, i32 0, i32 6
  %238 = load i32, ptr %237, align 8
  %239 = tail call i32 @mdiobus_read(ptr noundef %236, i32 noundef %238, i32 noundef %224) #8
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %413, label %241

241:                                              ; preds = %232
  %242 = and i32 %239, 32768
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %407, label %244

244:                                              ; preds = %241
  %245 = add nsw i32 %233, -1
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %413, label %232

247:                                              ; preds = %208
  %248 = and i8 %211, 2
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %373, label %250

250:                                              ; preds = %247
  %251 = load ptr, ptr %3, align 4
  %252 = getelementptr inbounds %struct.mdio_device, ptr %251, i32 0, i32 1
  %253 = load ptr, ptr %252, align 8
  %254 = getelementptr inbounds %struct.mdio_device, ptr %251, i32 0, i32 6
  %255 = load i32, ptr %254, align 8
  %256 = tail call i32 @mdiobus_read(ptr noundef %253, i32 noundef %255, i32 noundef 1074200577) #8
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %272, label %258

258:                                              ; preds = %250
  %259 = and i32 %256, 32
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %373, label %261

261:                                              ; preds = %258
  %262 = load ptr, ptr %3, align 4
  %263 = getelementptr inbounds %struct.mdio_device, ptr %262, i32 0, i32 1
  %264 = load ptr, ptr %263, align 8
  %265 = getelementptr inbounds %struct.mdio_device, ptr %262, i32 0, i32 6
  %266 = load i32, ptr %265, align 8
  %267 = tail call i32 @mdiobus_read(ptr noundef %264, i32 noundef %266, i32 noundef 1074200595) #8
  %268 = and i32 %267, -2147483647
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %261
  %271 = tail call fastcc i32 @xpcs_config_aneg_c73(ptr noundef %3, ptr noundef nonnull %86) #8
  br label %373

272:                                              ; preds = %261, %250
  %273 = load i8, ptr %92, align 4
  %274 = or i8 %273, 4
  store i8 %274, ptr %92, align 4
  %275 = load ptr, ptr %3, align 4
  %276 = getelementptr inbounds %struct.mdio_device, ptr %275, i32 0, i32 1
  %277 = load ptr, ptr %276, align 8
  %278 = getelementptr inbounds %struct.mdio_device, ptr %275, i32 0, i32 6
  %279 = load i32, ptr %278, align 8
  %280 = tail call i32 @mdiobus_read(ptr noundef %277, i32 noundef %279, i32 noundef 1074200577) #8
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %352, label %282

282:                                              ; preds = %272
  %283 = and i32 %280, 1
  %284 = icmp eq i32 %283, 0
  %285 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 1
  %286 = load i32, ptr %285, align 4
  br i1 %284, label %287, label %289

287:                                              ; preds = %282
  %288 = and i32 %286, -65
  store i32 %288, ptr %285, align 4
  br label %352

289:                                              ; preds = %282
  %290 = or i32 %286, 64
  store i32 %290, ptr %285, align 4
  %291 = load ptr, ptr %3, align 4
  %292 = getelementptr inbounds %struct.mdio_device, ptr %291, i32 0, i32 1
  %293 = load ptr, ptr %292, align 8
  %294 = getelementptr inbounds %struct.mdio_device, ptr %291, i32 0, i32 6
  %295 = load i32, ptr %294, align 8
  %296 = tail call i32 @mdiobus_read(ptr noundef %293, i32 noundef %295, i32 noundef 1074200597) #8
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %352, label %298

298:                                              ; preds = %289
  %299 = and i32 %296, 1
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %298
  %302 = load i32, ptr %285, align 4
  %303 = or i32 %302, 32768
  store i32 %303, ptr %285, align 4
  br label %304

304:                                              ; preds = %301, %298
  %305 = load ptr, ptr %3, align 4
  %306 = getelementptr inbounds %struct.mdio_device, ptr %305, i32 0, i32 1
  %307 = load ptr, ptr %306, align 8
  %308 = getelementptr inbounds %struct.mdio_device, ptr %305, i32 0, i32 6
  %309 = load i32, ptr %308, align 8
  %310 = tail call i32 @mdiobus_read(ptr noundef %307, i32 noundef %309, i32 noundef 1074200596) #8
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %352, label %312

312:                                              ; preds = %304
  %313 = and i32 %310, 32
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %318, label %315

315:                                              ; preds = %312
  %316 = load i32, ptr %285, align 4
  %317 = or i32 %316, 131072
  store i32 %317, ptr %285, align 4
  br label %318

318:                                              ; preds = %315, %312
  %319 = and i32 %310, 64
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %318
  %322 = load i32, ptr %285, align 4
  %323 = or i32 %322, 262144
  store i32 %323, ptr %285, align 4
  br label %324

324:                                              ; preds = %321, %318
  %325 = and i32 %310, 128
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %330, label %327

327:                                              ; preds = %324
  %328 = load i32, ptr %285, align 4
  %329 = or i32 %328, 524288
  store i32 %329, ptr %285, align 4
  br label %330

330:                                              ; preds = %327, %324
  %331 = load ptr, ptr %3, align 4
  %332 = getelementptr inbounds %struct.mdio_device, ptr %331, i32 0, i32 1
  %333 = load ptr, ptr %332, align 8
  %334 = getelementptr inbounds %struct.mdio_device, ptr %331, i32 0, i32 6
  %335 = load i32, ptr %334, align 8
  %336 = tail call i32 @mdiobus_read(ptr noundef %333, i32 noundef %335, i32 noundef 1074200595) #8
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %352, label %338

338:                                              ; preds = %330
  %339 = and i32 %336, 1024
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %344, label %341

341:                                              ; preds = %338
  %342 = load i32, ptr %285, align 4
  %343 = or i32 %342, 8192
  store i32 %343, ptr %285, align 4
  br label %344

344:                                              ; preds = %341, %338
  %345 = and i32 %336, 2048
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %350, label %347

347:                                              ; preds = %344
  %348 = load i32, ptr %285, align 4
  %349 = or i32 %348, 16384
  store i32 %349, ptr %285, align 4
  br label %350

350:                                              ; preds = %347, %344
  %351 = tail call i32 @__bitmap_and(ptr noundef %285, ptr noundef %285, ptr noundef %1, i32 noundef 92) #8
  br label %352

352:                                              ; preds = %350, %330, %304, %289, %287, %272
  %353 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 1
  %354 = load volatile i32, ptr %353, align 4
  %355 = and i32 %354, 131072
  %356 = icmp eq i32 %355, 0
  %357 = select i1 %356, i32 -1, i32 1000
  %358 = load volatile i32, ptr %353, align 4
  %359 = and i32 %358, 32768
  %360 = icmp eq i32 %359, 0
  %361 = select i1 %360, i32 %357, i32 2500
  %362 = load volatile i32, ptr %353, align 4
  %363 = and i32 %362, 262144
  %364 = icmp eq i32 %363, 0
  %365 = load volatile i32, ptr %353, align 4
  %366 = and i32 %365, 524288
  %367 = icmp eq i32 %366, 0
  %368 = select i1 %367, i1 %364, i1 false
  %369 = select i1 %368, i32 %361, i32 10000
  %370 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 5
  store i32 3, ptr %370, align 4
  %371 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 3
  store i32 %369, ptr %371, align 4
  %372 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 4
  store i32 1, ptr %372, align 4
  br label %443

373:                                              ; preds = %270, %258, %247
  %374 = load i8, ptr %92, align 4
  %375 = and i8 %374, 2
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %379, label %377

377:                                              ; preds = %373
  %378 = and i8 %374, -2
  store i8 %378, ptr %92, align 4
  br label %443

379:                                              ; preds = %373
  %380 = and i8 %374, 1
  %381 = icmp eq i8 %380, 0
  br i1 %381, label %443, label %382

382:                                              ; preds = %379
  %383 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 5
  store i32 3, ptr %383, align 4
  %384 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 4
  store i32 1, ptr %384, align 4
  %385 = load i32, ptr %6, align 4
  switch i32 %385, label %403 [
    i32 29, label %404
    i32 16, label %386
  ]

386:                                              ; preds = %382
  %387 = tail call i32 @_find_next_bit_le(ptr noundef %1, i32 noundef 92, i32 noundef 0) #8
  %388 = icmp slt i32 %387, 92
  br i1 %388, label %389, label %404

389:                                              ; preds = %398, %386
  %390 = phi i32 [ %401, %398 ], [ %387, %386 ]
  %391 = phi i32 [ %399, %398 ], [ -1, %386 ]
  switch i32 %390, label %398 [
    i32 31, label %395
    i32 32, label %395
    i32 33, label %395
    i32 23, label %392
    i32 24, label %392
    i32 25, label %392
    i32 26, label %392
    i32 34, label %393
    i32 35, label %393
    i32 40, label %393
    i32 52, label %393
    i32 53, label %393
    i32 54, label %393
    i32 55, label %393
    i32 56, label %393
    i32 36, label %394
    i32 37, label %394
    i32 38, label %394
    i32 39, label %394
    i32 57, label %394
    i32 58, label %394
    i32 59, label %394
    i32 60, label %394
    i32 61, label %394
  ]

392:                                              ; preds = %389, %389, %389, %389
  br label %395

393:                                              ; preds = %389, %389, %389, %389, %389, %389, %389, %389
  br label %395

394:                                              ; preds = %389, %389, %389, %389, %389, %389, %389, %389, %389
  br label %395

395:                                              ; preds = %394, %393, %392, %389, %389, %389
  %396 = phi i32 [ 100000, %394 ], [ 50000, %393 ], [ 40000, %392 ], [ 25000, %389 ], [ 25000, %389 ], [ 25000, %389 ]
  %397 = tail call i32 @llvm.smax.i32(i32 %396, i32 %391) #8
  br label %398

398:                                              ; preds = %395, %389
  %399 = phi i32 [ %397, %395 ], [ %391, %389 ]
  %400 = add nsw i32 %390, 1
  %401 = tail call i32 @_find_next_bit_le(ptr noundef %1, i32 noundef 92, i32 noundef %400) #8
  %402 = icmp slt i32 %401, 92
  br i1 %402, label %389, label %404

403:                                              ; preds = %382
  br label %404

404:                                              ; preds = %403, %398, %386, %382
  %405 = phi i32 [ -1, %403 ], [ 10000, %382 ], [ -1, %386 ], [ %399, %398 ]
  %406 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 3
  store i32 %405, ptr %406, align 4
  br label %443

407:                                              ; preds = %241
  %408 = load i8, ptr %92, align 4
  %409 = and i8 %408, -2
  store i8 %409, ptr %92, align 4
  %410 = load i32, ptr %6, align 4
  %411 = tail call i32 @xpcs_do_config(ptr noundef %3, i32 noundef %410, i32 noundef 2) #8
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %443, label %413

413:                                              ; preds = %407, %244, %232, %222, %218
  %414 = phi i32 [ %411, %407 ], [ -1, %218 ], [ %230, %222 ], [ -110, %244 ], [ %239, %232 ]
  %415 = inttoptr i32 %414 to ptr
  %416 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %415) #9
  br label %443

417:                                              ; preds = %88
  %418 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 6
  %419 = load i8, ptr %418, align 4
  %420 = and i8 %419, -2
  store i8 %420, ptr %418, align 4
  %421 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 3
  store i32 -1, ptr %421, align 4
  %422 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 4
  store i32 255, ptr %422, align 4
  %423 = getelementptr inbounds %struct.phylink_link_state, ptr %1, i32 0, i32 5
  store i32 0, ptr %423, align 4
  %424 = load ptr, ptr %3, align 4
  %425 = getelementptr inbounds %struct.mdio_device, ptr %424, i32 0, i32 1
  %426 = load ptr, ptr %425, align 8
  %427 = getelementptr inbounds %struct.mdio_device, ptr %424, i32 0, i32 6
  %428 = load i32, ptr %427, align 8
  %429 = tail call i32 @mdiobus_read(ptr noundef %426, i32 noundef %428, i32 noundef 1075806210) #8
  %430 = and i32 %429, -2147483632
  %431 = icmp eq i32 %430, 16
  br i1 %431, label %432, label %443

432:                                              ; preds = %417
  %433 = load i8, ptr %418, align 4
  %434 = or i8 %433, 1
  store i8 %434, ptr %418, align 4
  %435 = lshr i32 %429, 2
  %436 = and i32 %435, 3
  %437 = icmp eq i32 %436, 1
  %438 = select i1 %437, i32 100, i32 10
  %439 = icmp eq i32 %436, 2
  %440 = select i1 %439, i32 1000, i32 %438
  store i32 %440, ptr %421, align 4
  %441 = lshr i32 %429, 1
  %442 = and i32 %441, 1
  store i32 %442, ptr %422, align 4
  br label %443

443:                                              ; preds = %432, %417, %413, %407, %404, %379, %377, %352, %88, %84, %81, %69
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xpcs_config(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3, i1 noundef zeroext %4) #2 {
  %6 = getelementptr i8, ptr %0, i32 -8
  %7 = tail call i32 @xpcs_do_config(ptr noundef %6, i32 noundef %2, i32 noundef %1)
  ret i32 %7
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
