; ModuleID = '/llk/IR/drivers/nvmem/bcm-ocotp.c_pt.bc'
source_filename = "../drivers/nvmem/bcm-ocotp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.otpc_map = type { i32, [4 x i16], [4 x i16] }
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
%struct.otpc_priv = type { ptr, ptr, ptr, ptr }

@__initcall__kmod_nvmem_bcm_ocotp__166_323_bcm_otpc_driver_init6 = internal global ptr @bcm_otpc_driver_init, section ".initcall6.init", align 4
@bcm_otpc_driver = internal global %struct.platform_driver { ptr @bcm_otpc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_otpc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_bcm_otpc_driver_exit = internal global ptr @bcm_otpc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description167 = internal constant [49 x i8] c"nvmem_bcm_ocotp.description=Broadcom OTPC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file168 = internal constant [51 x i8] c"nvmem_bcm_ocotp.file=drivers/nvmem/nvmem-bcm-ocotp\00", section ".modinfo", align 1
@__UNIQUE_ID_license169 = internal constant [31 x i8] c"nvmem_bcm_ocotp.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"brcm-otpc\00", align 1
@bcm_otpc_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @otp_map }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,ocotp-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @otp_map_v2 }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unable to map I/O memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"brcm,ocotp-size\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"size parameter not specified\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"size must be > 0\0A\00", align 1
@bcm_otpc_nvmem_config = internal global %struct.nvmem_config { ptr null, ptr @.str.6, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, ptr null, i8 0, ptr @bcm_otpc_read, ptr @bcm_otpc_write, ptr null, i32 0, i32 4, i32 4, ptr null, i8 0, ptr null }, align 4
@otp_map_v2 = internal global %struct.otpc_map { i32 2, [4 x i16] [i16 16, i16 92, i16 0, i16 0], [4 x i16] [i16 44, i16 100, i16 0, i16 0] }, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"error registering nvmem config\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"bcm-ocotp\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"otp read error: 0x%x\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"otp write error: 0x%x\00", align 1
@otp_map = internal global %struct.otpc_map { i32 1, [4 x i16] [i16 16, i16 0, i16 0, i16 0], [4 x i16] [i16 44, i16 0, i16 0, i16 0] }, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description167, ptr @__UNIQUE_ID_file168, ptr @__UNIQUE_ID_license169, ptr @__exitcall_bcm_otpc_driver_exit, ptr @__initcall__kmod_nvmem_bcm_ocotp__166_323_bcm_otpc_driver_init6, ptr @bcm_otpc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm_otpc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_otpc_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm_otpc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_otpc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_otpc_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 16, i32 noundef 3520) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @device_get_match_data(ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.otpc_priv, ptr %4, i32 0, i32 2
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %38, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #5
  %12 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %11) #5
  %13 = getelementptr inbounds %struct.otpc_priv, ptr %4, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #6
  %16 = ptrtoint ptr %12 to i32
  br label %38

17:                                               ; preds = %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %19 = or i32 %18, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %19) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %20 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #5, !srcloc !12
  %21 = call i32 @device_property_read_u32_array(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef 1) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #6
  br label %38

24:                                               ; preds = %17
  %25 = load i32, ptr %2, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #6
  br label %38

28:                                               ; preds = %24
  %29 = shl i32 %25, 2
  store i32 %29, ptr getelementptr inbounds (%struct.nvmem_config, ptr @bcm_otpc_nvmem_config, i32 0, i32 18), align 4
  store ptr %3, ptr @bcm_otpc_nvmem_config, align 4
  store ptr %4, ptr getelementptr inbounds (%struct.nvmem_config, ptr @bcm_otpc_nvmem_config, i32 0, i32 21), align 4
  %30 = icmp eq ptr %7, @otp_map_v2
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 8, ptr getelementptr inbounds (%struct.nvmem_config, ptr @bcm_otpc_nvmem_config, i32 0, i32 19), align 4
  store i32 8, ptr getelementptr inbounds (%struct.nvmem_config, ptr @bcm_otpc_nvmem_config, i32 0, i32 20), align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = getelementptr inbounds %struct.otpc_priv, ptr %4, i32 0, i32 3
  store ptr @bcm_otpc_nvmem_config, ptr %33, align 4
  %34 = call ptr @devm_nvmem_register(ptr noundef %3, ptr noundef nonnull @bcm_otpc_nvmem_config) #5
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #6
  %37 = ptrtoint ptr %34 to i32
  br label %38

