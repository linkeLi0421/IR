; ModuleID = '/llk/IR/drivers/irqchip/irq-dw-apb-ictl.c_pt.bc'
source_filename = "../drivers/irqchip/irq-dw-apb-ictl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__of_table_dw_apb_ictl = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dw-apb-ictl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dw_apb_ictl_init }, section "__irqchip_of_table", align 4
@dw_apb_ictl_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_apb_ictl_irq_domain_alloc, ptr @irq_domain_free_irqs_top, ptr null, ptr null, ptr @irq_domain_translate_onecell }, align 4
@.str = private unnamed_addr constant [29 x i8] c"\013%pOF: unable to parse irq\0A\00", align 1
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"\013%pOF: unable to get resource\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"\013%pOF: unable to request mem region\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"\013%pOF: unable to map resource\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"\013%pOF: unable to add irq domain\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"\013%pOF: unable to alloc irq domain gc\0A\00", align 1
@dw_apb_ictl_irq_domain = internal unnamed_addr global ptr null, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_dw_apb_ictl], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dw_apb_ictl_init(ptr noundef %0, ptr noundef readnone %1) #0 section ".init.text" {
  %3 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #7
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #8
  br label %99

10:                                               ; preds = %5, %2
  %11 = phi i32 [ 0, %2 ], [ %6, %5 ]
  %12 = phi ptr [ @dw_apb_ictl_irq_domain_ops, %2 ], [ @irq_generic_chip_ops, %5 ]
  %13 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #8
  br label %99

17:                                               ; preds = %10
  %18 = load i32, ptr %3, align 4
  %19 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = sub i32 1, %18
  %22 = add i32 %21, %20
  %23 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %18, i32 noundef %22, ptr noundef %24, i32 noundef 0) #7
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %0) #8
  br label %99

29:                                               ; preds = %17
  %30 = load i32, ptr %3, align 4
  %31 = load i32, ptr %19, align 4
  %32 = sub i32 1, %30
  %33 = add i32 %32, %31
  %34 = call ptr @ioremap(i32 noundef %30, i32 noundef %33) #7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %0) #8
  br label %93

38:                                               ; preds = %29
  %39 = getelementptr i8, ptr %34, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 -1) #7, !srcloc !9
  %40 = getelementptr i8, ptr %34, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 -1) #7, !srcloc !9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %34, i32 -1) #7, !srcloc !9
  %41 = getelementptr i8, ptr %34, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 -1) #7, !srcloc !9
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #7, !srcloc !10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = call i32 @llvm.ctlz.i32(i32 %42, i1 true) #7, !range !11
  %46 = sub nuw nsw i32 64, %45
  br label %53

47:                                               ; preds = %38
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %34) #7, !srcloc !10
  %49 = icmp eq i32 %48, 0
  %50 = call i32 @llvm.ctlz.i32(i32 %48, i1 false) #7, !range !11
  %51 = sub nuw nsw i32 32, %50
  %52 = select i1 %49, i32 0, i32 %51
  br label %53

53:                                               ; preds = %47, %44
  %54 = phi i32 [ %46, %44 ], [ %52, %47 ]
  %55 = icmp eq ptr %0, null
  %56 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %57 = select i1 %55, ptr null, ptr %56
  %58 = call ptr @__irq_domain_add(ptr noundef %57, i32 noundef %54, i32 noundef %54, i32 noundef 0, ptr noundef nonnull %12, ptr noundef null) #7
  %59 = icmp eq ptr %58, null
  br i1 %59, label %89, label %60

60:                                               ; preds = %53
  %61 = load ptr, ptr %0, align 4
  %62 = call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %58, i32 noundef 32, i32 noundef 1, ptr noundef %61, ptr noundef nonnull @handle_level_irq, i32 noundef 7168, i32 noundef 0, i32 noundef 1) #7
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %60
  %65 = icmp eq i32 %54, 0
  br i1 %65, label %84, label %66

66:                                               ; preds = %64
  %67 = add nsw i32 %54, 31
  %68 = lshr i32 %67, 5
  %69 = and i32 %68, 7
  br label %70

70:                                               ; preds = %70, %66
  %71 = phi i32 [ %82, %70 ], [ 0, %66 ]
  %72 = shl i32 %71, 5
  %73 = call ptr @irq_get_domain_generic_chip(ptr noundef nonnull %58, i32 noundef %72) #7
  %74 = shl i32 %71, 2
  %75 = getelementptr i8, ptr %34, i32 %74
  %76 = getelementptr inbounds %struct.irq_chip_generic, ptr %73, i32 0, i32 1
  store ptr %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.irq_chip_generic, ptr %73, i32 2, i32 14
  %78 = getelementptr inbounds %struct.irq_chip_generic, ptr %73, i32 2, i32 16
  store i32 8, ptr %78, align 4
  store i32 0, ptr %77, align 4
  %79 = getelementptr inbounds %struct.irq_chip_generic, ptr %73, i32 1, i32 7
  store ptr @irq_gc_mask_set_bit, ptr %79, align 4
  %80 = getelementptr inbounds %struct.irq_chip_generic, ptr %73, i32 1, i32 9
  store ptr @irq_gc_mask_clr_bit, ptr %80, align 4
  %81 = getelementptr inbounds %struct.irq_chip_generic, ptr %73, i32 1, i32 18
  store ptr @dw_apb_ictl_resume, ptr %81, align 4
  %82 = add nuw nsw i32 %71, 1
  %83 = icmp eq i32 %82, %69
  br i1 %83, label %84, label %70

