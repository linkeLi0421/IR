; ModuleID = '/llk/IR/drivers/of/irq.c_pt.bc'
source_filename = "../drivers/of/irq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_of_parse_and_map:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_of_parse_and_map\22\09\09\09\09\09"
module asm "__kstrtabns_irq_of_parse_and_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_irq_find_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22of_irq_find_parent\22\09\09\09\09\09"
module asm "__kstrtabns_of_irq_find_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_irq_parse_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22of_irq_parse_raw\22\09\09\09\09\09"
module asm "__kstrtabns_of_irq_parse_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_irq_parse_one:\09\09\09\09\09"
module asm "\09.asciz \09\22of_irq_parse_one\22\09\09\09\09\09"
module asm "__kstrtabns_of_irq_parse_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_irq_to_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22of_irq_to_resource\22\09\09\09\09\09"
module asm "__kstrtabns_of_irq_to_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_irq_get:\09\09\09\09\09"
module asm "\09.asciz \09\22of_irq_get\22\09\09\09\09\09"
module asm "__kstrtabns_of_irq_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_irq_get_byname:\09\09\09\09\09"
module asm "\09.asciz \09\22of_irq_get_byname\22\09\09\09\09\09"
module asm "__kstrtabns_of_irq_get_byname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_irq_to_resource_table:\09\09\09\09\09"
module asm "\09.asciz \09\22of_irq_to_resource_table\22\09\09\09\09\09"
module asm "__kstrtabns_of_irq_to_resource_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_msi_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22of_msi_configure\22\09\09\09\09\09"
module asm "__kstrtabns_of_msi_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.of_intc_desc = type { %struct.list_head, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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

