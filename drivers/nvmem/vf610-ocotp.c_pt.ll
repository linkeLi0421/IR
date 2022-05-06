; ModuleID = '/llk/IR/drivers/nvmem/vf610-ocotp.c_pt.bc'
source_filename = "../drivers/nvmem/vf610-ocotp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
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
%struct.vf610_ocotp = type { ptr, ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_nvmem_vf610_ocotp__166_252_vf610_ocotp_driver_init6 = internal global ptr @vf610_ocotp_driver_init, section ".initcall6.init", align 4
@vf610_ocotp_driver = internal global %struct.platform_driver { ptr @vf610_ocotp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ocotp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_vf610_ocotp_driver_exit = internal global ptr @vf610_ocotp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author167 = internal constant [71 x i8] c"nvmem_vf610_ocotp.author=Sanchayan Maity <sanchayan.maity@toradex.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description168 = internal constant [50 x i8] c"nvmem_vf610_ocotp.description=Vybrid OCOTP driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file169 = internal constant [55 x i8] c"nvmem_vf610_ocotp.file=drivers/nvmem/nvmem-vf610-ocotp\00", section ".modinfo", align 1
@__UNIQUE_ID_license170 = internal constant [33 x i8] c"nvmem_vf610_ocotp.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"vf610-ocotp\00", align 1
@ocotp_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed getting clock, err = %ld\0A\00", align 1
@ocotp_config = internal global %struct.nvmem_config { ptr null, ptr @.str.2, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, ptr null, i8 0, ptr @vf610_ocotp_read, ptr null, ptr null, i32 0, i32 4, i32 4, ptr null, i8 0, ptr null }, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ocotp\00", align 1
@base_to_fuse_addr_mappings = internal unnamed_addr constant [30 x [2 x i32]] [[2 x i32] [i32 1024, i32 0], [2 x i32] [i32 1040, i32 1], [2 x i32] [i32 1056, i32 2], [2 x i32] [i32 1104, i32 5], [2 x i32] [i32 1264, i32 15], [2 x i32] [i32 1536, i32 32], [2 x i32] [i32 1552, i32 33], [2 x i32] [i32 1568, i32 34], [2 x i32] [i32 1584, i32 35], [2 x i32] [i32 1600, i32 36], [2 x i32] [i32 1616, i32 37], [2 x i32] [i32 1632, i32 38], [2 x i32] [i32 1648, i32 39], [2 x i32] [i32 1776, i32 47], [2 x i32] [i32 2176, i32 56], [2 x i32] [i32 2192, i32 57], [2 x i32] [i32 2208, i32 58], [2 x i32] [i32 2224, i32 59], [2 x i32] [i32 2240, i32 60], [2 x i32] [i32 2256, i32 61], [2 x i32] [i32 2272, i32 62], [2 x i32] [i32 2288, i32 63], [2 x i32] [i32 3200, i32 120], [2 x i32] [i32 3216, i32 121], [2 x i32] [i32 3232, i32 122], [2 x i32] [i32 3248, i32 123], [2 x i32] [i32 3264, i32 124], [2 x i32] [i32 3280, i32 125], [2 x i32] [i32 3296, i32 126], [2 x i32] [i32 3312, i32 127]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_description168, ptr @__UNIQUE_ID_file169, ptr @__UNIQUE_ID_license170, ptr @__exitcall_vf610_ocotp_driver_exit, ptr @__initcall__kmod_nvmem_vf610_ocotp__166_252_vf610_ocotp_driver_init6, ptr @vf610_ocotp_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @vf610_ocotp_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vf610_ocotp_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @vf610_ocotp_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @vf610_ocotp_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_ocotp_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 20, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %7 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %6) #4
  store ptr %7, ptr %3, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %7 to i32
  br label %44

11:                                               ; preds = %5
  %12 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #4
  %13 = getelementptr inbounds %struct.vf610_ocotp, ptr %3, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = ptrtoint ptr %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %16) #5
  br label %44

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.vf610_ocotp, ptr %3, i32 0, i32 2
  store ptr %2, ptr %18, align 4
  %19 = tail call i32 @clk_get_rate(ptr noundef %12) #4
  %20 = udiv i32 %19, 50000000
  %21 = udiv i32 %19, 100000
  %22 = add nuw nsw i32 %21, 41
  %23 = udiv i32 %19, 25000000
  %24 = shl nuw nsw i32 %20, 12
  %25 = add nuw nsw i32 %24, 61440
  %26 = and i32 %25, 61440
  %27 = shl nuw nsw i32 %23, 16
  %28 = add nuw nsw i32 %27, 2686976
  %29 = and i32 %28, 4128768
  %30 = and i32 %22, 4095
  %31 = or i32 %29, %30
  %32 = or i32 %31, %26
  %33 = getelementptr inbounds %struct.vf610_ocotp, ptr %3, i32 0, i32 4
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %6, align 4
  %37 = add i32 %35, 1
  %38 = sub i32 %37, %36
  store i32 %38, ptr getelementptr inbounds (%struct.nvmem_config, ptr @ocotp_config, i32 0, i32 18), align 4
  store ptr %3, ptr getelementptr inbounds (%struct.nvmem_config, ptr @ocotp_config, i32 0, i32 21), align 4
  store ptr %2, ptr @ocotp_config, align 4
  %39 = tail call ptr @devm_nvmem_register(ptr noundef %2, ptr noundef nonnull @ocotp_config) #4
  %40 = getelementptr inbounds %struct.vf610_ocotp, ptr %3, i32 0, i32 3
  store ptr %39, ptr %40, align 4
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  %42 = ptrtoint ptr %39 to i32
  %43 = select i1 %41, i32 %42, i32 0
  br label %44

44:                                               ; preds = %17, %15, %9, %1
  %45 = phi i32 [ %10, %9 ], [ %16, %15 ], [ %43, %17 ], [ -12, %1 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_ocotp_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #2 {
  %5 = load ptr, ptr %0, align 4
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %78, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.vf610_ocotp, ptr %0, i32 0, i32 4
  %9 = getelementptr i8, ptr %5, i32 16
  %10 = getelementptr i8, ptr %5, i32 48
  %11 = getelementptr i8, ptr %5, i32 8
  %12 = getelementptr i8, ptr %5, i32 64
  br label %13

13:                                               ; preds = %72, %7
  %14 = phi i32 [ %1, %7 ], [ %76, %72 ]
  %15 = phi i32 [ %3, %7 ], [ %75, %72 ]
  %16 = phi ptr [ %2, %7 ], [ %74, %72 ]
  br label %17

17:                                               ; preds = %22, %13
  %18 = phi i32 [ %23, %22 ], [ 0, %13 ]
  %19 = getelementptr [30 x [2 x i32]], ptr @base_to_fuse_addr_mappings, i32 0, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %14
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = add nuw nsw i32 %18, 1
  %24 = icmp eq i32 %23, 30
  br i1 %24, label %72, label %17

25:                                               ; preds = %17
  %26 = getelementptr [30 x [2 x i32]], ptr @base_to_fuse_addr_mappings, i32 0, i32 %18, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %18, 536870911
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %72, label %30

30:                                               ; preds = %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %31 = load i32, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %31) #4, !srcloc !9
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %33 = and i32 %32, 256
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %39, %30
  %36 = phi i32 [ %37, %39 ], [ 100000, %30 ]
  %37 = add nsw i32 %36, -1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 2147480) #4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %42 = and i32 %41, 256
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %35

