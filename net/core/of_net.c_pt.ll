; ModuleID = '/llk/IR/net/core/of_net.c_pt.bc'
source_filename = "../net/core/of_net.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_phy_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_phy_mode\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_phy_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_mac_address:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_mac_address\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_mac_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_ethdev_address:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_ethdev_address\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_ethdev_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = private unnamed_addr constant [9 x i8] c"phy-mode\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"phy-connection-type\00", align 1
@__kstrtab_of_get_phy_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_phy_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_phy_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_phy_mode to i32), ptr @__kstrtab_of_get_phy_mode, ptr @__kstrtabns_of_get_phy_mode }, section "___ksymtab_gpl+of_get_phy_mode", align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"mac-address\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"local-mac-address\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@__kstrtab_of_get_mac_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_mac_address = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_mac_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_mac_address to i32), ptr @__kstrtab_of_get_mac_address, ptr @__kstrtabns_of_get_mac_address }, section "___ksymtab+of_get_mac_address", align 4
@__kstrtab_of_get_ethdev_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_ethdev_address = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_ethdev_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_ethdev_address to i32), ptr @__kstrtab_of_get_ethdev_address, ptr @__kstrtabns_of_get_ethdev_address }, section "___ksymtab+of_get_ethdev_address", align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"mii\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"gmii\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"sgmii\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"tbi\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"rev-mii\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"rmii\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"rev-rmii\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"rgmii\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"rgmii-id\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"rgmii-rxid\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"rgmii-txid\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"rtbi\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"smii\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"xgmii\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"xlgmii\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"moca\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"qsgmii\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"trgmii\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"1000base-x\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"2500base-x\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"5gbase-r\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"rxaui\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"xaui\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"10gbase-r\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"25gbase-r\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"usxgmii\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"10gbase-kr\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"100base-x\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_of_get_ethdev_address, ptr @__ksymtab_of_get_mac_address, ptr @__ksymtab_of_get_phy_mode], section "llvm.metadata"
@switch.table.of_get_phy_mode = private unnamed_addr constant [30 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.34, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_get_phy_mode(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !8
  store i32 0, ptr %1, align 4
  %4 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %3) #6
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %3) #6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %6, %2
  %10 = load ptr, ptr %3, align 4
  br label %11

11:                                               ; preds = %22, %9
  %12 = phi i32 [ 0, %9 ], [ %23, %22 ]
  %13 = icmp ult i32 %12, 30
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = getelementptr inbounds [30 x ptr], ptr @switch.table.of_get_phy_mode, i32 0, i32 %12
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi ptr [ %16, %14 ], [ @.str.35, %11 ]
  %19 = call i32 @strcasecmp(ptr noundef %10, ptr noundef nonnull %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 %12, ptr %1, align 4
  br label %25

22:                                               ; preds = %17
  %23 = add nuw nsw i32 %12, 1
  %24 = icmp eq i32 %23, 30
  br i1 %24, label %25, label %11

25:                                               ; preds = %22, %21, %6
  %26 = phi i32 [ 0, %21 ], [ %7, %6 ], [ -19, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_get_mac_address(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %98, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @of_find_property(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef null) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.property, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 6
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.property, ptr %6, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = getelementptr i8, ptr %14, i32 4
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = or i32 %15, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %1, ptr noundef align 1 dereferenceable(6) %14, i32 6, i1 false) #6
  br label %98

25:                                               ; preds = %18, %12, %8, %5
  %26 = tail call ptr @of_find_property(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, ptr noundef null) #6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %45, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.property, ptr %26, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 6
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.property, ptr %26, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = getelementptr i8, ptr %34, i32 4
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  %42 = or i32 %35, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %1, ptr noundef align 1 dereferenceable(6) %34, i32 6, i1 false) #6
  br label %98

45:                                               ; preds = %38, %32, %28, %25
  %46 = tail call ptr @of_find_property(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef null) #6
  %47 = icmp eq ptr %46, null
  br i1 %47, label %65, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.property, ptr %46, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 6
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.property, ptr %46, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = getelementptr i8, ptr %54, i32 4
  %60 = load i16, ptr %59, align 2
  %61 = zext i16 %60 to i32
  %62 = or i32 %55, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %1, ptr noundef align 1 dereferenceable(6) %54, i32 6, i1 false) #6
  br label %98

65:                                               ; preds = %58, %52, %48, %45
  %66 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.platform_device, ptr %66, i32 0, i32 3
  %70 = tail call i32 @nvmem_get_mac_address(ptr noundef %69, ptr noundef %1) #6
  tail call void @put_device(ptr noundef %69) #6
  br label %96

71:                                               ; preds = %65
  %72 = tail call ptr @of_nvmem_cell_get(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #6
  %73 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = ptrtoint ptr %72 to i32
  br label %96

76:                                               ; preds = %71
  %77 = call ptr @nvmem_cell_read(ptr noundef %72, ptr noundef nonnull %3) #6
  call void @nvmem_cell_put(ptr noundef %72) #6
  %78 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = ptrtoint ptr %77 to i32
  br label %96

81:                                               ; preds = %76
  %82 = load i32, ptr %3, align 4
  %83 = icmp eq i32 %82, 6
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load i32, ptr %77, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = getelementptr i8, ptr %77, i32 4
  %90 = load i16, ptr %89, align 2
  %91 = zext i16 %90 to i32
  %92 = or i32 %85, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88, %84, %81
  call void @kfree(ptr noundef %77) #6
  br label %96

95:                                               ; preds = %88
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %1, ptr noundef align 1 dereferenceable(6) %77, i32 6, i1 false) #6
  call void @kfree(ptr noundef %77) #6
  br label %96

96:                                               ; preds = %95, %94, %79, %74, %68
  %97 = phi i32 [ %70, %68 ], [ %75, %74 ], [ %80, %79 ], [ -22, %94 ], [ 0, %95 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %98

98:                                               ; preds = %96, %64, %44, %24, %2
  %99 = phi i32 [ %97, %96 ], [ -19, %2 ], [ 0, %24 ], [ 0, %44 ], [ 0, %64 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_get_ethdev_address(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  %4 = call i32 @of_get_mac_address(ptr noundef %0, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 6) #6
  br label %7

7:                                                ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #6
  ret i32 %4
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmem_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_cell_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }

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
!8 = !{!"auto-init"}