84:                                               ; preds = %70, %64
  %85 = icmp eq i32 %11, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %84
  call void @irq_set_chained_handler_and_data(i32 noundef %11, ptr noundef nonnull @dw_apb_ictl_handle_irq_cascaded, ptr noundef nonnull %58) #7
  br label %99

87:                                               ; preds = %84
  store ptr %58, ptr @dw_apb_ictl_irq_domain, align 4
  %88 = call i32 @set_handle_irq(ptr noundef nonnull @dw_apb_ictl_handle_irq) #8
  br label %99

89:                                               ; preds = %60, %53
  %90 = phi ptr [ @.str.4, %53 ], [ @.str.5, %60 ]
  %91 = phi i32 [ -12, %53 ], [ %62, %60 ]
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %90, ptr noundef %0) #8
  call void @iounmap(ptr noundef nonnull %34) #7
  br label %93

93:                                               ; preds = %89, %36
  %94 = phi i32 [ %91, %89 ], [ -12, %36 ]
  %95 = load i32, ptr %3, align 4
  %96 = load i32, ptr %19, align 4
  %97 = sub i32 1, %95
  %98 = add i32 %97, %96
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %95, i32 noundef %98) #7
  br label %99

99:                                               ; preds = %93, %87, %86, %27, %15, %8
  %100 = phi i32 [ -22, %8 ], [ %13, %15 ], [ %94, %93 ], [ -12, %27 ], [ 0, %87 ], [ 0, %86 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  ret i32 %100
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_set_bit(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_clr_bit(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_apb_ictl_resume(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #7
  %6 = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 -1) #7, !srcloc !9
  %11 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.irq_chip_type, ptr %5, i32 0, i32 1, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %14, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %13) #7, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  %18 = load i16, ptr %3, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_apb_ictl_handle_irq_cascaded(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %11(ptr noundef %14) #7
  br label %23

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %17(ptr noundef %18) #7
  %19 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  tail call void %20(ptr noundef %18) #7
  br label %23

23:                                               ; preds = %22, %15, %13, %1
  %24 = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 11
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %47, %23
  %28 = phi i32 [ %48, %47 ], [ 0, %23 ]
  %29 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %3, i32 noundef %28) #7
  %30 = getelementptr inbounds %struct.irq_chip_generic, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 48
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #7, !srcloc !10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.irq_chip_generic, ptr %29, i32 0, i32 6
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi i32 [ %33, %35 ], [ %45, %37 ]
  %39 = tail call i32 @llvm.cttz.i32(i32 %38, i1 true), !range !11
  %40 = load i32, ptr %36, align 4
  %41 = add i32 %40, %39
  %42 = tail call i32 @generic_handle_domain_irq(ptr noundef %3, i32 noundef %41) #7
  %43 = shl nuw i32 1, %39
  %44 = xor i32 %43, -1
  %45 = and i32 %38, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %37

47:                                               ; preds = %37, %27
  %48 = add i32 %28, 32
  %49 = load i32, ptr %24, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %27, label %51

51:                                               ; preds = %47, %23
  %52 = load ptr, ptr %6, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 9
  %56 = load ptr, ptr %55, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi ptr [ %56, %54 ], [ %52, %51 ]
  %59 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %58(ptr noundef %59) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_apb_ictl_handle_irq(ptr nocapture noundef readnone %0) #5 section ".irqentry.text" {
  %2 = load ptr, ptr @dw_apb_ictl_irq_domain, align 4
  %3 = getelementptr inbounds %struct.irq_domain, ptr %2, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %22, %1
  %7 = phi i32 [ %23, %22 ], [ 0, %1 ]
  %8 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %2, i32 noundef %7) #7
  %9 = getelementptr inbounds %struct.irq_chip_generic, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 48
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %14, %6
  %15 = phi i32 [ %20, %14 ], [ %12, %6 ]
  %16 = tail call i32 @llvm.cttz.i32(i32 %15, i1 true), !range !11
  %17 = tail call i32 @generic_handle_domain_irq(ptr noundef %2, i32 noundef %16) #7
  %18 = shl nuw i32 1, %16
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %14

22:                                               ; preds = %14, %6
  %23 = add i32 %7, 32
  %24 = load i32, ptr %3, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %6, label %26

26:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_apb_ictl_irq_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #5 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4
  %7 = call i32 @irq_domain_translate_onecell(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %4
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ %17, %11 ], [ 0, %9 ]
  %13 = add i32 %12, %1
  %14 = load i32, ptr %5, align 4
  %15 = add i32 %14, %12
  %16 = call i32 @irq_map_generic_chip(ptr noundef %0, i32 noundef %13, i32 noundef %15) #7
  %17 = add nuw i32 %12, 1
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %19, label %11

19:                                               ; preds = %11, %9, %4
  %20 = phi i32 [ %7, %4 ], [ 0, %9 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_top(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_translate_onecell(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_map_generic_chip(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{i64 364934}
!10 = !{i64 365352}
!11 = !{i32 0, i32 33}
!12 = !{i64 2148901560}
!13 = !{i64 2148897384}
!14 = !{i64 2148897459, i64 2148897486, i64 2148897533, i64 2148897555, i64 2148897583, i64 2148897603}
!15 = !{i64 2148924563}
