; ModuleID = '/llk/IR/drivers/soc/qcom/spm.c_pt.bc'
source_filename = "../drivers/soc/qcom/spm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spm_reg_data = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [64 x i8], [4 x i8] }
%struct.spm_driver_data = type { ptr, ptr }
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

@__initcall__kmod_spm__166_277_qcom_spm_init3 = internal global ptr @qcom_spm_init, section ".initcall3.init", align 4
@__UNIQUE_ID_file167 = internal constant [30 x i8] c"spm.file=drivers/soc/qcom/spm\00", section ".modinfo", align 1
@__UNIQUE_ID_license168 = internal constant [19 x i8] c"spm.license=GPL v2\00", section ".modinfo", align 1
@spm_driver = internal global %struct.platform_driver { ptr @spm_dev_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spm_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"qcom_spm\00", align 1
@spm_match_table = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm660-gold-saw2-v4.1-l2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spm_reg_660_gold_l2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm660-silver-saw2-v4.1-l2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spm_reg_660_silver_l2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8226-saw2-v2.1-cpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spm_reg_8226_cpu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8916-saw2-v3.0-cpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spm_reg_8916_cpu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8974-saw2-v2.1-cpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spm_reg_8974_8084_cpu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8998-gold-saw2-v4.1-l2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spm_reg_8998_gold_l2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8998-silver-saw2-v4.1-l2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spm_reg_8998_silver_l2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,apq8084-saw2-v2.1-cpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spm_reg_8974_8084_cpu }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,apq8064-saw2-v1.1-cpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spm_reg_8064_cpu }, %struct.of_device_id zeroinitializer], align 4
@spm_reg_660_gold_l2 = internal constant %struct.spm_reg_data { ptr @spm_reg_offset_v4_1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 16842801, i32 72877144, [64 x i8] zeroinitializer, [4 x i8] zeroinitializer }, align 4
@spm_reg_660_silver_l2 = internal constant %struct.spm_reg_data { ptr @spm_reg_offset_v4_1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 16891953, i32 72877144, [64 x i8] zeroinitializer, [4 x i8] zeroinitializer }, align 4
@spm_reg_8998_gold_l2 = internal constant %struct.spm_reg_data { ptr @spm_reg_offset_v4_1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 16842801, i32 74450032, [64 x i8] zeroinitializer, [4 x i8] zeroinitializer }, align 4
@spm_reg_8998_silver_l2 = internal constant %struct.spm_reg_data { ptr @spm_reg_offset_v4_1, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, i32 16842801, i32 69207072, [64 x i8] zeroinitializer, [4 x i8] zeroinitializer }, align 4
@spm_reg_offset_v4_1 = internal constant [12 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2308, i16 2312], align 2
@spm_reg_offset_v2_1 = internal constant [12 x i16] [i16 8, i16 48, i16 52, i16 0, i16 0, i16 0, i16 0, i16 128, i16 0, i16 0, i16 0, i16 0], align 2
@spm_reg_8226_cpu = internal constant { ptr, i32, i32, i32, [2 x i32], i32, i32, <{ [25 x i8], [39 x i8] }>, [4 x i8] } { ptr @spm_reg_offset_v2_1, i32 0, i32 1007691776, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, <{ [25 x i8], [39 x i8] }> <{ [25 x i8] c"`\03`\0B\0F \10\800\90[`\03`;vv\0B\94[\80\10&0\0F", [39 x i8] zeroinitializer }>, [4 x i8] c"\00\00\05\00" }, align 4
@spm_reg_offset_v3_0 = internal constant [12 x i16] [i16 8, i16 48, i16 52, i16 0, i16 0, i16 0, i16 0, i16 1024, i16 0, i16 0, i16 0, i16 0], align 2
@spm_reg_8916_cpu = internal constant { ptr, i32, i32, i32, [2 x i32], i32, i32, <{ [25 x i8], [39 x i8] }>, [4 x i8] } { ptr @spm_reg_offset_v3_0, i32 1, i32 1007691776, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, <{ [25 x i8], [39 x i8] }> <{ [25 x i8] c"`\03`\0B\0F \10\800\90[`\03`;vv\0B\94[\80\10&0\0F", [39 x i8] zeroinitializer }>, [4 x i8] c"\00\00\05\00" }, align 4
@spm_reg_8974_8084_cpu = internal constant { ptr, i32, i32, i32, [2 x i32], i32, i32, <{ [21 x i8], [43 x i8] }>, [4 x i8] } { ptr @spm_reg_offset_v2_1, i32 1, i32 1007691776, i32 0, [2 x i32] zeroinitializer, i32 0, i32 0, <{ [21 x i8], [43 x i8] }> <{ [21 x i8] c"\03\0B\0F\00 \80\10\E8[\03;\E8[\82\10\0B0\06&0\0F", [43 x i8] zeroinitializer }>, [4 x i8] c"\00\00\03\00" }, align 4
@spm_reg_offset_v1_1 = internal constant [12 x i16] [i16 8, i16 32, i16 0, i16 36, i16 40, i16 44, i16 0, i16 128, i16 0, i16 0, i16 0, i16 0], align 2
@spm_reg_8064_cpu = internal constant { ptr, i32, i32, i32, [2 x i32], i32, i32, <{ [16 x i8], [48 x i8] }>, [4 x i8] } { ptr @spm_reg_offset_v1_1, i32 31, i32 0, i32 33685508, [2 x i32] [i32 8650908, i32 10747932], i32 0, i32 0, <{ [16 x i8], [48 x i8] }> <{ [16 x i8] c"\03\0F\00$T\10\09\03\01\10T0\0C$0\0F", [48 x i8] zeroinitializer }>, [4 x i8] c"\00\00\02\00" }, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_file167, ptr @__UNIQUE_ID_license168, ptr @__initcall__kmod_spm__166_277_qcom_spm_init3], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spm_set_low_power_mode(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.spm_driver_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.spm_reg_data, ptr %4, i32 0, i32 8, i32 %1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = load ptr, ptr %0, align 4
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i16, ptr %9, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %8, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #3, !srcloc !8
  %15 = and i32 %14, -2034
  %16 = shl nuw nsw i32 %7, 4
  %17 = or i32 %16, %15
  %18 = or i32 %17, 1
  %19 = load ptr, ptr %3, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i16, ptr %20, i32 1
  %22 = load i16, ptr %21, align 2
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %2
  %25 = load ptr, ptr %0, align 4
  %26 = zext i16 %22 to i32
  %27 = getelementptr i8, ptr %25, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %18) #3, !srcloc !9
  %28 = load ptr, ptr %0, align 4
  %29 = load ptr, ptr %3, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i16, ptr %30, i32 1
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr i8, ptr %28, i32 %33
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #3, !srcloc !8
  %36 = icmp eq i32 %35, %18
  br i1 %36, label %54, label %37

