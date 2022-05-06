; ModuleID = '/llk/IR/drivers/irqchip/irq-sun6i-r.c_pt.bc'
source_filename = "../drivers/irqchip/irq-sun6i-r.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sun6i_r_intc_variant = type { i32, i32, [4 x i32] }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__of_table_sun6i_a31_r_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-r-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_a31_r_intc_init }, section "__irqchip_of_table", align 4
@__of_table_sun50i_h6_r_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-r-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h6_r_intc_init }, section "__irqchip_of_table", align 4
@sun6i_a31_r_intc_variant = internal constant %struct.sun6i_r_intc_variant { i32 19, i32 13, [4 x i32] [i32 -1, i32 -524288, i32 -1, i32 15] }, section ".init.rodata", align 4
@nmi_hwirq = internal unnamed_addr global i32 0, align 4
@wake_irq_enabled = internal global [2 x i32] zeroinitializer, align 8
@wake_mux_valid = internal global [4 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [40 x i8] c"\013%pOF: Failed to obtain parent domain\0A\00", align 1
@base = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"\013%pOF: Failed to map MMIO region\0A\00", align 1
@sun6i_r_intc_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun6i_r_intc_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @sun6i_r_intc_domain_translate }, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"\013%pOF: Failed to allocate domain\0A\00", align 1
@sun6i_r_intc_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @sun6i_r_intc_suspend, ptr @sun6i_r_intc_resume, ptr @sun6i_r_intc_shutdown }, align 4
@sun6i_r_intc_nmi_chip = internal global %struct.irq_chip { ptr null, ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr @sun6i_r_intc_nmi_ack, ptr @irq_chip_mask_parent, ptr null, ptr @sun6i_r_intc_nmi_unmask, ptr @sun6i_r_intc_nmi_eoi, ptr @irq_chip_set_affinity_parent, ptr null, ptr @sun6i_r_intc_nmi_set_type, ptr @sun6i_r_intc_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun6i_r_intc_nmi_set_irqchip_state, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1 }, align 4
@sun6i_r_intc_wakeup_chip = internal global %struct.irq_chip { ptr null, ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr null, ptr @irq_chip_set_type_parent, ptr @sun6i_r_intc_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1 }, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"sun6i-r-intc\00", align 1
@wake_mux_enabled = internal global [4 x i32] zeroinitializer, align 8
@sun50i_h6_r_intc_variant = internal constant %struct.sun6i_r_intc_variant { i32 21, i32 16, [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1] }, section ".init.rodata", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_sun50i_h6_r_intc, ptr @__of_table_sun6i_a31_r_intc], section "llvm.metadata"
@switch.table.sun6i_r_intc_nmi_set_type = private unnamed_addr constant [8 x i32] [i32 3, i32 1, i32 3, i32 2, i32 3, i32 3, i32 3, i32 0], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun6i_a31_r_intc_init(ptr noundef %0, ptr noundef %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @sun6i_r_intc_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @sun6i_a31_r_intc_variant) #8
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun50i_h6_r_intc_init(ptr noundef %0, ptr noundef %1) #0 section ".init.text" {
  %3 = tail call fastcc i32 @sun6i_r_intc_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @sun50i_h6_r_intc_variant) #8
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @sun6i_r_intc_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 section ".init.text" {
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = alloca %struct.irq_fwspec, align 4
  %6 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %6, i8 0, i32 72, i1 false), !annotation !8
  %7 = call i32 @of_irq_parse_one(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %6) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %64

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.of_phandle_args, ptr %6, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %64, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.of_phandle_args, ptr %6, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.of_phandle_args, ptr %6, i32 0, i32 2, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 4
  %20 = select i1 %16, i1 %19, i1 false
  br i1 %20, label %21, label %64

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.of_phandle_args, ptr %6, i32 0, i32 2, i32 1
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr @nmi_hwirq, align 4
  %24 = load i32, ptr %2, align 4
  %25 = getelementptr inbounds %struct.sun6i_r_intc_variant, ptr %2, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  call void @__bitmap_set(ptr noundef nonnull @wake_irq_enabled, i32 noundef %24, i32 noundef %26) #9
  %27 = getelementptr inbounds %struct.sun6i_r_intc_variant, ptr %2, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) @wake_mux_valid, ptr noundef align 4 dereferenceable(16) %27, i32 16, i1 false) #9
  %28 = icmp eq ptr %1, null
  %29 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %30 = select i1 %28, ptr null, ptr %29
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #9
  %31 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %31, i8 0, i64 68, i1 false) #9
  store ptr %30, ptr %5, align 4
  %32 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %5, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #9
  %35 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %35, i8 0, i64 68, i1 false) #9
  store ptr %30, ptr %4, align 4
  %36 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %4, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #9
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #10
  br label %64