@__kstrtab_irq_of_parse_and_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_of_parse_and_map = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_of_parse_and_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_of_parse_and_map to i32), ptr @__kstrtab_irq_of_parse_and_map, ptr @__kstrtabns_irq_of_parse_and_map }, section "___ksymtab_gpl+irq_of_parse_and_map", align 4
@.str = private unnamed_addr constant [17 x i8] c"interrupt-parent\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@__kstrtab_of_irq_find_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_irq_find_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_of_irq_find_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_irq_find_parent to i32), ptr @__kstrtab_of_irq_find_parent, ptr @__kstrtabns_of_irq_find_parent }, section "___ksymtab_gpl+of_irq_find_parent", align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"drivers/of/irq.c\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"interrupt-controller\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"interrupt-map\00", align 1
@of_irq_imap_abusers = internal constant [8 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr null], align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"interrupt-map-mask\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"%pOF interrupt-map failed, using interrupt-controller\0A\00", align 1
@__kstrtab_of_irq_parse_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_irq_parse_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_of_irq_parse_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_irq_parse_raw to i32), ptr @__kstrtab_of_irq_parse_raw, ptr @__kstrtabns_of_irq_parse_raw }, section "___ksymtab_gpl+of_irq_parse_raw", align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"interrupts-extended\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@__kstrtab_of_irq_parse_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_irq_parse_one = external dso_local constant [0 x i8], align 1
@__ksymtab_of_irq_parse_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_irq_parse_one to i32), ptr @__kstrtab_of_irq_parse_one, ptr @__kstrtabns_of_irq_parse_one }, section "___ksymtab_gpl+of_irq_parse_one", align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"interrupt-names\00", align 1
@__kstrtab_of_irq_to_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_irq_to_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_of_irq_to_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_irq_to_resource to i32), ptr @__kstrtab_of_irq_to_resource, ptr @__kstrtabns_of_irq_to_resource }, section "___ksymtab_gpl+of_irq_to_resource", align 4
@__kstrtab_of_irq_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_irq_get = external dso_local constant [0 x i8], align 1
@__ksymtab_of_irq_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_irq_get to i32), ptr @__kstrtab_of_irq_get, ptr @__kstrtabns_of_irq_get }, section "___ksymtab_gpl+of_irq_get", align 4
@__kstrtab_of_irq_get_byname = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_irq_get_byname = external dso_local constant [0 x i8], align 1
@__ksymtab_of_irq_get_byname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_irq_get_byname to i32), ptr @__kstrtab_of_irq_get_byname, ptr @__kstrtabns_of_irq_get_byname }, section "___ksymtab_gpl+of_irq_get_byname", align 4
@__kstrtab_of_irq_to_resource_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_irq_to_resource_table = external dso_local constant [0 x i8], align 1
@__ksymtab_of_irq_to_resource_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_irq_to_resource_table to i32), ptr @__kstrtab_of_irq_to_resource_table, ptr @__kstrtabns_of_irq_to_resource_table }, section "___ksymtab_gpl+of_irq_to_resource_table", align 4
@.str.12 = private unnamed_addr constant [38 x i8] c"of_irq_init: no init function for %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"\013OF: of_irq_init: children remain, but no parents\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"msi-parent\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"#msi-cells\00", align 1
@__kstrtab_of_msi_configure = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_msi_configure = external dso_local constant [0 x i8], align 1
@__ksymtab_of_msi_configure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_msi_configure to i32), ptr @__kstrtab_of_msi_configure, ptr @__kstrtabns_of_msi_configure }, section "___ksymtab_gpl+of_msi_configure", align 4
@.str.16 = private unnamed_addr constant [25 x i8] c"CBEA,platform-spider-pic\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"sti,platform-spider-pic\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"realtek,rtl-intc\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"fsl,ls1021a-extirq\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"fsl,ls1043a-extirq\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"fsl,ls1088a-extirq\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"renesas,rza1-irqc\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.24 = private unnamed_addr constant [8 x i8] c"msi-map\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"msi-map-mask\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_irq_of_parse_and_map, ptr @__ksymtab_of_irq_find_parent, ptr @__ksymtab_of_irq_get, ptr @__ksymtab_of_irq_get_byname, ptr @__ksymtab_of_irq_parse_one, ptr @__ksymtab_of_irq_parse_raw, ptr @__ksymtab_of_irq_to_resource, ptr @__ksymtab_of_irq_to_resource_table, ptr @__ksymtab_of_msi_configure], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !8
  %4 = call i32 @of_irq_parse_one(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = call i32 @irq_create_of_mapping(ptr noundef nonnull %3) #8
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  ret i32 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_irq_parse_one(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = tail call ptr @of_get_property(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef null) #8
  %6 = tail call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef -1, i32 noundef %1, ptr noundef %2) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @of_irq_parse_raw(ptr noundef %5, ptr noundef %2)
  br label %38

10:                                               ; preds = %3
  %11 = tail call ptr @of_irq_find_parent(ptr noundef %0)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %10
  %14 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %11, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #8
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  store ptr %11, ptr %2, align 4
  %17 = load i32, ptr %4, align 4
  %18 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2
  br label %26

22:                                               ; preds = %26
  %23 = add nuw i32 %28, 1
  %24 = load i32, ptr %4, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22, %20
  %27 = phi i32 [ %17, %20 ], [ %24, %22 ]
  %28 = phi i32 [ 0, %20 ], [ %23, %22 ]
  %29 = mul i32 %27, %1
  %30 = add i32 %29, %28
  %31 = getelementptr i32, ptr %21, i32 %28
  %32 = call i32 @of_property_read_u32_index(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %30, ptr noundef %31) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %22, label %36

34:                                               ; preds = %22, %16
  %35 = call i32 @of_irq_parse_raw(ptr noundef %5, ptr noundef %2)
  br label %36

36:                                               ; preds = %34, %26, %13
  %37 = phi i32 [ %35, %34 ], [ -22, %13 ], [ %32, %26 ]
  call void @of_node_put(ptr noundef nonnull %11) #8
  br label %38

38:                                               ; preds = %36, %10, %8
  %39 = phi i32 [ %37, %36 ], [ %9, %8 ], [ -22, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_of_mapping(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_irq_find_parent(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = tail call ptr @of_node_get(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %17, %1
  %6 = phi ptr [ %15, %17 ], [ %0, %1 ]
  %7 = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = call ptr @of_get_parent(ptr noundef %6) #8
  br label %14

11:                                               ; preds = %5
  %12 = load i32, ptr %2, align 4
  %13 = call ptr @of_find_node_by_phandle(i32 noundef %12) #8
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi ptr [ %10, %9 ], [ %13, %11 ]
  call void @of_node_put(ptr noundef %6) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = call ptr @of_get_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.1, ptr noundef null) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %5, label %20

20:                                               ; preds = %17, %14, %1
  %21 = phi ptr [ null, %1 ], [ %15, %17 ], [ null, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_irq_parse_raw(ptr noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [16 x i32], align 4
  %4 = alloca [17 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %4, i8 -1, i32 68, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 1, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !annotation !8
  %9 = load ptr, ptr %1, align 4
  %10 = tail call ptr @of_node_get(ptr noundef %9) #8
  br label %11

11:                                               ; preds = %15, %2
  %12 = phi ptr [ %10, %2 ], [ %16, %15 ]
  %13 = call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #8
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = call ptr @of_irq_find_parent(ptr noundef %12)
  call void @of_node_put(ptr noundef %12) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %206, label %11

18:                                               ; preds = %11
  %19 = icmp eq ptr %12, null
  br i1 %19, label %206, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %206

25:                                               ; preds = %20
  %26 = call ptr @of_node_get(ptr noundef nonnull %12) #8
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi ptr [ %26, %25 ], [ %30, %27 ]
  %29 = call ptr @of_get_property(ptr noundef %28, ptr noundef nonnull @.str.2, ptr noundef null) #8
  %30 = call ptr @of_get_parent(ptr noundef %28) #8
  call void @of_node_put(ptr noundef %28) #8
  %31 = icmp ne ptr %30, null
  %32 = icmp eq ptr %29, null
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %27, label %34

34:                                               ; preds = %27
  call void @of_node_put(ptr noundef %30) #8
  br i1 %32, label %41, label %35

35:                                               ; preds = %34
  %36 = load i32, ptr %29, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %38 = load i32, ptr %5, align 4
  %39 = add i32 %38, %37
  %40 = icmp ugt i32 %39, 16
  br i1 %40, label %202, label %45, !prof !9

41:                                               ; preds = %34
  %42 = load i32, ptr %5, align 4
  %43 = add i32 %42, -15
  %44 = icmp ult i32 %43, -17
  br i1 %44, label %202, label %47, !prof !9

45:                                               ; preds = %35
  %46 = icmp eq i32 %36, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ %37, %45 ], [ 2, %41 ]
  %49 = phi i32 [ %38, %45 ], [ %42, %41 ]
  %50 = icmp eq ptr %0, null
  br label %55

51:                                               ; preds = %60, %45
  %52 = phi i32 [ 0, %45 ], [ %48, %60 ]
  %53 = phi i32 [ %38, %45 ], [ %49, %60 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %65, label %67

55:                                               ; preds = %60, %47
  %56 = phi i32 [ 0, %47 ], [ %63, %60 ]
  br i1 %50, label %60, label %57

57:                                               ; preds = %55
  %58 = getelementptr i32, ptr %0, i32 %56
  %59 = load i32, ptr %58, align 4
  br label %60

60:                                               ; preds = %57, %55
  %61 = phi i32 [ %59, %57 ], [ 0, %55 ]
  %62 = getelementptr [16 x i32], ptr %3, i32 0, i32 %56
  store i32 %61, ptr %62, align 4
  %63 = add nuw i32 %56, 1
  %64 = icmp eq i32 %63, %48
  br i1 %64, label %51, label %55

65:                                               ; preds = %67, %51
  %66 = icmp ne ptr %0, null
  br label %76

67:                                               ; preds = %67, %51
  %68 = phi i32 [ %74, %67 ], [ 0, %51 ]
  %69 = getelementptr %struct.of_phandle_args, ptr %1, i32 0, i32 2, i32 %68
  %70 = load i32, ptr %69, align 4
  %71 = call i32 @llvm.bswap.i32(i32 %70)
  %72 = add i32 %68, %52
  %73 = getelementptr [16 x i32], ptr %3, i32 0, i32 %72
  store i32 %71, ptr %73, align 4
  %74 = add nuw i32 %68, 1
  %75 = icmp eq i32 %74, %53
  br i1 %75, label %65, label %67

76:                                               ; preds = %197, %65
  %77 = phi ptr [ %12, %65 ], [ %200, %197 ]
  %78 = phi ptr [ %3, %65 ], [ %199, %197 ]
  %79 = phi i32 [ %52, %65 ], [ %198, %197 ]
  %80 = call ptr @of_find_property(ptr noundef nonnull %77, ptr noundef nonnull @.str.4, ptr noundef null) #8
  %81 = icmp eq ptr %80, null
  %82 = call ptr @of_get_property(ptr noundef nonnull %77, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #8
  br i1 %81, label %88, label %83

83:                                               ; preds = %76
  %84 = icmp eq ptr %82, null
  br i1 %84, label %210, label %85

85:                                               ; preds = %83
  %86 = call i32 @of_device_compatible_match(ptr noundef nonnull %77, ptr noundef nonnull @of_irq_imap_abusers) #8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %210

88:                                               ; preds = %85, %76
  %89 = icmp eq i32 %79, 0
  %90 = or i1 %66, %89
  br i1 %90, label %91, label %206

91:                                               ; preds = %88
  %92 = icmp eq ptr %82, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %91
  %94 = call ptr @of_irq_find_parent(ptr noundef nonnull %77)
  br label %197

95:                                               ; preds = %91
  %96 = load i32, ptr %8, align 4
  %97 = lshr i32 %96, 2
  store i32 %97, ptr %8, align 4
  %98 = call ptr @of_get_property(ptr noundef nonnull %77, ptr noundef nonnull @.str.6, ptr noundef null) #8
  %99 = icmp eq ptr %98, null
  %100 = select i1 %99, ptr %4, ptr %98
  %101 = load i32, ptr %8, align 4
  %102 = load i32, ptr %5, align 4
  %103 = add i32 %102, %79
  %104 = add i32 %103, 1
  %105 = icmp ugt i32 %101, %104
  br i1 %105, label %106, label %174

106:                                              ; preds = %162, %95
  %107 = phi i32 [ %164, %162 ], [ %101, %95 ]
  %108 = phi i32 [ %166, %162 ], [ %103, %95 ]
  %109 = phi ptr [ %163, %162 ], [ %82, %95 ]
  %110 = icmp eq i32 %108, 0
  br i1 %110, label %134, label %111

111:                                              ; preds = %106
  %112 = shl i32 %108, 2
  br label %113

113:                                              ; preds = %113, %111
  %114 = phi i32 [ %130, %113 ], [ %107, %111 ]
  %115 = phi ptr [ %120, %113 ], [ %109, %111 ]
  %116 = phi i32 [ %128, %113 ], [ 1, %111 ]
  %117 = phi i32 [ %129, %113 ], [ 0, %111 ]
  %118 = getelementptr i32, ptr %78, i32 %117
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr i32, ptr %115, i32 1
  %121 = load i32, ptr %115, align 4
  %122 = xor i32 %121, %119
  %123 = getelementptr i32, ptr %100, i32 %117
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %122, %124
  %126 = icmp eq i32 %125, 0
  %127 = zext i1 %126 to i32
  %128 = and i32 %116, %127
  %129 = add nuw i32 %117, 1
  %130 = add i32 %114, -1
  store i32 %130, ptr %8, align 4
  %131 = icmp eq i32 %129, %108
  br i1 %131, label %132, label %113

132:                                              ; preds = %113
  %133 = getelementptr i8, ptr %109, i32 %112
  br label %134

134:                                              ; preds = %132, %106
  %135 = phi i32 [ 1, %106 ], [ %128, %132 ]
  %136 = phi ptr [ %109, %106 ], [ %133, %132 ]
  %137 = load i32, ptr %136, align 4
  %138 = call i32 @llvm.bswap.i32(i32 %137) #8
  %139 = call ptr @of_find_node_by_phandle(i32 noundef %138) #8
  %140 = getelementptr i32, ptr %136, i32 1
  %141 = load i32, ptr %8, align 4
  %142 = add i32 %141, -1
  store i32 %142, ptr %8, align 4
  %143 = icmp eq ptr %139, null
  br i1 %143, label %206, label %144

144:                                              ; preds = %134
  %145 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %139) #8
  %146 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %139, ptr noundef nonnull @.str.1, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #8
  %147 = icmp sgt i32 %146, -1
  br i1 %147, label %148, label %206

148:                                              ; preds = %144
  %149 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %139, ptr noundef nonnull @.str.2, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #8
  %150 = icmp sgt i32 %149, -1
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = load i32, ptr %7, align 4
  br label %154

153:                                              ; preds = %148
  store i32 0, ptr %7, align 4
  br label %154

154:                                              ; preds = %153, %151
  %155 = phi i32 [ %152, %151 ], [ 0, %153 ]
  %156 = load i32, ptr %6, align 4
  %157 = add i32 %156, %155
  %158 = icmp ugt i32 %157, 16
  br i1 %158, label %202, label %159, !prof !9

159:                                              ; preds = %154
  %160 = load i32, ptr %8, align 4
  %161 = icmp ult i32 %160, %157
  br i1 %161, label %206, label %162

162:                                              ; preds = %159
  %163 = getelementptr i32, ptr %140, i32 %157
  %164 = sub i32 %160, %157
  store i32 %164, ptr %8, align 4
  %165 = load i32, ptr %5, align 4
  %166 = add i32 %165, %79
  %167 = add i32 %166, 1
  %168 = icmp ugt i32 %164, %167
  %169 = icmp eq i32 %135, 0
  %170 = xor i1 %145, true
  %171 = select i1 %170, i1 true, i1 %169
  %172 = select i1 %168, i1 %171, i1 false
  br i1 %172, label %106, label %173

173:                                              ; preds = %162
  br i1 %171, label %174, label %177

174:                                              ; preds = %173, %95
  %175 = phi ptr [ %139, %173 ], [ null, %95 ]
  br i1 %81, label %206, label %176

176:                                              ; preds = %174
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull %77) #8
  br label %210

177:                                              ; preds = %173
  %178 = load i32, ptr %7, align 4
  %179 = sub i32 0, %178
  %180 = getelementptr i32, ptr %163, i32 %179
  %181 = load i32, ptr %6, align 4
  %182 = sub i32 0, %181
  %183 = getelementptr i32, ptr %180, i32 %182
  %184 = icmp eq i32 %181, 0
  br i1 %184, label %195, label %185

185:                                              ; preds = %177
  %186 = getelementptr i32, ptr %163, i32 %182
  br label %187

187:                                              ; preds = %187, %185
  %188 = phi i32 [ 0, %185 ], [ %193, %187 ]
  %189 = getelementptr i32, ptr %186, i32 %188
  %190 = load i32, ptr %189, align 4
  %191 = call i32 @llvm.bswap.i32(i32 %190) #8
  %192 = getelementptr %struct.of_phandle_args, ptr %1, i32 0, i32 2, i32 %188
  store i32 %191, ptr %192, align 4
  %193 = add nuw i32 %188, 1
  %194 = icmp eq i32 %193, %181
  br i1 %194, label %195, label %187

195:                                              ; preds = %187, %177
  store i32 %181, ptr %5, align 4
  store i32 %181, ptr %21, align 4
  %196 = icmp eq ptr %77, %139
  br i1 %196, label %210, label %197

197:                                              ; preds = %195, %93
  %198 = phi i32 [ %79, %93 ], [ %178, %195 ]
  %199 = phi ptr [ %78, %93 ], [ %183, %195 ]
  %200 = phi ptr [ %94, %93 ], [ %139, %195 ]
  store ptr %200, ptr %1, align 4
  call void @of_node_put(ptr noundef nonnull %77) #8
  %201 = icmp eq ptr %200, null
  br i1 %201, label %206, label %76

202:                                              ; preds = %154, %41, %35
  %203 = phi i32 [ 166, %41 ], [ 166, %35 ], [ 260, %154 ]
  %204 = phi ptr [ null, %41 ], [ null, %35 ], [ %139, %154 ]
  %205 = phi ptr [ %12, %41 ], [ %12, %35 ], [ %77, %154 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef %203, i32 noundef 9, ptr noundef null) #8
  br label %206

206:                                              ; preds = %202, %197, %174, %159, %144, %134, %88, %20, %18, %15
  %207 = phi i32 [ -22, %20 ], [ -22, %18 ], [ -22, %174 ], [ -14, %202 ], [ -22, %134 ], [ -22, %144 ], [ -14, %159 ], [ -2, %197 ], [ -22, %88 ], [ -22, %15 ]
  %208 = phi ptr [ null, %20 ], [ null, %18 ], [ %175, %174 ], [ %204, %202 ], [ null, %134 ], [ %139, %144 ], [ %139, %159 ], [ null, %88 ], [ null, %197 ], [ null, %15 ]
  %209 = phi ptr [ %12, %20 ], [ null, %18 ], [ %77, %174 ], [ %205, %202 ], [ %77, %134 ], [ %77, %144 ], [ %77, %159 ], [ null, %197 ], [ %77, %88 ], [ null, %15 ]
  call void @of_node_put(ptr noundef %209) #8
  call void @of_node_put(ptr noundef %208) #8
  br label %210

210:                                              ; preds = %206, %195, %176, %85, %83
  %211 = phi i32 [ %207, %206 ], [ 0, %176 ], [ 0, %85 ], [ 0, %83 ], [ 0, %195 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #8
  ret i32 %211
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_compatible_match(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_irq_to_resource(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #0 {
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = alloca %struct.irq_fwspec, align 4
  %6 = alloca %struct.of_phandle_args, align 4
  %7 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %6, i8 0, i32 72, i1 false) #8, !annotation !8
  %8 = call i32 @of_irq_parse_one(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 4
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.device_node, ptr %11, i32 0, i32 3
  %14 = select i1 %12, ptr null, ptr %13
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #8
  %15 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %15, i8 0, i64 68, i1 false) #8
  store ptr %14, ptr %5, align 4
  %16 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %5, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #8
  %19 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %19, i8 0, i64 68, i1 false) #8
  store ptr %14, ptr %4, align 4
  %20 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %4, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #8
  br label %52

23:                                               ; preds = %18, %10
  %24 = call i32 @irq_create_of_mapping(ptr noundef nonnull %6) #8
  br label %25

25:                                               ; preds = %23, %3
  %26 = phi i32 [ %24, %23 ], [ %8, %3 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %25
  %29 = icmp ne ptr %2, null
  %30 = icmp ne i32 %26, 0
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store ptr null, ptr %7, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false)
  %33 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %7, i32 noundef 1, i32 noundef %1) #8
  %34 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  store i32 %26, ptr %34, align 4
  store i32 %26, ptr %2, align 4
  %35 = call ptr @irq_get_irq_data(i32 noundef %26) #8
  %36 = getelementptr inbounds %struct.irq_data, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 15
  %40 = or i32 %39, 1024
  %41 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  store i32 %40, ptr %41, align 4
  %42 = load ptr, ptr %7, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = icmp eq ptr %0, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %44, %32
  %50 = phi ptr [ %42, %32 ], [ %48, %46 ], [ @.str.23, %44 ]
  %51 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 2
  store ptr %50, ptr %51, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  br label %52

52:                                               ; preds = %49, %28, %25, %22
  %53 = phi i32 [ -517, %22 ], [ %26, %28 ], [ %26, %49 ], [ %26, %25 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_irq_get(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false), !annotation !8
  %6 = call i32 @of_irq_parse_one(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load ptr, ptr %5, align 4
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.device_node, ptr %9, i32 0, i32 3
  %12 = select i1 %10, ptr null, ptr %11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #8
  %13 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %13, i8 0, i64 68, i1 false) #8
  store ptr %12, ptr %4, align 4
  %14 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  %17 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %17, i8 0, i64 68, i1 false) #8
  store ptr %12, ptr %3, align 4
  %18 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16, %8
  %21 = call i32 @irq_create_of_mapping(ptr noundef nonnull %5) #8
  br label %22

22:                                               ; preds = %20, %16, %2
  %23 = phi i32 [ %21, %20 ], [ %6, %2 ], [ -517, %16 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #8
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_irq_get_byname(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %29, label %7, !prof !9

7:                                                ; preds = %2
  %8 = tail call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %1) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #8, !annotation !8
  %11 = call i32 @of_irq_parse_one(ptr noundef %0, i32 noundef %8, ptr noundef nonnull %5) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load ptr, ptr %5, align 4
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.device_node, ptr %14, i32 0, i32 3
  %17 = select i1 %15, ptr null, ptr %16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #8
  %18 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %18, i8 0, i64 68, i1 false) #8
  store ptr %17, ptr %4, align 4
  %19 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  %22 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %22, i8 0, i64 68, i1 false) #8
  store ptr %17, ptr %3, align 4
  %23 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21, %13
  %26 = call i32 @irq_create_of_mapping(ptr noundef nonnull %5) #8
  br label %27

27:                                               ; preds = %25, %21, %10
  %28 = phi i32 [ %26, %25 ], [ %11, %10 ], [ -517, %21 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #8
  br label %29

29:                                               ; preds = %27, %7, %2
  %30 = phi i32 [ %28, %27 ], [ -22, %2 ], [ %8, %7 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_irq_count(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false), !annotation !8
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i32 [ 0, %1 ], [ %7, %3 ]
  %5 = call i32 @of_irq_parse_one(ptr noundef %0, i32 noundef %4, ptr noundef nonnull %2)
  %6 = icmp eq i32 %5, 0
  %7 = add i32 %4, 1
  br i1 %6, label %3, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_irq_to_resource_table(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %10, %3
  %6 = phi i32 [ %11, %10 ], [ 0, %3 ]
  %7 = phi ptr [ %12, %10 ], [ %1, %3 ]
  %8 = tail call i32 @of_irq_to_resource(ptr noundef %0, i32 noundef %6, ptr noundef %7)
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = add nuw nsw i32 %6, 1
  %12 = getelementptr %struct.resource, ptr %7, i32 1
  %13 = icmp eq i32 %11, %2
  br i1 %13, label %14, label %5

14:                                               ; preds = %10, %5, %3
  %15 = phi i32 [ 0, %3 ], [ %6, %5 ], [ %2, %10 ]
  ret i32 %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @of_irq_init(ptr noundef %0) local_unnamed_addr #5 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.list_head, align 8
  %4 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store volatile ptr %3, ptr %3, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %4, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  %7 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef %0, ptr noundef nonnull %2) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %43, %1
  %10 = load volatile ptr, ptr %3, align 8
  %11 = icmp eq ptr %10, %3
  br i1 %11, label %92, label %46

12:                                               ; preds = %43, %1
  %13 = phi ptr [ %44, %43 ], [ %7, %1 ]
  %14 = call ptr @of_find_property(ptr noundef nonnull %13, ptr noundef nonnull @.str.4, ptr noundef null) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %43, label %16

16:                                               ; preds = %12
  %17 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %13) #8
  br i1 %17, label %18, label %43

18:                                               ; preds = %16
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr inbounds %struct.of_device_id, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25, !prof !9

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.of_device_id, ptr %19, i32 0, i32 2
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 538, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %24) #8
  br label %43

25:                                               ; preds = %18
  %26 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %27 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 20) #9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  call void @of_node_put(ptr noundef nonnull %13) #8
  br label %102

30:                                               ; preds = %25
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr inbounds %struct.of_device_id, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.of_intc_desc, ptr %27, i32 0, i32 1
  store ptr %33, ptr %34, align 8
  %35 = call ptr @of_node_get(ptr noundef nonnull %13) #8
  %36 = getelementptr inbounds %struct.of_intc_desc, ptr %27, i32 0, i32 2
  store ptr %35, ptr %36, align 4
  %37 = call ptr @of_irq_find_parent(ptr noundef nonnull %13)
  %38 = getelementptr inbounds %struct.of_intc_desc, ptr %27, i32 0, i32 3
  %39 = icmp eq ptr %37, %13
  %40 = select i1 %39, ptr null, ptr %37
  store ptr %40, ptr %38, align 8
  %41 = load ptr, ptr %5, align 4
  store ptr %27, ptr %5, align 4
  store ptr %3, ptr %27, align 8
  %42 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %41, ptr %42, align 4
  store volatile ptr %27, ptr %41, align 4
  br label %43

43:                                               ; preds = %30, %23, %16, %12
  %44 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %13, ptr noundef %0, ptr noundef nonnull %2) #8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %9, label %12

46:                                               ; preds = %83, %9
  %47 = phi ptr [ %90, %83 ], [ %10, %9 ]
  %48 = phi ptr [ %89, %83 ], [ null, %9 ]
  %49 = icmp eq ptr %47, %3
  br i1 %49, label %76, label %50

50:                                               ; preds = %74, %46
  %51 = phi ptr [ %52, %74 ], [ %47, %46 ]
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.of_intc_desc, ptr %51, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %48
  br i1 %55, label %56, label %74

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  store ptr %58, ptr %59, align 4
  store volatile ptr %52, ptr %58, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %51, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %57, align 4
  %60 = getelementptr inbounds %struct.of_intc_desc, ptr %51, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.device_node, ptr %61, i32 0, i32 10
  call void @_set_bit(i32 noundef 3, ptr noundef %62) #8
  %63 = getelementptr inbounds %struct.of_intc_desc, ptr %51, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %60, align 4
  %66 = load ptr, ptr %53, align 4
  %67 = call i32 %64(ptr noundef %65, ptr noundef %66) #8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %56
  %70 = load ptr, ptr %60, align 4
  %71 = getelementptr inbounds %struct.device_node, ptr %70, i32 0, i32 10
  call void @_clear_bit(i32 noundef 3, ptr noundef %71) #8
  call void @kfree(ptr noundef %51) #8
  br label %74

72:                                               ; preds = %56
  %73 = load ptr, ptr %6, align 4
  store ptr %51, ptr %6, align 4
  store ptr %4, ptr %51, align 4
  store ptr %73, ptr %57, align 4
  store volatile ptr %51, ptr %73, align 4
  br label %74

74:                                               ; preds = %72, %69, %50
  %75 = icmp eq ptr %52, %3
  br i1 %75, label %76, label %50

76:                                               ; preds = %74, %46
  %77 = load volatile ptr, ptr %4, align 8
  %78 = icmp eq ptr %77, %4
  %79 = icmp eq ptr %77, null
  %80 = or i1 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  br label %92

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr %77, align 4
  %87 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  store ptr %85, ptr %87, align 4
  store volatile ptr %86, ptr %85, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %77, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %84, align 4
  %88 = getelementptr inbounds %struct.of_intc_desc, ptr %77, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  call void @kfree(ptr noundef nonnull %77) #8
  %90 = load volatile ptr, ptr %3, align 8
  %91 = icmp eq ptr %90, %3
  br i1 %91, label %92, label %46

92:                                               ; preds = %83, %81, %9
  %93 = load ptr, ptr %4, align 8
  %94 = icmp eq ptr %93, %4
  br i1 %94, label %102, label %95

95:                                               ; preds = %95, %92
  %96 = phi ptr [ %97, %95 ], [ %93, %92 ]
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  store ptr %99, ptr %100, align 4
  store volatile ptr %97, ptr %99, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %96, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %98, align 4
  call void @kfree(ptr noundef %96) #8
  %101 = icmp eq ptr %97, %4
  br i1 %101, label %102, label %95

102:                                              ; preds = %95, %92, %29
  %103 = load ptr, ptr %3, align 8
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %114, label %105

105:                                              ; preds = %105, %102
  %106 = phi ptr [ %107, %105 ], [ %103, %102 ]
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  store ptr %109, ptr %110, align 4
  store volatile ptr %107, ptr %109, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %106, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %108, align 4
  %111 = getelementptr inbounds %struct.of_intc_desc, ptr %106, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  call void @of_node_put(ptr noundef %112) #8
  call void @kfree(ptr noundef %106) #8
  %113 = icmp eq ptr %107, %3
  br i1 %113, label %114, label %105

114:                                              ; preds = %105, %102
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_msi_map_id(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %1, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 %2, ptr %4, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %13, %3
  %8 = phi ptr [ %15, %13 ], [ %0, %3 ]
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = call i32 @of_map_id(ptr noundef %10, i32 noundef %2, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull %5, ptr noundef nonnull %4) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %7

17:                                               ; preds = %13, %7
  %18 = load i32, ptr %4, align 4
  br label %19

19:                                               ; preds = %17, %3
  %20 = phi i32 [ %18, %17 ], [ %2, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_msi_map_get_device_domain(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store ptr null, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 %1, ptr %5, align 4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %14, %3
  %9 = phi ptr [ %16, %14 ], [ %0, %3 ]
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 @of_map_id(ptr noundef %11, i32 noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull %6, ptr noundef nonnull %5) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8

18:                                               ; preds = %14, %8
  %19 = load ptr, ptr %6, align 4
  br label %20

20:                                               ; preds = %18, %3
  %21 = phi ptr [ %19, %18 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %22 = icmp eq ptr %21, null
  %23 = getelementptr inbounds %struct.device_node, ptr %21, i32 0, i32 3
  %24 = select i1 %22, ptr null, ptr %23
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #8
  %25 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %25, i8 0, i64 68, i1 false) #8
  store ptr %24, ptr %4, align 4
  %26 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %4, i32 noundef %2) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_msi_get_domain(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = alloca %struct.irq_fwspec, align 4
  %6 = alloca %struct.of_phandle_args, align 4
  %7 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %6, i8 0, i32 72, i1 false) #8, !annotation !8
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %6) #8
  %9 = icmp ne i32 %8, 0
  %10 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #8
  %11 = icmp eq ptr %10, null
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %22, label %13

13:                                               ; preds = %3
  %14 = call ptr @of_find_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.15, ptr noundef null) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.device_node, ptr %10, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #8
  %18 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %18, i8 0, i64 68, i1 false) #8
  store ptr %17, ptr %5, align 4
  %19 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %5, i32 noundef %2) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %44

21:                                               ; preds = %16
  call void @of_node_put(ptr noundef nonnull %10) #8
  br label %44

22:                                               ; preds = %13, %3
  %23 = icmp eq i32 %2, 4
  br i1 %23, label %24, label %44

24:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %7, i8 0, i32 72, i1 false), !annotation !8
  %25 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %7) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = getelementptr inbounds i8, ptr %4, i32 4
  br label %29

