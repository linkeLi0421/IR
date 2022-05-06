; ModuleID = '/llk/IR/drivers/gpio/gpio-bcm-kona.c_pt.bc'
source_filename = "../drivers/gpio/gpio-bcm-kona.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bcm_kona_gpio = type { ptr, i32, %struct.raw_spinlock, %struct.gpio_chip, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.bcm_kona_gpio_bank = type { i32, i32, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_gpio_bcm_kona__206_672_bcm_kona_gpio_driver_init6 = internal global ptr @bcm_kona_gpio_driver_init, section ".initcall6.init", align 4
@bcm_kona_gpio_driver = internal global %struct.platform_driver { ptr @bcm_kona_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_kona_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [14 x i8] c"bcm-kona-gpio\00", align 1
@bcm_kona_gpio_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,kona-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to find gpio controller\0A\00", align 1
@template_chip = internal unnamed_addr constant %struct.gpio_chip { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr @bcm_kona_gpio_request, ptr @bcm_kona_gpio_free, ptr @bcm_kona_gpio_get_dir, ptr @bcm_kona_gpio_direction_input, ptr @bcm_kona_gpio_direction_output, ptr @bcm_kona_gpio_get, ptr null, ptr @bcm_kona_gpio_set, ptr null, ptr @bcm_kona_gpio_set_config, ptr @bcm_kona_gpio_to_irq, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Couldn't determine # GPIO banks\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Couldn't determine GPIO banks\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Too many GPIO banks configured (max=%d)\0A\00", align 1
@bcm_kona_irq_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @bcm_kona_gpio_irq_map, ptr @bcm_kona_gpio_irq_unmap, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Couldn't allocate IRQ domain\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Couldn't get IRQ for bank %d\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Setting up Kona GPIO\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Couldn't add GPIO chip -- %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Debounce value %u not in range\0A\00", align 1
@bcm_gpio_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr @bcm_kona_gpio_irq_ack, ptr @bcm_kona_gpio_irq_mask, ptr null, ptr @bcm_kona_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @bcm_kona_gpio_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_kona_gpio_irq_reqres, ptr @bcm_kona_gpio_irq_relres, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"Invalid BCM GPIO irq type 0x%x\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_gpio_bcm_kona__206_672_bcm_kona_gpio_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_kona_gpio_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_match_device(ptr noundef nonnull @bcm_kona_gpio_of_match, ptr noundef %2) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #8
  br label %86

6:                                                ; preds = %1
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 328, i32 noundef 3520) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %86, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %7, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(304) %10, ptr noundef nonnull align 4 dereferenceable(304) @template_chip, i32 304, i1 false)
  %11 = tail call i32 @platform_irq_count(ptr noundef %0) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #8
  br label %86

14:                                               ; preds = %9
  %15 = icmp slt i32 %11, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %11, ptr noundef nonnull @.str.3) #7
  br label %86

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %7, i32 0, i32 1
  store i32 %11, ptr %19, align 4
  %20 = icmp ugt i32 %11, 8
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 8) #8
  br label %86

22:                                               ; preds = %18
  %23 = mul nuw nsw i32 %11, 12
  %24 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %23, i32 noundef 3520) #7
  %25 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %7, i32 0, i32 5
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %86, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %7, i32 0, i32 6
  store ptr %0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %29, align 8
  %30 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %7, i32 0, i32 3, i32 2
  store ptr %2, ptr %30, align 4
  %31 = trunc i32 %11 to i16
  %32 = shl nuw nsw i16 %31, 5
  %33 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %7, i32 0, i32 3, i32 20
  store i16 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %35 = load ptr, ptr %34, align 8
  %36 = zext i16 %32 to i32
  %37 = icmp eq ptr %35, null
  %38 = getelementptr inbounds %struct.device_node, ptr %35, i32 0, i32 3
  %39 = select i1 %37, ptr null, ptr %38
  %40 = tail call ptr @__irq_domain_add(ptr noundef %39, i32 noundef %36, i32 noundef %36, i32 noundef 0, ptr noundef nonnull @bcm_kona_irq_ops, ptr noundef nonnull %7) #7
  %41 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %7, i32 0, i32 4
  store ptr %40, ptr %41, align 4
  %42 = icmp eq ptr %40, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #8
  br label %86

44:                                               ; preds = %27
  %45 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  store ptr %45, ptr %7, align 4
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, ptr %19, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %52, label %65

50:                                               ; preds = %44
  %51 = ptrtoint ptr %45 to i32
  br label %83