38:                                               ; preds = %36, %32, %27, %23, %15, %6, %1
  %39 = phi i32 [ %16, %15 ], [ -22, %23 ], [ -22, %27 ], [ %37, %36 ], [ -12, %1 ], [ -19, %6 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_otpc_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #2 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %68, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.otpc_priv, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvmem_config, ptr %8, i32 0, i32 19
  %10 = load i32, ptr %9, align 4
  %11 = udiv i32 %1, %10
  %12 = getelementptr inbounds %struct.otpc_priv, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.otpc_priv, ptr %0, i32 0, i32 2
  br label %14

14:                                               ; preds = %62, %6
  %15 = phi ptr [ %2, %6 ], [ %64, %62 ]
  %16 = phi i32 [ 0, %6 ], [ %63, %62 ]
  %17 = phi i32 [ %11, %6 ], [ %21, %62 ]
  %18 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %19 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #5, !srcloc !12
  %20 = load ptr, ptr %12, align 4
  %21 = add i32 %17, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %22 = and i32 %17, 65535
  %23 = getelementptr i8, ptr %20, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #5, !srcloc !12
  %24 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %25 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 1) #5, !srcloc !12
  %26 = load ptr, ptr %12, align 4
  %27 = getelementptr i8, ptr %26, i32 12
  br label %28

28:                                               ; preds = %33, %14
  %29 = phi i32 [ 0, %14 ], [ %35, %33 ]
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #5
  %35 = add nuw nsw i32 %29, 1
  %36 = icmp eq i32 %35, 5000
  br i1 %36, label %43, label %28

37:                                               ; preds = %28
  %38 = icmp eq i32 %29, 5000
  br i1 %38, label %43, label %39

39:                                               ; preds = %37
  %40 = load ptr, ptr %13, align 4
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %62, label %45

43:                                               ; preds = %37, %33
  %44 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.7, i32 noundef -11) #6
  br label %68

45:                                               ; preds = %45, %39
  %46 = phi ptr [ %59, %45 ], [ %40, %39 ]
  %47 = phi ptr [ %56, %45 ], [ %15, %39 ]
  %48 = phi i32 [ %57, %45 ], [ %16, %39 ]
  %49 = phi i32 [ %58, %45 ], [ 0, %39 ]
  %50 = load ptr, ptr %12, align 4
  %51 = getelementptr %struct.otpc_map, ptr %46, i32 0, i32 1, i32 %49
  %52 = load i16, ptr %51, align 2
  %53 = zext i16 %52 to i32
  %54 = getelementptr i8, ptr %50, i32 %53
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %56 = getelementptr i32, ptr %47, i32 1
  store i32 %55, ptr %47, align 4
  %57 = add i32 %48, 4
  %58 = add nuw i32 %49, 1
  %59 = load ptr, ptr %13, align 4
  %60 = load i32, ptr %59, align 4
  %61 = icmp ult i32 %58, %60
  br i1 %61, label %45, label %62

62:                                               ; preds = %45, %39
  %63 = phi i32 [ %16, %39 ], [ %57, %45 ]
  %64 = phi ptr [ %15, %39 ], [ %56, %45 ]
  %65 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %66 = getelementptr i8, ptr %65, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 0) #5, !srcloc !12
  %67 = icmp ult i32 %63, %3
  br i1 %67, label %14, label %68

68:                                               ; preds = %62, %43, %4
  %69 = phi i32 [ -5, %43 ], [ 0, %4 ], [ 0, %62 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_otpc_write(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.otpc_priv, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvmem_config, ptr %6, i32 0, i32 19
  %8 = load i32, ptr %7, align 4
  %9 = freeze i32 %8
  %10 = udiv i32 %1, %9
  %11 = mul i32 %10, %9
  %12 = sub i32 %1, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %171

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.otpc_priv, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %17 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 2) #5, !srcloc !12
  %18 = getelementptr i8, ptr %16, i32 44
  %19 = getelementptr i8, ptr %16, i32 8
  %20 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 15) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 1) #5, !srcloc !12
  br label %69