37:                                               ; preds = %37, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !11
  %38 = load ptr, ptr %0, align 4
  %39 = load ptr, ptr %3, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i16, ptr %40, i32 1
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = getelementptr i8, ptr %38, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %18) #3, !srcloc !9
  %45 = load ptr, ptr %0, align 4
  %46 = load ptr, ptr %3, align 4
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i16, ptr %47, i32 1
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  %51 = getelementptr i8, ptr %45, i32 %50
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #3, !srcloc !8
  %53 = icmp eq i32 %52, %18
  br i1 %53, label %54, label %37

54:                                               ; preds = %37, %24, %2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @qcom_spm_init() #1 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @spm_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spm_dev_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 8, i32 noundef 3520) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %176, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #3
  %7 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %6) #3
  store ptr %7, ptr %3, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %7 to i32
  br label %176

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = tail call ptr @of_match_node(ptr noundef nonnull @spm_match_table, ptr noundef %13) #3
  %15 = icmp eq ptr %14, null
  br i1 %15, label %176, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.of_device_id, ptr %14, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.spm_driver_data, ptr %3, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %20, align 8
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr i16, ptr %21, i32 7
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  %25 = getelementptr i8, ptr %7, i32 %24
  %26 = getelementptr inbounds %struct.spm_reg_data, ptr %18, i32 0, i32 7
  tail call void @__iowrite32_copy(ptr noundef %25, ptr noundef %26, i32 noundef 16) #3
  %27 = load ptr, ptr %19, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i16, ptr %28, i32 10
  %30 = load i16, ptr %29, align 2
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.spm_reg_data, ptr %27, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %3, align 4
  %36 = zext i16 %30 to i32
  %37 = getelementptr i8, ptr %35, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %34) #3, !srcloc !9
  %38 = load ptr, ptr %19, align 4
  %39 = load ptr, ptr %38, align 4
  br label %40