52:                                               ; preds = %61, %47
  %53 = phi i32 [ %62, %61 ], [ 0, %47 ]
  %54 = load ptr, ptr %25, align 4
  %55 = getelementptr %struct.bcm_kona_gpio_bank, ptr %54, i32 %53
  store i32 %53, ptr %55, align 4
  %56 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef %53) #7
  %57 = getelementptr %struct.bcm_kona_gpio_bank, ptr %54, i32 %53, i32 1
  store i32 %56, ptr %57, align 4
  %58 = getelementptr %struct.bcm_kona_gpio_bank, ptr %54, i32 %53, i32 2
  store ptr %7, ptr %58, align 4
  %59 = icmp slt i32 %56, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %53) #8
  br label %83

61:                                               ; preds = %52
  %62 = add nuw nsw i32 %53, 1
  %63 = load i32, ptr %19, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %52, label %65

65:                                               ; preds = %61, %47
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.7) #8
  tail call fastcc void @bcm_kona_gpio_reset(ptr noundef nonnull %7)
  %66 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %2, ptr noundef %10, ptr noundef nonnull %7, ptr noundef null, ptr noundef null) #7
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr %19, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %72, label %81

71:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %66) #8
  br label %83

72:                                               ; preds = %72, %68
  %73 = phi i32 [ %78, %72 ], [ 0, %68 ]
  %74 = load ptr, ptr %25, align 4
  %75 = getelementptr %struct.bcm_kona_gpio_bank, ptr %74, i32 %73
  %76 = getelementptr %struct.bcm_kona_gpio_bank, ptr %74, i32 %73, i32 1
  %77 = load i32, ptr %76, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %77, ptr noundef nonnull @bcm_kona_gpio_irq_handler, ptr noundef %75) #7
  %78 = add nuw nsw i32 %73, 1
  %79 = load i32, ptr %19, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %72, label %81

81:                                               ; preds = %72, %68
  %82 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %7, i32 0, i32 2
  store i32 0, ptr %82, align 4
  br label %86

83:                                               ; preds = %71, %60, %50
  %84 = phi i32 [ %51, %50 ], [ -2, %60 ], [ %66, %71 ]
  %85 = load ptr, ptr %41, align 4
  tail call void @irq_domain_remove(ptr noundef %85) #7
  br label %86

86:                                               ; preds = %83, %81, %43, %22, %21, %16, %13, %6, %5
  %87 = phi i32 [ %17, %16 ], [ -6, %21 ], [ %84, %83 ], [ 0, %81 ], [ -6, %43 ], [ -2, %13 ], [ -19, %5 ], [ -12, %6 ], [ -12, %22 ]
  ret i32 %87
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm_kona_gpio_reset(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %2, i32 1312
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %17, %8 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 10855681) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %10 = shl i32 %9, 2
  %11 = add i32 %10, 1280
  %12 = getelementptr i8, ptr %2, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %13 = add i32 %10, 160
  %14 = getelementptr i8, ptr %2, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 -1) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  %15 = add i32 %10, 128
  %16 = getelementptr i8, ptr %2, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 -1) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 10855681) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 -1) #7, !srcloc !9
  %17 = add nuw nsw i32 %9, 1
  %18 = load i32, ptr %3, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %8, label %20

20:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_kona_gpio_irq_handler(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  %3 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %12(ptr noundef %15) #7
  br label %24

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %18(ptr noundef %19) #7
  %20 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  tail call void %21(ptr noundef %19) #7
  br label %24

24:                                               ; preds = %23, %16, %14, %1
  %25 = getelementptr inbounds %struct.bcm_kona_gpio_bank, ptr %4, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %4, align 4
  %29 = shl i32 %28, 2
  %30 = add i32 %29, 128
  %31 = getelementptr i8, ptr %27, i32 %30
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #7, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %33 = add i32 %29, 160
  %34 = getelementptr i8, ptr %27, i32 %33
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #7, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %36 = xor i32 %35, -1
  %37 = and i32 %32, %36
  store i32 %37, ptr %2, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %63, label %39

39:                                               ; preds = %24
  %40 = shl i32 %28, 5
  br label %47

41:                                               ; preds = %50, %47
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #7, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #7, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  store i32 %45, ptr %2, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %41, %39
  %48 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #7
  %49 = icmp slt i32 %48, 32
  br i1 %49, label %50, label %41

50:                                               ; preds = %50, %47
  %51 = phi i32 [ %61, %50 ], [ %48, %47 ]
  %52 = add i32 %51, %40
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  call void @arm_heavy_mb() #7
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #7, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !17
  %54 = shl nuw i32 1, %51
  %55 = or i32 %53, %54
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %55) #7, !srcloc !9
  %56 = load ptr, ptr %25, align 4
  %57 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %56, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = call i32 @generic_handle_domain_irq(ptr noundef %58, i32 noundef %52) #7
  %60 = add nsw i32 %51, 1
  %61 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %60) #7
  %62 = icmp slt i32 %61, 32
  br i1 %62, label %50, label %41