40:                                               ; preds = %34, %21
  %41 = phi ptr [ %36, %34 ], [ %32, %21 ]
  %42 = call ptr @of_io_request_and_map(ptr noundef %0, i32 noundef 0, ptr noundef null) #9
  store ptr %42, ptr @base, align 4
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #10
  %46 = load ptr, ptr @base, align 4
  %47 = ptrtoint ptr %46 to i32
  br label %64

48:                                               ; preds = %40
  %49 = icmp eq ptr %0, null
  %50 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %51 = select i1 %49, ptr null, ptr %50
  %52 = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %41, i32 noundef 0, i32 noundef 0, ptr noundef %51, ptr noundef nonnull @sun6i_r_intc_domain_ops, ptr noundef null) #9
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %0) #10
  %56 = load ptr, ptr @base, align 4
  call void @iounmap(ptr noundef %56) #9
  br label %64

57:                                               ; preds = %48
  call void @register_syscore_ops(ptr noundef nonnull @sun6i_r_intc_syscore_ops) #9
  %58 = load ptr, ptr @base, align 4
  %59 = getelementptr i8, ptr %58, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 1) #9, !srcloc !9
  %60 = load ptr, ptr @base, align 4
  %61 = getelementptr i8, ptr %60, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 1) #9, !srcloc !9
  %62 = load ptr, ptr @base, align 4
  %63 = getelementptr i8, ptr %62, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 0) #9, !srcloc !9
  br label %64

64:                                               ; preds = %57, %54, %44, %38, %13, %9, %3
  %65 = phi i32 [ %47, %44 ], [ 0, %57 ], [ -12, %54 ], [ -6, %38 ], [ %7, %3 ], [ -22, %13 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #9
  ret i32 %65
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_parse_one(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun6i_r_intc_resume() #5 {
  %1 = load ptr, ptr @base, align 4
  %2 = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 1) #9, !srcloc !9
  %3 = load ptr, ptr @base, align 4
  %4 = getelementptr i8, ptr %3, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #9, !srcloc !9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_r_intc_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #5 {
  %5 = alloca %struct.irq_fwspec, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %61

13:                                               ; preds = %9
  %14 = getelementptr %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 1
  br label %24

15:                                               ; preds = %4
  %16 = icmp slt i32 %7, 3
  br i1 %16, label %61, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %61

21:                                               ; preds = %17
  %22 = getelementptr %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 1
  %23 = getelementptr %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 2
  br label %24

24:                                               ; preds = %21, %13
  %25 = phi ptr [ @nmi_hwirq, %13 ], [ %22, %21 ]
  %26 = phi ptr [ %14, %13 ], [ %23, %21 ]
  %27 = load i32, ptr %25, align 4
  %28 = add i32 %27, %2
  %29 = icmp ugt i32 %28, 128
  br i1 %29, label %61, label %30

30:                                               ; preds = %24
  %31 = load i32, ptr %26, align 4
  %32 = and i32 %31, 15
  %33 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.irq_domain, ptr %34, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  store ptr %36, ptr %5, align 4
  %37 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %37, align 4
  %38 = getelementptr inbounds i8, ptr %5, i32 8
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds i8, ptr %5, i32 12
  store i32 %27, ptr %39, align 4
  %40 = getelementptr inbounds i8, ptr %5, i32 16
  store i32 %32, ptr %40, align 4
  %41 = getelementptr inbounds i8, ptr %5, i32 20
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(52) %41, i8 0, i32 52, i1 false)
  %42 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %30
  %45 = icmp eq i32 %2, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %56, %44
  %47 = phi i32 [ %57, %56 ], [ 0, %44 ]
  %48 = phi i32 [ %59, %56 ], [ %1, %44 ]
  %49 = phi i32 [ %58, %56 ], [ %27, %44 ]
  %50 = load i32, ptr @nmi_hwirq, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %48, i32 noundef %49, ptr noundef nonnull @sun6i_r_intc_nmi_chip, ptr noundef null) #9
  call void @__irq_set_handler(i32 noundef %48, ptr noundef nonnull @handle_fasteoi_ack_irq, i32 noundef 0, ptr noundef null) #9
  br label %56