40:                                               ; preds = %32, %16
  %41 = phi ptr [ %28, %16 ], [ %39, %32 ]
  %42 = phi ptr [ %27, %16 ], [ %38, %32 ]
  %43 = getelementptr i16, ptr %41, i32 11
  %44 = load i16, ptr %43, align 2
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.spm_reg_data, ptr %42, i32 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %3, align 4
  %50 = zext i16 %44 to i32
  %51 = getelementptr i8, ptr %49, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %48) #3, !srcloc !9
  %52 = load ptr, ptr %19, align 4
  %53 = load ptr, ptr %52, align 4
  br label %54

54:                                               ; preds = %46, %40
  %55 = phi ptr [ %41, %40 ], [ %53, %46 ]
  %56 = phi ptr [ %42, %40 ], [ %52, %46 ]
  %57 = load i16, ptr %55, align 2
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.spm_reg_data, ptr %56, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = load ptr, ptr %3, align 4
  %63 = zext i16 %57 to i32
  %64 = getelementptr i8, ptr %62, i32 %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %61) #3, !srcloc !9
  %65 = load ptr, ptr %19, align 4
  %66 = load ptr, ptr %65, align 4
  br label %67

67:                                               ; preds = %59, %54
  %68 = phi ptr [ %55, %54 ], [ %66, %59 ]
  %69 = phi ptr [ %56, %54 ], [ %65, %59 ]
  %70 = getelementptr i16, ptr %68, i32 2
  %71 = load i16, ptr %70, align 2
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.spm_reg_data, ptr %69, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr %3, align 4
  %77 = zext i16 %71 to i32
  %78 = getelementptr i8, ptr %76, i32 %77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %75) #3, !srcloc !9
  %79 = load ptr, ptr %19, align 4
  %80 = load ptr, ptr %79, align 4
  br label %81

81:                                               ; preds = %73, %67
  %82 = phi ptr [ %68, %67 ], [ %80, %73 ]
  %83 = phi ptr [ %69, %67 ], [ %79, %73 ]
  %84 = getelementptr i16, ptr %82, i32 3
  %85 = load i16, ptr %84, align 2
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.spm_reg_data, ptr %83, i32 0, i32 3
  %89 = load i32, ptr %88, align 4
  %90 = load ptr, ptr %3, align 4
  %91 = zext i16 %85 to i32
  %92 = getelementptr i8, ptr %90, i32 %91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %89) #3, !srcloc !9
  %93 = load ptr, ptr %19, align 4
  %94 = load ptr, ptr %93, align 4
  br label %95

95:                                               ; preds = %87, %81
  %96 = phi ptr [ %82, %81 ], [ %94, %87 ]
  %97 = phi ptr [ %83, %81 ], [ %93, %87 ]
  %98 = getelementptr i16, ptr %96, i32 4
  %99 = load i16, ptr %98, align 2
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.spm_reg_data, ptr %97, i32 0, i32 4
  %103 = load i32, ptr %102, align 4
  %104 = load ptr, ptr %3, align 4
  %105 = zext i16 %99 to i32
  %106 = getelementptr i8, ptr %104, i32 %105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %103) #3, !srcloc !9
  %107 = load ptr, ptr %19, align 4
  %108 = load ptr, ptr %107, align 4
  br label %109