21:                                               ; preds = %81
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 4) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 1) #5, !srcloc !12
  br label %22

22:                                               ; preds = %29, %21
  %23 = phi i32 [ 0, %21 ], [ %31, %29 ]
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = icmp eq i32 %23, 5000
  br i1 %28, label %33, label %34

29:                                               ; preds = %22
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #5
  %31 = add nuw nsw i32 %23, 1
  %32 = icmp eq i32 %31, 5000
  br i1 %32, label %33, label %22

33:                                               ; preds = %29, %27
  br label %34

34:                                               ; preds = %33, %27
  %35 = phi i1 [ true, %27 ], [ false, %33 ]
  %36 = phi i32 [ 0, %27 ], [ -11, %33 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #5, !srcloc !12
  br i1 %35, label %37, label %95

37:                                               ; preds = %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 8) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 1) #5, !srcloc !12
  br label %38

38:                                               ; preds = %45, %37
  %39 = phi i32 [ 0, %37 ], [ %47, %45 ]
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %41 = and i32 %40, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = icmp eq i32 %39, 5000
  br i1 %44, label %49, label %50

45:                                               ; preds = %38
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #5
  %47 = add nuw nsw i32 %39, 1
  %48 = icmp eq i32 %47, 5000
  br i1 %48, label %49, label %38

49:                                               ; preds = %45, %43
  br label %50

50:                                               ; preds = %49, %43
  %51 = phi i1 [ true, %43 ], [ false, %49 ]
  %52 = phi i32 [ 0, %43 ], [ -11, %49 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #5, !srcloc !12
  br i1 %51, label %53, label %95

53:                                               ; preds = %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 13) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 1) #5, !srcloc !12
  br label %54

54:                                               ; preds = %61, %53
  %55 = phi i32 [ 0, %53 ], [ %63, %61 ]
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = icmp eq i32 %55, 5000
  br i1 %60, label %65, label %66

61:                                               ; preds = %54
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748) #5
  %63 = add nuw nsw i32 %55, 1
  %64 = icmp eq i32 %63, 5000
  br i1 %64, label %65, label %54

65:                                               ; preds = %61, %59
  br label %66

66:                                               ; preds = %65, %59
  %67 = phi i1 [ true, %59 ], [ false, %65 ]
  %68 = phi i32 [ 0, %59 ], [ -11, %65 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #5, !srcloc !12
  br i1 %67, label %84, label %95

69:                                               ; preds = %74, %14
  %70 = phi i32 [ 0, %14 ], [ %76, %74 ]
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %72 = and i32 %71, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748) #5
  %76 = add nuw nsw i32 %70, 1
  %77 = icmp eq i32 %76, 5000
  br i1 %77, label %80, label %69

78:                                               ; preds = %69
  %79 = icmp eq i32 %70, 5000
  br i1 %79, label %80, label %81

80:                                               ; preds = %78, %74
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i1 [ true, %78 ], [ false, %80 ]
  %83 = phi i32 [ 0, %78 ], [ -11, %80 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #5, !srcloc !12
  br i1 %82, label %21, label %95

84:                                               ; preds = %89, %66
  %85 = phi i32 [ %91, %89 ], [ 0, %66 ]
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %87 = and i32 %86, 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 214748) #5
  %91 = add nuw nsw i32 %85, 1
  %92 = icmp eq i32 %91, 5000
  br i1 %92, label %171, label %84

93:                                               ; preds = %84
  %94 = icmp eq i32 %85, 5000
  br i1 %94, label %171, label %98

95:                                               ; preds = %81, %66, %50, %34
  %96 = phi i32 [ %83, %81 ], [ %36, %34 ], [ %52, %50 ], [ %68, %66 ]
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %171

98:                                               ; preds = %95, %93
  %99 = getelementptr inbounds %struct.otpc_priv, ptr %0, i32 0, i32 2
  br label %100

100:                                              ; preds = %151, %98
  %101 = phi ptr [ %133, %151 ], [ %2, %98 ]
  %102 = phi i32 [ %134, %151 ], [ 0, %98 ]
  %103 = phi i32 [ %109, %151 ], [ %10, %98 ]
  %104 = icmp ult i32 %102, %3
  %105 = load ptr, ptr %15, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %106 = getelementptr i8, ptr %105, i32 4
  br i1 %104, label %107, label %158