63:                                               ; preds = %41, %24
  %64 = load ptr, ptr %7, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 9
  %68 = load ptr, ptr %67, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi ptr [ %68, %66 ], [ %64, %63 ]
  %71 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %70(ptr noundef %71) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_request(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %3, i32 0, i32 2
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = load ptr, ptr %3, align 4
  %7 = lshr i32 %1, 3
  %8 = and i32 %7, 536870908
  %9 = add nuw nsw i32 %8, 1280
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %12 = shl nuw i32 1, %1
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %16 = getelementptr i8, ptr %15, i32 1312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 10855681) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %17 = getelementptr i8, ptr %15, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #7, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_kona_gpio_free(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %3, i32 0, i32 2
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = load ptr, ptr %3, align 4
  %7 = lshr i32 %1, 3
  %8 = and i32 %7, 536870908
  %9 = add nuw nsw i32 %8, 1280
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  %12 = shl nuw i32 1, %1
  %13 = or i32 %11, %12
  %14 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %15 = getelementptr i8, ptr %14, i32 1312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 10855681) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %16 = getelementptr i8, ptr %14, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #7, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_get_dir(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %4 = load ptr, ptr %3, align 4
  %5 = shl i32 %1, 2
  %6 = add i32 %5, 256
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %3, i32 0, i32 2
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %7 = shl i32 %1, 2
  %8 = add i32 %7, 256
  %9 = getelementptr i8, ptr %4, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  %11 = or i32 %10, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %11) #7, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = and i32 %1, 31
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %5, i32 0, i32 2
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #7
  %9 = shl i32 %1, 2
  %10 = add i32 %9, 256
  %11 = getelementptr i8, ptr %6, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  %13 = and i32 %12, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %13) #7, !srcloc !9
  %14 = icmp eq i32 %2, 0
  %15 = lshr i32 %1, 3
  %16 = and i32 %15, 536870908
  %17 = select i1 %14, i32 96, i32 64
  %18 = add nuw nsw i32 %17, %16
  %19 = getelementptr i8, ptr %6, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !25
  %21 = shl nuw i32 1, %4
  %22 = or i32 %20, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %22) #7, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %3, i32 0, i32 2
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %7 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %8 = load ptr, ptr %7, align 4
  %9 = shl i32 %1, 2
  %10 = add i32 %9, 256
  %11 = getelementptr i8, ptr %8, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  %15 = lshr i32 %1, 3
  %16 = and i32 %15, 536870908
  %17 = add nuw nsw i32 %16, 32
  %18 = select i1 %14, i32 %16, i32 %17
  %19 = and i32 %1, 31
  %20 = getelementptr i8, ptr %4, i32 %18
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  %22 = lshr i32 %21, %19
  %23 = and i32 %22, 1
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_kona_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %4, i32 0, i32 2
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #7
  %8 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %9 = load ptr, ptr %8, align 4
  %10 = shl i32 %1, 2
  %11 = add i32 %10, 256
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = and i32 %1, 31
  %18 = icmp eq i32 %2, 0
  %19 = lshr i32 %1, 3
  %20 = and i32 %19, 536870908
  %21 = select i1 %18, i32 96, i32 64
  %22 = add nuw nsw i32 %21, %20
  %23 = getelementptr i8, ptr %5, i32 %22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !28
  %25 = shl nuw i32 1, %17
  %26 = or i32 %24, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %26) #7, !srcloc !9
  br label %27

27:                                               ; preds = %16, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_set_config(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = and i32 %2, 255
  %5 = icmp eq i32 %4, 11
  br i1 %5, label %6, label %48

6:                                                ; preds = %3
  %7 = lshr i32 %2, 8
  %8 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %9 = load ptr, ptr %8, align 4
  %10 = add nsw i32 %7, -1
  %11 = icmp ult i32 %10, 999
  %12 = icmp ugt i32 %2, 32768255
  %13 = or i1 %12, %11
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.9, i32 noundef %7) #8
  br label %48

17:                                               ; preds = %6
  %18 = icmp ult i32 %2, 256
  br i1 %18, label %35, label %19

19:                                               ; preds = %17
  %20 = udiv i32 %2, 256000
  %21 = icmp ult i32 %2, 256000
  %22 = tail call i32 @llvm.ctlz.i32(i32 %20, i1 false) #7, !range !30
  %23 = sub nuw nsw i32 32, %22
  %24 = select i1 %21, i32 0, i32 %23
  %25 = add nsw i32 %24, -1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %19
  %28 = add nsw i32 %24, -2
  %29 = shl nuw nsw i32 1, %28
  %30 = and i32 %29, %20
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 %25, i32 %24
  %33 = shl nsw i32 %32, 5
  %34 = or i32 %33, 256
  br label %35

