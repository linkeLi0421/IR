; ModuleID = '/llk/IR/drivers/irqchip/irq-renesas-rza1.c_pt.bc'
source_filename = "../drivers/irqchip/irq-renesas-rza1.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
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
%struct.rza1_irqc_priv = type { ptr, ptr, %struct.irq_chip, ptr, [8 x %struct.of_phandle_args] }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_irq_renesas_rza1__170_274_rza1_irqc_init2 = internal global ptr @rza1_irqc_init, section ".initcall2.init", align 4
@rza1_irqc_device_driver = internal global %struct.platform_driver { ptr @rza1_irqc_probe, ptr @rza1_irqc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rza1_irqc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_rza1_irqc_exit = internal global ptr @rza1_irqc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [69 x i8] c"irq_renesas_rza1.author=Geert Uytterhoeven <geert+renesas@glider.be>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [55 x i8] c"irq_renesas_rza1.description=Renesas RZ/A1 IRQC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [55 x i8] c"irq_renesas_rza1.file=drivers/irqchip/irq-renesas-rza1\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [32 x i8] c"irq_renesas_rza1.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [18 x i8] c"renesas_rza1_irqc\00", align 1
@rza1_irqc_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rza1-irqc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot find parent domain\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"cannot parse %s: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"interrupt-map\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"rza1-irqc\00", align 1
@rza1_irqc_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rza1_irqc_alloc, ptr null, ptr null, ptr null, ptr @rza1_irqc_translate }, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"cannot initialize irq domain\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_rza1_irqc_exit, ptr @__initcall__kmod_irq_renesas_rza1__170_274_rza1_irqc_init2, ptr @rza1_irqc_exit], section "llvm.metadata"
@switch.table.rza1_irqc_set_type = private unnamed_addr constant [8 x i32] [i32 2, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rza1_irqc_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rza1_irqc_device_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rza1_irqc_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rza1_irqc_device_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rza1_irqc_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = alloca %struct.irq_fwspec, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 724, i32 noundef 3520) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %102, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %12, align 8
  store ptr %6, ptr %9, align 4
  %13 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %14 = getelementptr inbounds %struct.rza1_irqc_priv, ptr %9, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = ptrtoint ptr %13 to i32
  br label %102

18:                                               ; preds = %11
  %19 = tail call ptr @of_irq_find_parent(ptr noundef %8) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.device_node, ptr %19, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #8
  %23 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %23, i8 0, i64 68, i1 false) #8
  store ptr %22, ptr %5, align 4
  %24 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %5, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #8
  %27 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %27, i8 0, i64 68, i1 false) #8
  store ptr %22, ptr %4, align 4
  %28 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %4, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1) #9
  br label %100

31:                                               ; preds = %26, %21
  %32 = phi ptr [ %28, %26 ], [ %24, %21 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %33 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %34 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 25
  %35 = load ptr, ptr %34, align 8
  %36 = call ptr @of_get_property(ptr noundef %35, ptr noundef nonnull @.str.3, ptr noundef nonnull %2) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %83, label %38

38:                                               ; preds = %31
  %39 = load i32, ptr %2, align 4
  br label %40

40:                                               ; preds = %78, %38
  %41 = phi i32 [ %80, %78 ], [ %39, %38 ]
  %42 = phi ptr [ %79, %78 ], [ %36, %38 ]
  %43 = phi i32 [ %81, %78 ], [ 0, %38 ]
  %44 = icmp ult i32 %41, 3
  br i1 %44, label %83, label %45

45:                                               ; preds = %40
  %46 = load i32, ptr %42, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46) #8
  %48 = icmp eq i32 %47, %43
  br i1 %48, label %49, label %83

49:                                               ; preds = %45
  %50 = getelementptr i32, ptr %42, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = call i32 @llvm.bswap.i32(i32 %51) #8
  %53 = call ptr @of_find_node_by_phandle(i32 noundef %52) #8
  %54 = icmp eq ptr %53, %19
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  call void @of_node_put(ptr noundef %53) #8
  br label %83