109:                                              ; preds = %101, %95
  %110 = phi ptr [ %96, %95 ], [ %108, %101 ]
  %111 = phi ptr [ %97, %95 ], [ %107, %101 ]
  %112 = getelementptr i16, ptr %110, i32 5
  %113 = load i16, ptr %112, align 2
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %109
  %116 = getelementptr %struct.spm_reg_data, ptr %111, i32 0, i32 4, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = load ptr, ptr %3, align 4
  %119 = zext i16 %113 to i32
  %120 = getelementptr i8, ptr %118, i32 %119
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %117) #3, !srcloc !9
  %121 = load ptr, ptr %19, align 4
  %122 = load ptr, ptr %121, align 4
  br label %123

123:                                              ; preds = %115, %109
  %124 = phi ptr [ %110, %109 ], [ %122, %115 ]
  %125 = phi ptr [ %111, %109 ], [ %121, %115 ]
  %126 = getelementptr i16, ptr %124, i32 1
  %127 = load i16, ptr %126, align 2
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %176, label %129

129:                                              ; preds = %123
  %130 = getelementptr %struct.spm_reg_data, ptr %125, i32 0, i32 8, i32 0
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = load ptr, ptr %3, align 4
  %134 = zext i16 %127 to i32
  %135 = getelementptr i8, ptr %133, i32 %134
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #3, !srcloc !8
  %137 = and i32 %136, -2034
  %138 = shl nuw nsw i32 %132, 4
  %139 = or i32 %138, %137
  %140 = or i32 %139, 1
  %141 = load ptr, ptr %19, align 4
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr i16, ptr %142, i32 1
  %144 = load i16, ptr %143, align 2
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %176, label %146

146:                                              ; preds = %129
  %147 = load ptr, ptr %3, align 4
  %148 = zext i16 %144 to i32
  %149 = getelementptr i8, ptr %147, i32 %148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %140) #3, !srcloc !9
  %150 = load ptr, ptr %3, align 4
  %151 = load ptr, ptr %19, align 4
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr i16, ptr %152, i32 1
  %154 = load i16, ptr %153, align 2
  %155 = zext i16 %154 to i32
  %156 = getelementptr i8, ptr %150, i32 %155
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #3, !srcloc !8
  %158 = icmp eq i32 %157, %140
  br i1 %158, label %176, label %159

159:                                              ; preds = %159, %146
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !10
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !11
  %160 = load ptr, ptr %3, align 4
  %161 = load ptr, ptr %19, align 4
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr i16, ptr %162, i32 1
  %164 = load i16, ptr %163, align 2
  %165 = zext i16 %164 to i32
  %166 = getelementptr i8, ptr %160, i32 %165
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %140) #3, !srcloc !9
  %167 = load ptr, ptr %3, align 4
  %168 = load ptr, ptr %19, align 4
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr i16, ptr %169, i32 1
  %171 = load i16, ptr %170, align 2
  %172 = zext i16 %171 to i32
  %173 = getelementptr i8, ptr %167, i32 %172
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #3, !srcloc !8
  %175 = icmp eq i32 %174, %140
  br i1 %175, label %176, label %159

176:                                              ; preds = %159, %146, %129, %123, %11, %9, %1
  %177 = phi i32 [ %10, %9 ], [ -12, %1 ], [ -19, %11 ], [ 0, %123 ], [ 0, %129 ], [ 0, %146 ], [ 0, %159 ]
  ret i32 %177
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iowrite32_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
!8 = !{i64 951534}
!9 = !{i64 951116}
!10 = !{i64 2151471055}
!11 = !{i64 2151470897}
