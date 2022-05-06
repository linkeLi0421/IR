; ModuleID = '/llk/IR/drivers/soc/tegra/fuse/fuse-tegra30.c_pt.bc'
source_filename = "../drivers/soc/tegra/fuse/fuse-tegra30.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_fuse_info = type { ptr, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.tegra_fuse_soc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i8 }
%struct.nvmem_cell_lookup = type { ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tegra_fuse = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.64, ptr, ptr }
%struct.anon.64 = type { %struct.mutex, %struct.completion, ptr, %struct.dma_slave_config, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }

@tegra30_fuse_info = internal constant %struct.tegra_fuse_info { ptr @tegra30_fuse_read, i32 676, i32 324 }, align 4
@tegra_soc_attr_group = external dso_local constant %struct.attribute_group, align 4
@tegra30_fuse_soc = dso_local local_unnamed_addr constant %struct.tegra_fuse_soc { ptr @tegra30_fuse_init, ptr @tegra30_init_speedo_data, ptr null, ptr @tegra30_fuse_info, ptr null, i32 0, ptr @tegra_soc_attr_group, i8 0 }, align 4
@tegra114_fuse_info = internal constant %struct.tegra_fuse_info { ptr @tegra30_fuse_read, i32 672, i32 384 }, align 4
@tegra114_fuse_soc = dso_local local_unnamed_addr constant %struct.tegra_fuse_soc { ptr @tegra30_fuse_init, ptr @tegra114_init_speedo_data, ptr null, ptr @tegra114_fuse_info, ptr null, i32 0, ptr @tegra_soc_attr_group, i8 0 }, align 4
@tegra124_fuse_info = internal constant %struct.tegra_fuse_info { ptr @tegra30_fuse_read, i32 768, i32 512 }, align 4
@tegra124_fuse_lookups = internal constant [12 x %struct.nvmem_cell_lookup] [%struct.nvmem_cell_lookup { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, %struct.list_head zeroinitializer }, %struct.nvmem_cell_lookup { ptr @.str.1, ptr @.str.5, ptr @.str.6, ptr @.str.4, %struct.list_head zeroinitializer }, %struct.nvmem_cell_lookup { ptr @.str.1, ptr @.str.7, ptr @.str.8, ptr @.str.9, %struct.list_head zeroinitializer }, %struct.nvmem_cell_lookup { ptr @.str.1, ptr @.str.10, ptr @.str.8, ptr @.str.11, %struct.list_head zeroinitializer }, %struct.nvmem_cell_lookup { ptr @.str.1, ptr @.str.12, ptr @.str.8, ptr @.str.13, %struct.list_head zeroinitializer }, %struct.nvmem_cell_lookup { ptr @.str.1, ptr @.str.14, ptr @.str.8, ptr @.str.15, %struct.list_head zeroinitializer }, %struct.nvmem_cell_lookup { ptr @.str.1, ptr @.str.16, ptr @.str.8, ptr @.str.17, %struct.list_head zeroinitializer }, %struct.nvmem_cell_lookup { ptr @.str.1, ptr @.str.18, ptr @.str.8, ptr @.str.19, %struct.list_head zeroinitializer }, %struct.nvmem_cell_lookup { ptr @.str.1, ptr @.str.20, ptr @.str.8, ptr @.str.21, %struct.list_head zeroinitializer }, %struct.nvmem_cell_lookup { ptr @.str.1, ptr @.str.22, ptr @.str.8, ptr @.str.23, %struct.list_head zeroinitializer }, %struct.nvmem_cell_lookup { ptr @.str.1, ptr @.str.24, ptr @.str.8, ptr @.str.25, %struct.list_head zeroinitializer }, %struct.nvmem_cell_lookup { ptr @.str.1, ptr @.str.26, ptr @.str.8, ptr @.str.27, %struct.list_head zeroinitializer }], align 4
@tegra124_fuse_soc = dso_local local_unnamed_addr constant %struct.tegra_fuse_soc { ptr @tegra30_fuse_init, ptr @tegra124_init_speedo_data, ptr null, ptr @tegra124_fuse_info, ptr @tegra124_fuse_lookups, i32 12, ptr @tegra_soc_attr_group, i8 1 }, align 4
@tegra_sku_info = external dso_local global %struct.tegra_sku_info, align 4
@.str = private unnamed_addr constant [38 x i8] c"drivers/soc/tegra/fuse/fuse-tegra30.c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fuse\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"xusb-pad-calibration\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"7009f000.padctl\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"calibration\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"sata-calibration\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"70020000.sata\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"tsensor-common\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"700e2000.thermal-sensor\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"common\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"tsensor-realignment\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"realignment\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"tsensor-cpu0\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"cpu0\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"tsensor-cpu1\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"cpu1\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"tsensor-cpu2\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"cpu2\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"tsensor-cpu3\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"cpu3\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"tsensor-mem0\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"mem0\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"tsensor-mem1\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"mem1\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"tsensor-gpu\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"tsensor-pllx\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"pllx\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra30_fuse_init(ptr nocapture noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 5
  store ptr @tegra30_fuse_read_early, ptr %2, align 4
  %3 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 6
  store ptr @tegra30_fuse_read, ptr %3, align 4
  tail call void @tegra_init_revision() #5
  %4 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_fuse_soc, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void %7(ptr noundef nonnull @tegra_sku_info) #5
  br label %10

10:                                               ; preds = %9, %1
  tail call fastcc void @tegra30_fuse_add_randomness() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra30_init_speedo_data(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra114_init_speedo_data(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra124_init_speedo_data(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra30_fuse_read_early(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef null) #5
  br label %11

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %4, i32 256
  %9 = getelementptr i8, ptr %8, i32 %1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !9
  br label %11

11:                                               ; preds = %7, %6
  %12 = phi i32 [ 0, %6 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra30_fuse_read(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #5
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #5, !srcloc !11
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 -1, ptr elementtype(i32) %7) #5, !srcloc !12
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  br label %20

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tegra_fuse, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 256
  %16 = getelementptr i8, ptr %15, i32 %1
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !9
  %18 = load ptr, ptr %0, align 4
  %19 = tail call i32 @__pm_runtime_idle(ptr noundef %18, i32 noundef 5) #5
  br label %20

20:                                               ; preds = %12, %11, %6
  %21 = phi i32 [ %17, %12 ], [ 0, %6 ], [ 0, %11 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_init_revision() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tegra30_fuse_add_randomness() unnamed_addr #0 section ".init.text" {
  %1 = alloca [12 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %1) #5
  %2 = load i32, ptr @tegra_sku_info, align 4
  store i32 %2, ptr %1, align 4
  %3 = tail call i32 @tegra_read_straps() #5
  %4 = getelementptr inbounds [12 x i32], ptr %1, i32 0, i32 1
  store i32 %3, ptr %4, align 4
  %5 = tail call i32 @tegra_read_chipid() #5
  %6 = getelementptr inbounds [12 x i32], ptr %1, i32 0, i32 2
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 1), align 4
  %8 = shl i32 %7, 16
  %9 = getelementptr inbounds [12 x i32], ptr %1, i32 0, i32 3
  %10 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 5), align 4
  %11 = or i32 %10, %8
  store i32 %11, ptr %9, align 4
  %12 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 2), align 4
  %13 = shl i32 %12, 16
  %14 = getelementptr inbounds [12 x i32], ptr %1, i32 0, i32 4
  %15 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 6), align 4
  %16 = or i32 %15, %13
  store i32 %16, ptr %14, align 4
  %17 = tail call i32 @tegra_fuse_read_early(i32 noundef 256) #7
  %18 = getelementptr inbounds [12 x i32], ptr %1, i32 0, i32 5
  store i32 %17, ptr %18, align 4
  %19 = tail call i32 @tegra_fuse_read_early(i32 noundef 260) #7
  %20 = getelementptr inbounds [12 x i32], ptr %1, i32 0, i32 6
  store i32 %19, ptr %20, align 4
  %21 = tail call i32 @tegra_fuse_read_early(i32 noundef 264) #7
  %22 = getelementptr inbounds [12 x i32], ptr %1, i32 0, i32 7
  store i32 %21, ptr %22, align 4
  %23 = tail call i32 @tegra_fuse_read_early(i32 noundef 268) #7
  %24 = getelementptr inbounds [12 x i32], ptr %1, i32 0, i32 8
  store i32 %23, ptr %24, align 4
  %25 = tail call i32 @tegra_fuse_read_early(i32 noundef 272) #7
  %26 = getelementptr inbounds [12 x i32], ptr %1, i32 0, i32 9
  store i32 %25, ptr %26, align 4
  %27 = tail call i32 @tegra_fuse_read_early(i32 noundef 276) #7
  %28 = getelementptr inbounds [12 x i32], ptr %1, i32 0, i32 10
  store i32 %27, ptr %28, align 4
  %29 = tail call i32 @tegra_fuse_read_early(i32 noundef 280) #7
  %30 = getelementptr inbounds [12 x i32], ptr %1, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  call void @add_device_randomness(ptr noundef nonnull %1, i32 noundef 48) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %1) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_read_straps() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_read_chipid() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @tegra_fuse_read_early(i32 noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold }
attributes #7 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 3646196}
!10 = !{i64 2148145197}
!11 = !{i64 580862, i64 2148082428, i64 2148082454, i64 2148082501, i64 2148082523, i64 2148082551, i64 2148082571}
!12 = !{i64 567431, i64 567456, i64 567478, i64 567494, i64 567506, i64 567526, i64 567550, i64 567566, i64 567578}
!13 = !{i64 2148145323}