56:                                               ; preds = %49
  %57 = getelementptr i32, ptr %42, i32 3
  %58 = load i32, ptr %2, align 4
  %59 = add i32 %58, -3
  store i32 %59, ptr %2, align 4
  %60 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %19, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  call void @of_node_put(ptr noundef nonnull %19) #8
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %83

62:                                               ; preds = %56
  %63 = load i32, ptr %2, align 4
  %64 = load i32, ptr %3, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %83, label %66

66:                                               ; preds = %62
  %67 = getelementptr %struct.rza1_irqc_priv, ptr %9, i32 0, i32 4, i32 %43, i32 1
  store i32 %64, ptr %67, align 4
  %68 = icmp eq i32 %64, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %69, %66
  %70 = phi ptr [ %72, %69 ], [ %57, %66 ]
  %71 = phi i32 [ %76, %69 ], [ 0, %66 ]
  %72 = getelementptr i32, ptr %70, i32 1
  %73 = load i32, ptr %70, align 4
  %74 = call i32 @llvm.bswap.i32(i32 %73) #8
  %75 = getelementptr %struct.rza1_irqc_priv, ptr %9, i32 0, i32 4, i32 %43, i32 2, i32 %71
  store i32 %74, ptr %75, align 4
  %76 = add nuw i32 %71, 1
  %77 = icmp eq i32 %76, %64
  br i1 %77, label %78, label %69

78:                                               ; preds = %69, %66
  %79 = phi ptr [ %57, %66 ], [ %72, %69 ]
  %80 = sub i32 %63, %64
  store i32 %80, ptr %2, align 4
  %81 = add nuw nsw i32 %43, 1
  %82 = icmp eq i32 %81, 8
  br i1 %82, label %85, label %40

83:                                               ; preds = %62, %56, %55, %45, %40, %31
  %84 = phi i32 [ -22, %31 ], [ -22, %55 ], [ -22, %40 ], [ -22, %45 ], [ -22, %62 ], [ %60, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %84) #9
  br label %100

85:                                               ; preds = %78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %86 = getelementptr inbounds %struct.rza1_irqc_priv, ptr %9, i32 0, i32 2, i32 1
  store ptr @.str.4, ptr %86, align 4
  %87 = getelementptr inbounds %struct.rza1_irqc_priv, ptr %9, i32 0, i32 2, i32 7
  store ptr @irq_chip_mask_parent, ptr %87, align 4
  %88 = getelementptr inbounds %struct.rza1_irqc_priv, ptr %9, i32 0, i32 2, i32 9
  store ptr @irq_chip_unmask_parent, ptr %88, align 4
  %89 = getelementptr inbounds %struct.rza1_irqc_priv, ptr %9, i32 0, i32 2, i32 10
  store ptr @rza1_irqc_eoi, ptr %89, align 4
  %90 = getelementptr inbounds %struct.rza1_irqc_priv, ptr %9, i32 0, i32 2, i32 12
  store ptr @irq_chip_retrigger_hierarchy, ptr %90, align 4
  %91 = getelementptr inbounds %struct.rza1_irqc_priv, ptr %9, i32 0, i32 2, i32 13
  store ptr @rza1_irqc_set_type, ptr %91, align 4
  %92 = getelementptr inbounds %struct.rza1_irqc_priv, ptr %9, i32 0, i32 2, i32 33
  store i32 20, ptr %92, align 4
  %93 = icmp eq ptr %8, null
  %94 = getelementptr inbounds %struct.device_node, ptr %8, i32 0, i32 3
  %95 = select i1 %93, ptr null, ptr %94
  %96 = call ptr @irq_domain_create_hierarchy(ptr noundef %32, i32 noundef 0, i32 noundef 8, ptr noundef %95, ptr noundef nonnull @rza1_irqc_domain_ops, ptr noundef nonnull %9) #8
  %97 = getelementptr inbounds %struct.rza1_irqc_priv, ptr %9, i32 0, i32 3
  store ptr %96, ptr %97, align 4
  %98 = icmp eq ptr %96, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.5) #9
  br label %100

