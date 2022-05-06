; ModuleID = '/llk/IR/drivers/pci/controller/pci-rcar-gen2.c_pt.bc'
source_filename = "../drivers/pci/controller/pci-rcar-gen2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [40 x i8], [0 x i32] }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.rcar_pci = type { ptr, ptr, %struct.resource, ptr, i32 }

@__initcall__kmod_pci_rcar_gen2__229_342_rcar_pci_driver_init6 = internal global ptr @rcar_pci_driver_init, section ".initcall6.init", align 4
@rcar_pci_driver = internal global %struct.platform_driver { ptr @rcar_pci_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @rcar_pci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [14 x i8] c"pci-rcar-gen2\00", align 1
@rcar_pci_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pci-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pci-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pci-r8a7794\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pci-rcar-gen2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"no valid irq found\0A\00", align 1
@rcar_pci_ops = internal global %struct.pci_ops { ptr null, ptr null, ptr @rcar_pci_cfg_base, ptr @pci_generic_config_read, ptr @pci_generic_config_write }, align 4
@pci_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"PCI: revision %x\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"\014unknown window size %ld - defaulting to 256M\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pci_rcar_gen2__229_342_rcar_pci_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rcar_pci_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_pci_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_pci_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %2, i32 noundef 48) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %102, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 0, i32 16
  %7 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 0, i32 4
  store ptr %6, ptr %7, align 4
  %8 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #5
  %9 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %8) #5
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = ptrtoint ptr %9 to i32
  br label %102

13:                                               ; preds = %5
  %14 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 1) #5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %102, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %14, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %102, label %19

19:                                               ; preds = %16
  %20 = and i32 %17, 65535
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %102

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 1, i32 0, i32 0, i32 1, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %23, ptr noundef nonnull align 4 dereferenceable(32) %14, i32 32, i1 false)
  %24 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 1, i32 0, i32 2
  store ptr %8, ptr %24, align 4
  %25 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %26 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 1, i32 0, i32 3
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 1, i32 0, i32 0, i32 1
  store ptr %9, ptr %27, align 4
  store ptr %2, ptr %6, align 4
  %28 = icmp slt i32 %25, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  %30 = load i32, ptr %26, align 4
  br label %102

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.pci_host_bridge, ptr %3, i32 0, i32 2
  store ptr @rcar_pci_ops, ptr %32, align 4
  %33 = load i32, ptr @pci_flags, align 4
  %34 = or i32 %33, 2
  store i32 %34, ptr @pci_flags, align 4
  %35 = getelementptr %struct.pci_host_bridge, ptr %3, i32 0, i32 8
  br label %36

36:                                               ; preds = %40, %31
  %37 = phi ptr [ %35, %31 ], [ %38, %40 ]
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %35
  br i1 %39, label %60, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.resource_entry, ptr %38, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.resource, ptr %42, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 7936
  %46 = icmp eq i32 %45, 512
  br i1 %46, label %47, label %36

47:                                               ; preds = %40
  %48 = icmp eq ptr %38, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %47
  %50 = load i32, ptr %42, align 4
  %51 = getelementptr inbounds %struct.resource_entry, ptr %38, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = sub i32 %50, %52
  %54 = getelementptr inbounds %struct.resource, ptr %42, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = sub i32 1, %50
  %57 = add i32 %56, %55
  %58 = or i32 %50, 3
  %59 = or i32 %53, 8
  br label %60

60:                                               ; preds = %49, %47, %36
  %61 = phi i32 [ %57, %49 ], [ 1073741824, %47 ], [ 1073741824, %36 ]
  %62 = phi i32 [ %58, %49 ], [ 1073741827, %47 ], [ 1073741827, %36 ]
  %63 = phi i32 [ %59, %49 ], [ 1073741832, %47 ], [ 1073741832, %36 ]
  tail call void @pm_runtime_enable(ptr noundef %2) #5
  %64 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #5
  %65 = getelementptr i8, ptr %9, i32 2120
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %66) #6
  %67 = getelementptr i8, ptr %9, i32 2100
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %69 = and i32 %68, -262
  %70 = or i32 %69, 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %70) #5, !srcloc !11
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 858992) #5
  %72 = and i32 %68, -3336
  switch i32 %61, label %79 [
    i32 -2147483648, label %73
    i32 1073741824, label %75
    i32 536870912, label %77
    i32 268435456, label %81
  ]

73:                                               ; preds = %60
  %74 = or i32 %72, 3072
  br label %81

75:                                               ; preds = %60
  %76 = or i32 %72, 2048
  br label %81

77:                                               ; preds = %60
  %78 = or i32 %72, 1024
  br label %81

79:                                               ; preds = %60
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %61) #6
  br label %81

81:                                               ; preds = %79, %77, %75, %73, %60
  %82 = phi i32 [ %78, %77 ], [ %76, %75 ], [ %74, %73 ], [ %72, %60 ], [ %72, %79 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %82) #5, !srcloc !11
  %83 = getelementptr i8, ptr %9, i32 2096
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 131207) #5, !srcloc !11
  %84 = getelementptr i8, ptr %9, i32 2112
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %86 = or i32 %85, 4099
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %86) #5, !srcloc !11
  %87 = getelementptr i8, ptr %9, i32 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %62) #5, !srcloc !11
  %88 = load i32, ptr %23, align 4
  %89 = or i32 %88, 6
  %90 = getelementptr i8, ptr %9, i32 2068
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %89) #5, !srcloc !11
  %91 = getelementptr i8, ptr %9, i32 2064
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 1073741834) #5, !srcloc !11
  %92 = getelementptr i8, ptr %9, i32 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %63) #5, !srcloc !11
  %93 = load ptr, ptr %24, align 4
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, 2048
  %96 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %95) #5, !srcloc !11
  %97 = getelementptr i8, ptr %9, i32 4
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %99 = or i32 %98, 326
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %99) #5, !srcloc !11
  %100 = getelementptr i8, ptr %9, i32 2080
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 720896) #5, !srcloc !11
  %101 = tail call i32 @pci_host_probe(ptr noundef nonnull %3) #5
  br label %102

102:                                              ; preds = %81, %29, %19, %16, %13, %11, %1
  %103 = phi i32 [ %12, %11 ], [ %30, %29 ], [ %101, %81 ], [ -12, %1 ], [ -19, %16 ], [ -19, %13 ], [ -22, %19 ]
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rcar_pci_cfg_base(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = and i32 %1, 7
  %10 = icmp eq i32 %9, 0
  %11 = and i1 %10, %8
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = lshr i32 %1, 3
  %14 = and i32 %13, 31
  %15 = icmp ugt i32 %14, 2
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = icmp eq i32 %14, 0
  %18 = icmp sgt i32 %2, 63
  %19 = and i1 %18, %17
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = select i1 %17, i32 1073741834, i32 -2147483638
  %22 = getelementptr inbounds %struct.rcar_pci, ptr %5, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 2064
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %21) #5, !srcloc !11
  %25 = load ptr, ptr %22, align 4
  %26 = shl nuw nsw i32 %14, 7
  %27 = and i32 %26, 3840
  %28 = getelementptr i8, ptr %25, i32 %27
  %29 = getelementptr i8, ptr %28, i32 %2
  br label %30

30:                                               ; preds = %20, %16, %12, %3
  %31 = phi ptr [ %29, %20 ], [ null, %3 ], [ null, %12 ], [ null, %16 ]
  ret ptr %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 3066356}
!9 = !{i64 2150605809}
!10 = !{i64 2150607031}
!11 = !{i64 3065938}