35:                                               ; preds = %27, %19, %17
  %36 = phi i32 [ 256, %19 ], [ 256, %17 ], [ %34, %27 ]
  %37 = phi i32 [ %20, %19 ], [ 0, %17 ], [ %20, %27 ]
  %38 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %8, i32 0, i32 2
  %39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #7
  %40 = shl i32 %1, 2
  %41 = add i32 %40, 256
  %42 = getelementptr i8, ptr %9, i32 %41
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !31
  %44 = and i32 %43, -481
  %45 = icmp eq i32 %37, 0
  %46 = select i1 %45, i32 0, i32 %36
  %47 = or i32 %44, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %47) #7, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %39) #7
  br label %48

48:                                               ; preds = %35, %14, %3
  %49 = phi i32 [ -524, %3 ], [ -22, %14 ], [ 0, %35 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_to_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %3, i32 0, i32 3, i32 20
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %3, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @irq_create_mapping_affinity(ptr noundef %10, i32 noundef %1, ptr noundef null) #7
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ %11, %8 ], [ -6, %2 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_irq_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @bcm_gpio_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #7
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 1024) #7
  br label %9

9:                                                ; preds = %8, %3
  %10 = phi i32 [ 0, %8 ], [ %6, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_kona_gpio_irq_unmap(ptr nocapture noundef readnone %0, i32 noundef %1) #2 {
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #7
  %3 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_kona_gpio_irq_ack(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 31
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %6, i32 0, i32 2
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #7
  %10 = lshr i32 %3, 3
  %11 = and i32 %10, 536870908
  %12 = add nuw nsw i32 %11, 128
  %13 = getelementptr i8, ptr %7, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !33
  %15 = shl nuw i32 1, %4
  %16 = or i32 %14, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %16) #7, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_kona_gpio_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 31
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %6, i32 0, i32 2
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #7
  %10 = lshr i32 %3, 3
  %11 = and i32 %10, 536870908
  %12 = add nuw nsw i32 %11, 160
  %13 = getelementptr i8, ptr %7, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !35
  %15 = shl nuw i32 1, %4
  %16 = or i32 %14, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %16) #7, !srcloc !9
  %17 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %6, i32 0, i32 3
  tail call void @gpiochip_disable_irq(ptr noundef %17, i32 noundef %3) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_kona_gpio_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 31
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %6, i32 0, i32 2
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #7
  %10 = lshr i32 %3, 3
  %11 = and i32 %10, 536870908
  %12 = add nuw nsw i32 %11, 192
  %13 = getelementptr i8, ptr %7, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !37
  %15 = shl nuw i32 1, %4
  %16 = or i32 %14, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !38
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %16) #7, !srcloc !9
  %17 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %6, i32 0, i32 3
  tail call void @gpiochip_enable_irq(ptr noundef %17, i32 noundef %3) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = and i32 %1, 15
  %6 = add nsw i32 %5, -1
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %4, i32 0, i32 3, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.10, i32 noundef %1) #8
  br label %24

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %4, i32 0, i32 2
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #7
  %17 = shl i32 %14, 2
  %18 = add i32 %17, 256
  %19 = getelementptr i8, ptr %12, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !39
  %21 = and i32 %20, -25
  %22 = shl nuw nsw i32 %5, 3
  %23 = or i32 %21, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %23) #7, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #7
  br label %24

24:                                               ; preds = %11, %8
  %25 = phi i32 [ -22, %8 ], [ 0, %11 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_kona_gpio_irq_reqres(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @gpiochip_reqres_irq(ptr noundef %4, i32 noundef %6) #7
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_kona_gpio_irq_relres(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bcm_kona_gpio, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  tail call void @gpiochip_relres_irq(ptr noundef %4, i32 noundef %6) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_disable_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_enable_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_reqres_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_relres_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i64 2152361232}
!9 = !{i64 895584}
!10 = !{i64 2152361633}
!11 = !{i64 2152381990}
!12 = !{i64 2152382398}
!13 = !{i64 896002}
!14 = !{i64 2152379346}
!15 = !{i64 2152379798}
!16 = !{i64 2152381081}
!17 = !{i64 2152381665}
!18 = !{i64 2152363611}
!19 = !{i64 2152362543}
!20 = !{i64 2152364375}
!21 = !{i64 2152367478}
!22 = !{i64 2152367743}
!23 = !{i64 2152368880}
!24 = !{i64 2152369145}
!25 = !{i64 2152369718}
!26 = !{i64 2152369984}
!27 = !{i64 2152366475}
!28 = !{i64 2152365110}
!29 = !{i64 2152365376}
!30 = !{i32 0, i32 33}
!31 = !{i64 2152371747}
!32 = !{i64 2152372025}
!33 = !{i64 2152373199}
!34 = !{i64 2152373525}
!35 = !{i64 2152374677}
!36 = !{i64 2152375003}
!37 = !{i64 2152376155}
!38 = !{i64 2152376481}
!39 = !{i64 2152378239}
!40 = !{i64 2152378495}
