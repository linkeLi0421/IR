; ModuleID = '/llk/IR/drivers/char/hw_random/ks-sa-rng.c_pt.bc'
source_filename = "../drivers/char/hw_random/ks-sa-rng.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.ks_sa_rng = type { ptr, %struct.hwrng, ptr, ptr, ptr, i64, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.trng_regs = type { i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_ks_sa_rng__163_281_ks_sa_rng_driver_init6 = internal global ptr @ks_sa_rng_driver_init, section ".initcall6.init", align 4
@ks_sa_rng_driver = internal global %struct.platform_driver { ptr @ks_sa_rng_probe, ptr @ks_sa_rng_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ks_sa_rng_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ks_sa_rng_driver_exit = internal global ptr @ks_sa_rng_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description164 = internal constant [75 x i8] c"ks_sa_rng.description=Keystone NETCP SA H/W Random Number Generator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author165 = internal constant [51 x i8] c"ks_sa_rng.author=Vitaly Andrianov <vitalya@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file166 = internal constant [48 x i8] c"ks_sa_rng.file=drivers/char/hw_random/ks-sa-rng\00", section ".modinfo", align 1
@__UNIQUE_ID_license167 = internal constant [22 x i8] c"ks_sa_rng.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"ks-sa-rng\00", align 1
@ks_sa_rng_dt_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone-rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"ks_sa_hwrng\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ti,syscon-sa-cfg\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"syscon_node_to_regmap failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to enable SA power-domain\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author165, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file166, ptr @__UNIQUE_ID_license167, ptr @__exitcall_ks_sa_rng_driver_exit, ptr @__initcall__kmod_ks_sa_rng__163_281_ks_sa_rng_driver_init6, ptr @ks_sa_rng_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ks_sa_rng_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ks_sa_rng_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ks_sa_rng_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ks_sa_rng_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks_sa_rng_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 96, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %1
  store ptr %2, ptr %3, align 8
  %6 = getelementptr inbounds %struct.ks_sa_rng, ptr %3, i32 0, i32 1
  store ptr @.str.1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ks_sa_rng, ptr %3, i32 0, i32 1, i32 1
  store ptr @ks_sa_rng_init, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ks_sa_rng, ptr %3, i32 0, i32 1, i32 2
  store ptr @ks_sa_rng_cleanup, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ks_sa_rng, ptr %3, i32 0, i32 1, i32 3
  store ptr @ks_sa_rng_data_present, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ks_sa_rng, ptr %3, i32 0, i32 1, i32 4
  store ptr @ks_sa_rng_data_read, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ks_sa_rng, ptr %3, i32 0, i32 1, i32 5
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ks_sa_rng, ptr %3, i32 0, i32 1, i32 6
  %13 = getelementptr inbounds %struct.ks_sa_rng, ptr %3, i32 0, i32 1, i32 7
  store i16 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ks_sa_rng, ptr %3, i32 0, i32 1, i32 8
  %15 = ptrtoint ptr %2 to i32
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(28) %14, i8 0, i64 28, i1 false)
  store i32 %15, ptr %12, align 4
  %16 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %17 = getelementptr inbounds %struct.ks_sa_rng, ptr %3, i32 0, i32 4
  store ptr %16, ptr %17, align 8
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = ptrtoint ptr %16 to i32
  br label %41

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %23 = load ptr, ptr %22, align 8
  %24 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %23, ptr noundef nonnull @.str.2) #5
  %25 = getelementptr inbounds %struct.ks_sa_rng, ptr %3, i32 0, i32 3
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #6
  br label %41