44:                                               ; preds = %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 512) #4, !srcloc !9
  br label %78

45:                                               ; preds = %39, %30
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 2147480) #4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !13
  %48 = and i32 %47, 65408
  %49 = and i32 %27, 127
  %50 = or i32 %48, %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %50) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 1) #4, !srcloc !9
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %52 = and i32 %51, 256
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %58, %45
  %55 = phi i32 [ %56, %58 ], [ 100000, %45 ]
  %56 = add nsw i32 %55, -1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 2147480) #4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %61 = and i32 %60, 256
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %54

63:                                               ; preds = %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 512) #4, !srcloc !9
  br label %78

64:                                               ; preds = %58, %45
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 2147480) #4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !16
  %67 = and i32 %66, 512
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 512) #4, !srcloc !9
  br label %70

70:                                               ; preds = %69, %64
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !18
  br label %72

72:                                               ; preds = %70, %25, %22
  %73 = phi i32 [ %71, %70 ], [ 0, %25 ], [ 0, %22 ]
  store i32 %73, ptr %16, align 4
  %74 = getelementptr i32, ptr %16, i32 1
  %75 = add i32 %15, -4
  %76 = add i32 %14, 4
  %77 = icmp eq i32 %75, 0
  br i1 %77, label %78, label %13

78:                                               ; preds = %72, %63, %44, %4
  %79 = phi i32 [ -110, %44 ], [ -110, %63 ], [ 0, %4 ], [ 0, %72 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 2151477852}
!9 = !{i64 3649684}
!10 = !{i64 3650102}
!11 = !{i64 2151473129}
!12 = !{i64 2151474043}
!13 = !{i64 2151478321}
!14 = !{i64 2151480632}
!15 = !{i64 2151480943}
!16 = !{i64 2151481366}
!17 = !{i64 2151482411}
!18 = !{i64 2151482903}