54:                                               ; preds = %46
  %55 = call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %48, i32 noundef %49, ptr noundef nonnull @sun6i_r_intc_wakeup_chip, ptr noundef null) #9
  br label %56

56:                                               ; preds = %54, %52
  %57 = add nuw i32 %47, 1
  %58 = add i32 %49, 1
  %59 = add i32 %48, 1
  %60 = icmp eq i32 %57, %2
  br i1 %60, label %61, label %46

61:                                               ; preds = %56, %44, %30, %24, %17, %15, %9
  %62 = phi i32 [ -22, %24 ], [ %42, %30 ], [ -22, %15 ], [ -22, %17 ], [ -22, %9 ], [ 0, %44 ], [ 0, %56 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #9
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @sun6i_r_intc_domain_translate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #7 {
  %5 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %8
  %13 = load i32, ptr @nmi_hwirq, align 4
  store i32 %13, ptr %2, align 4
  %14 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  br label %25

15:                                               ; preds = %4
  %16 = icmp slt i32 %6, 3
  br i1 %16, label %29, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %2, align 4
  %24 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 2
  br label %25

25:                                               ; preds = %21, %12
  %26 = phi ptr [ %24, %21 ], [ %14, %12 ]
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 15
  store i32 %28, ptr %3, align 4
  br label %29

29:                                               ; preds = %25, %17, %15, %8
  %30 = phi i32 [ -22, %15 ], [ -22, %17 ], [ -22, %8 ], [ 0, %25 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_fasteoi_ack_irq(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun6i_r_intc_nmi_ack(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @base, align 4
  %9 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1) #9, !srcloc !9
  br label %12

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  store ptr inttoptr (i32 1 to ptr), ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun6i_r_intc_nmi_unmask(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, inttoptr (i32 1 to ptr)
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  store ptr null, ptr %2, align 4
  %6 = load ptr, ptr @base, align 4
  %7 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1) #9, !srcloc !9
  br label %8

8:                                                ; preds = %5, %1
  tail call void @irq_chip_unmask_parent(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun6i_r_intc_nmi_eoi(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, inttoptr (i32 1 to ptr)
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 131072
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  store ptr null, ptr %2, align 4
  %12 = load ptr, ptr @base, align 4
  %13 = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 1) #9, !srcloc !9
  br label %14

14:                                               ; preds = %11, %5, %1
  tail call void @irq_chip_eoi_parent(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_r_intc_nmi_set_type(ptr noundef %0, i32 noundef %1) #5 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 8
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = trunc i32 %3 to i8
  %7 = lshr i8 -117, %6
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds [8 x i32], ptr @switch.table.sun6i_r_intc_nmi_set_type, i32 0, i32 %3
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr @base, align 4
  %14 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #9, !srcloc !9
  %15 = tail call i32 @irq_chip_set_type_parent(ptr noundef %0, i32 noundef 4) #9
  br label %16

16:                                               ; preds = %10, %5, %2
  %17 = phi i32 [ %15, %10 ], [ -22, %2 ], [ -22, %5 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_r_intc_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr @nmi_hwirq, align 4
  %6 = sub i32 %4, %5
  %7 = icmp ult i32 %6, 16
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  tail call void @_set_bit(i32 noundef %6, ptr noundef nonnull @wake_irq_enabled) #9
  br label %24

11:                                               ; preds = %8
  tail call void @_clear_bit(i32 noundef %6, ptr noundef nonnull @wake_irq_enabled) #9
  br label %24

12:                                               ; preds = %2
  %13 = lshr i32 %4, 5
  %14 = getelementptr i32, ptr @wake_mux_valid, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %4, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = icmp eq i32 %1, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void @_set_bit(i32 noundef %4, ptr noundef nonnull @wake_mux_enabled) #9
  br label %24

23:                                               ; preds = %20
  tail call void @_clear_bit(i32 noundef %4, ptr noundef nonnull @wake_mux_enabled) #9
  br label %24

24:                                               ; preds = %23, %22, %12, %11, %10
  %25 = phi i32 [ -1, %12 ], [ 0, %10 ], [ 0, %11 ], [ 0, %22 ], [ 0, %23 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_r_intc_nmi_set_irqchip_state(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #5 {
  %4 = icmp ne i32 %1, 0
  %5 = or i1 %4, %2
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @base, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 1) #9, !srcloc !9
  br label %9

9:                                                ; preds = %6, %3
  %10 = tail call i32 @irq_chip_set_parent_state(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #9
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_parent_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_r_intc_suspend() #5 {
  %1 = load i64, ptr @wake_irq_enabled, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i64 %1, 32
  %4 = trunc i64 %3 to i32
  %5 = load ptr, ptr @base, align 4
  %6 = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %2) #9, !srcloc !9
  %7 = load ptr, ptr @base, align 4
  %8 = getelementptr i8, ptr %7, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %4) #9, !srcloc !9
  %9 = load i64, ptr @wake_mux_enabled, align 8
  %10 = trunc i64 %9 to i32
  %11 = lshr i64 %9, 32
  %12 = trunc i64 %11 to i32
  %13 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @wake_mux_enabled, i32 0, i32 2), align 8
  %14 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @wake_mux_enabled, i32 0, i32 3), align 4
  %15 = load ptr, ptr @base, align 4
  %16 = getelementptr i8, ptr %15, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %10) #9, !srcloc !9
  %17 = load ptr, ptr @base, align 4
  %18 = getelementptr i8, ptr %17, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %12) #9, !srcloc !9
  %19 = load ptr, ptr @base, align 4
  %20 = getelementptr i8, ptr %19, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %13) #9, !srcloc !9
  %21 = load ptr, ptr @base, align 4
  %22 = getelementptr i8, ptr %21, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %14) #9, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun6i_r_intc_shutdown() #5 {
  %1 = load i64, ptr @wake_irq_enabled, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i64 %1, 32
  %4 = trunc i64 %3 to i32
  %5 = load ptr, ptr @base, align 4
  %6 = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %2) #9, !srcloc !9
  %7 = load ptr, ptr @base, align 4
  %8 = getelementptr i8, ptr %7, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %4) #9, !srcloc !9
  %9 = load i64, ptr @wake_mux_enabled, align 8
  %10 = trunc i64 %9 to i32
  %11 = lshr i64 %9, 32
  %12 = trunc i64 %11 to i32
  %13 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @wake_mux_enabled, i32 0, i32 2), align 8
  %14 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @wake_mux_enabled, i32 0, i32 3), align 4
  %15 = load ptr, ptr @base, align 4
  %16 = getelementptr i8, ptr %15, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %10) #9, !srcloc !9
  %17 = load ptr, ptr @base, align 4
  %18 = getelementptr i8, ptr %17, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %12) #9, !srcloc !9
  %19 = load ptr, ptr @base, align 4
  %20 = getelementptr i8, ptr %19, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %13) #9, !srcloc !9
  %21 = load ptr, ptr @base, align 4
  %22 = getelementptr i8, ptr %21, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %14) #9, !srcloc !9
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold }
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
!8 = !{!"auto-init"}
!9 = !{i64 3060163}