100:                                              ; preds = %99, %85, %83, %30
  %101 = phi i32 [ %84, %83 ], [ 0, %85 ], [ -12, %99 ], [ -19, %30 ]
  call void @of_node_put(ptr noundef %19) #8
  br label %102

102:                                              ; preds = %100, %16, %1
  %103 = phi i32 [ %17, %16 ], [ %101, %100 ], [ -12, %1 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rza1_irqc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rza1_irqc_priv, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @irq_domain_remove(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_irq_find_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rza1_irqc_eoi(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = shl nuw i32 1, %7
  %9 = getelementptr inbounds %struct.rza1_irqc_priv, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #8, !srcloc !9
  %13 = zext i16 %12 to i32
  %14 = and i32 %8, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = trunc i32 %8 to i16
  %18 = and i16 %17, 255
  %19 = xor i16 %18, 255
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %19) #8, !srcloc !10
  br label %22

22:                                               ; preds = %16, %1
  tail call void @irq_chip_eoi_parent(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rza1_irqc_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_domain, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %1, 15
  %10 = add nsw i32 %9, -1
  %11 = icmp ult i32 %10, 8
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = trunc i32 %10 to i8
  %14 = lshr i8 -121, %13
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds [8 x i32], ptr @switch.table.rza1_irqc_set_type, i32 0, i32 %10
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.rza1_irqc_priv, ptr %6, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 2
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %22) #8, !srcloc !9
  %24 = shl i32 %8, 1
  %25 = shl i32 3, %24
  %26 = trunc i32 %25 to i16
  %27 = xor i16 %26, -1
  %28 = and i16 %23, %27
  %29 = shl i32 %19, %24
  %30 = trunc i32 %29 to i16
  %31 = or i16 %28, %30
  %32 = load ptr, ptr %20, align 4
  %33 = getelementptr i8, ptr %32, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %33, i16 %31) #8, !srcloc !10
  br label %34

34:                                               ; preds = %17, %12, %2
  %35 = phi i32 [ 0, %17 ], [ -22, %2 ], [ -22, %12 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rza1_irqc_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = alloca %struct.irq_fwspec, align 4
  %6 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #8
  %10 = getelementptr inbounds i8, ptr %5, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %10, i8 0, i32 64, i1 false), !annotation !8
  %11 = getelementptr inbounds %struct.rza1_irqc_priv, ptr %7, i32 0, i32 2
  %12 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %1, i32 noundef %9, ptr noundef %11, ptr noundef %7) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %4
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 25
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.device_node, ptr %17, i32 0, i32 3
  store ptr %18, ptr %5, align 4
  %19 = getelementptr %struct.rza1_irqc_priv, ptr %7, i32 0, i32 4, i32 %9, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %23, %14
  %24 = phi i32 [ %28, %23 ], [ 0, %14 ]
  %25 = getelementptr %struct.rza1_irqc_priv, ptr %7, i32 0, i32 4, i32 %9, i32 2, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 %24
  store i32 %26, ptr %27, align 4
  %28 = add nuw i32 %24, 1
  %29 = load i32, ptr %21, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %23, label %31

31:                                               ; preds = %23, %14
  %32 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5) #8
  br label %33

33:                                               ; preds = %31, %4
  %34 = phi i32 [ %32, %31 ], [ %12, %4 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #8
  ret i32 %34
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rza1_irqc_translate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #7 {
  %5 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 7
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  store i32 %10, ptr %2, align 4
  %13 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %3, align 4
  br label %15

15:                                               ; preds = %12, %8, %4
  %16 = phi i32 [ 0, %12 ], [ -22, %8 ], [ -22, %4 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{i64 3054688}
!10 = !{i64 3054488}