107:                                              ; preds = %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 8) #5, !srcloc !12
  %108 = load ptr, ptr %15, align 4
  %109 = add i32 %103, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %110 = and i32 %103, 65535
  %111 = getelementptr i8, ptr %108, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %110) #5, !srcloc !12
  %112 = load ptr, ptr %99, align 4
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %132, label %115

115:                                              ; preds = %115, %107
  %116 = phi i32 [ %128, %115 ], [ 0, %107 ]
  %117 = phi i32 [ %127, %115 ], [ %102, %107 ]
  %118 = phi ptr [ %126, %115 ], [ %101, %107 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %119 = load i32, ptr %118, align 4
  %120 = load ptr, ptr %15, align 4
  %121 = load ptr, ptr %99, align 4
  %122 = getelementptr %struct.otpc_map, ptr %121, i32 0, i32 2, i32 %116
  %123 = load i16, ptr %122, align 2
  %124 = zext i16 %123 to i32
  %125 = getelementptr i8, ptr %120, i32 %124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %119) #5, !srcloc !12
  %126 = getelementptr i32, ptr %118, i32 1
  %127 = add i32 %117, 4
  %128 = add nuw i32 %116, 1
  %129 = load ptr, ptr %99, align 4
  %130 = load i32, ptr %129, align 4
  %131 = icmp ult i32 %128, %130
  br i1 %131, label %115, label %132

132:                                              ; preds = %115, %107
  %133 = phi ptr [ %101, %107 ], [ %126, %115 ]
  %134 = phi i32 [ %102, %107 ], [ %127, %115 ]
  %135 = load ptr, ptr %15, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %136 = getelementptr i8, ptr %135, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 1) #5, !srcloc !12
  %137 = load ptr, ptr %15, align 4
  %138 = getelementptr i8, ptr %137, i32 12
  br label %139

139:                                              ; preds = %144, %132
  %140 = phi i32 [ 0, %132 ], [ %146, %144 ]
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %142 = and i32 %141, 2
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %145(i32 noundef 214748) #5
  %146 = add nuw nsw i32 %140, 1
  %147 = icmp eq i32 %146, 5000
  br i1 %147, label %150, label %139

148:                                              ; preds = %139
  %149 = icmp eq i32 %140, 5000
  br i1 %149, label %150, label %151

150:                                              ; preds = %148, %144
  br label %151

151:                                              ; preds = %150, %148
  %152 = phi i1 [ true, %148 ], [ false, %150 ]
  %153 = phi i32 [ 0, %148 ], [ -11, %150 ]
  %154 = load ptr, ptr %15, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %155 = getelementptr i8, ptr %154, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 0) #5, !srcloc !12
  br i1 %152, label %100, label %156

156:                                              ; preds = %151
  %157 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %157, ptr noundef nonnull @.str.8, i32 noundef %153) #6
  br label %171

158:                                              ; preds = %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 3) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %159 = getelementptr i8, ptr %105, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 1) #5, !srcloc !12
  %160 = getelementptr i8, ptr %105, i32 12
  br label %161

161:                                              ; preds = %166, %158
  %162 = phi i32 [ 0, %158 ], [ %168, %166 ]
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %164 = and i32 %163, 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %167(i32 noundef 214748) #5
  %168 = add nuw nsw i32 %162, 1
  %169 = icmp eq i32 %168, 5000
  br i1 %169, label %170, label %161

170:                                              ; preds = %166, %161
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 0) #5, !srcloc !12
  br label %171

171:                                              ; preds = %170, %156, %95, %93, %89, %4
  %172 = phi i32 [ -5, %156 ], [ 0, %170 ], [ -22, %4 ], [ -5, %95 ], [ -5, %93 ], [ -5, %89 ]
  ret i32 %172
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!8 = !{!"auto-init"}
!9 = !{i64 2152005432}
!10 = !{i64 4352099}
!11 = !{i64 2152005930}
!12 = !{i64 4351681}
!13 = !{i64 2151999802}
!14 = !{i64 2151998042}
!15 = !{i64 2151998768}
!16 = !{i64 2151999325}
!17 = !{i64 2152000724}
!18 = !{i64 2152002895}
!19 = !{i64 2152000275}
!20 = !{i64 2152003113}