29:                                               ; preds = %38, %27
  %30 = phi i32 [ 0, %27 ], [ %40, %38 ]
  %31 = load ptr, ptr %7, align 4
  %32 = icmp eq ptr %31, null
  %33 = getelementptr inbounds %struct.device_node, ptr %31, i32 0, i32 3
  %34 = select i1 %32, ptr null, ptr %33
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %28, i8 0, i64 68, i1 false) #8
  store ptr %34, ptr %4, align 4
  %35 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %4, i32 noundef 4) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #8
  br label %44

38:                                               ; preds = %29
  %39 = load ptr, ptr %7, align 4
  call void @of_node_put(ptr noundef %39) #8
  %40 = add i32 %30, 1
  %41 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef -1, i32 noundef %40, ptr noundef nonnull %7) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %29, label %43

43:                                               ; preds = %38, %24
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #8
  br label %44

44:                                               ; preds = %43, %37, %22, %21, %16
  %45 = phi ptr [ null, %21 ], [ %19, %16 ], [ %35, %37 ], [ null, %43 ], [ null, %22 ]
  ret ptr %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_msi_configure(ptr nocapture noundef writeonly %0, ptr noundef %1) #0 {
  %3 = tail call ptr @of_msi_get_domain(ptr undef, ptr noundef %1, i32 noundef 4)
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 14
  store ptr %3, ptr %4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_map_id(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