28:                                               ; preds = %21
  tail call void @pm_runtime_enable(ptr noundef %2) #5
  %29 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #5
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #5, !srcloc !9
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 0, i32 -1, ptr elementtype(i32) %32) #5, !srcloc !10
  %34 = extractvalue { i32, i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  br label %37

37:                                               ; preds = %36, %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #6
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #5
  br label %41

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %39, align 8
  %40 = tail call i32 @devm_hwrng_register(ptr noundef %2, ptr noundef %6) #5
  br label %41

41:                                               ; preds = %38, %37, %27, %19, %1
  %42 = phi i32 [ %20, %19 ], [ -22, %27 ], [ %29, %37 ], [ %40, %38 ], [ -12, %1 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks_sa_rng_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #5
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks_sa_rng_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = inttoptr i32 %3 to ptr
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ks_sa_rng, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @clk_get_rate(ptr noundef %8) #5
  %10 = getelementptr inbounds %struct.ks_sa_rng, ptr %6, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 8, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %13 = getelementptr inbounds %struct.ks_sa_rng, ptr %6, i32 0, i32 4
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.trng_regs, ptr %14, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #5, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %16 = load ptr, ptr %13, align 8
  %17 = getelementptr inbounds %struct.trng_regs, ptr %16, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #5, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %18 = load ptr, ptr %13, align 8
  %19 = getelementptr inbounds %struct.trng_regs, ptr %18, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 1) #5, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %20 = load ptr, ptr %13, align 8
  %21 = getelementptr inbounds %struct.trng_regs, ptr %20, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #5, !srcloc !13
  %22 = load ptr, ptr %13, align 8
  %23 = getelementptr inbounds %struct.trng_regs, ptr %22, i32 0, i32 5
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %25 = or i32 %24, 1024
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %26 = load ptr, ptr %13, align 8
  %27 = getelementptr inbounds %struct.trng_regs, ptr %26, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #5, !srcloc !13
  %28 = zext i32 %9 to i64
  %29 = add nuw nsw i64 %28, 16777215999999999
  %30 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %29) #7
  %31 = extractvalue { i64, i64 } %30, 1
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds %struct.ks_sa_rng, ptr %6, i32 0, i32 6
  store i32 %32, ptr %33, align 8
  %34 = tail call i64 @ktime_get() #5
  %35 = and i64 %31, 4294967295
  %36 = add i64 %34, %35
  %37 = getelementptr inbounds %struct.ks_sa_rng, ptr %6, i32 0, i32 5
  store i64 %36, ptr %37, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ks_sa_rng_cleanup(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = inttoptr i32 %3 to ptr
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %7 = getelementptr inbounds %struct.ks_sa_rng, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.trng_regs, ptr %8, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #5, !srcloc !13
  %10 = getelementptr inbounds %struct.ks_sa_rng, ptr %6, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 8, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks_sa_rng_data_present(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i64 @ktime_get() #5
  %9 = icmp ne i32 %1, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ks_sa_rng, ptr %7, i32 0, i32 5
  %12 = load i64, ptr %11, align 8
  %13 = icmp ugt i64 %12, %8
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = sub i64 %12, %8
  %16 = trunc i64 %15 to i32
  %17 = add i32 %16, 999
  %18 = udiv i32 %17, 1000
  %19 = add nuw nsw i32 %18, 5
  tail call void @usleep_range_state(i32 noundef %18, i32 noundef %19, i32 noundef 2) #5
  br label %20

20:                                               ; preds = %14, %10, %2
  %21 = getelementptr inbounds %struct.ks_sa_rng, ptr %7, i32 0, i32 4
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.trng_regs, ptr %22, i32 0, i32 2
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  %27 = and i1 %9, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %20
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 1073740) #5
  %30 = load ptr, ptr %21, align 8
  %31 = getelementptr inbounds %struct.trng_regs, ptr %30, i32 0, i32 2
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #5, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %28
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 1073740) #5
  %37 = load ptr, ptr %21, align 8
  %38 = getelementptr inbounds %struct.trng_regs, ptr %37, i32 0, i32 2
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %35
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 1073740) #5
  %44 = load ptr, ptr %21, align 8
  %45 = getelementptr inbounds %struct.trng_regs, ptr %44, i32 0, i32 2
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #5, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 1073740) #5
  %51 = load ptr, ptr %21, align 8
  %52 = getelementptr inbounds %struct.trng_regs, ptr %51, i32 0, i32 2
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #5, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 1073740) #5
  br label %58

58:                                               ; preds = %56, %49, %42, %35, %28, %20
  %59 = phi i32 [ %25, %20 ], [ 1, %28 ], [ 1, %35 ], [ 1, %42 ], [ 1, %49 ], [ 0, %56 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ks_sa_rng_data_read(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.hwrng, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ks_sa_rng, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !22
  store i32 %10, ptr %1, align 4
  %11 = load ptr, ptr %8, align 8
  %12 = getelementptr inbounds %struct.trng_regs, ptr %11, i32 0, i32 1
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !23
  %14 = getelementptr i32, ptr %1, i32 1
  store i32 %13, ptr %14, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %15 = load ptr, ptr %8, align 8
  %16 = getelementptr inbounds %struct.trng_regs, ptr %15, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 1) #5, !srcloc !13
  %17 = tail call i64 @ktime_get() #5
  %18 = getelementptr inbounds %struct.ks_sa_rng, ptr %7, i32 0, i32 6
  %19 = load i32, ptr %18, align 8
  %20 = zext i32 %19 to i64
  %21 = add i64 %17, %20
  %22 = getelementptr inbounds %struct.ks_sa_rng, ptr %7, i32 0, i32 5
  store i64 %21, ptr %22, align 8
  ret i32 8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_hwrng_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readnone }

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
!8 = !{i64 2148174907}
!9 = !{i64 674014, i64 2148163985, i64 2148164011, i64 2148164058, i64 2148164080, i64 2148164108, i64 2148164128}
!10 = !{i64 660583, i64 660608, i64 660630, i64 660646, i64 660658, i64 660678, i64 660702, i64 660718, i64 660730}
!11 = !{i64 2148175033}
!12 = !{i64 2151446309}
!13 = !{i64 2883118}
!14 = !{i64 2151446648}
!15 = !{i64 2151447002}
!16 = !{i64 2151447339}
!17 = !{i64 2883536}
!18 = !{i64 2151447842}
!19 = !{i64 2151448124}
!20 = !{i64 2151448462}
!21 = !{i64 2151450369}
!22 = !{i64 2151449054}
!23 = !{i64 2151449424}
!24 = !{i64 2151449725}
