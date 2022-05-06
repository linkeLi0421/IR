; ModuleID = '/llk/IR/sound/soc/sh/rcar/debugfs.c_pt.bc'
source_filename = "../sound/soc/sh/rcar/debugfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rsnd_mod = type { i32, i32, ptr, ptr, ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.rsnd_priv = type { ptr, %struct.spinlock, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32 }
%struct.rsnd_dai = type { [16 x i8], %struct.rsnd_dai_stream, %struct.rsnd_dai_stream, ptr, %struct.snd_pcm_hw_constraint_list, i32, i32, i32, i8 }
%struct.rsnd_dai_stream = type { [16 x i8], ptr, [13 x ptr], ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.59 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.63 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.rsnd_mod_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"%pa:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %08x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"rdai%d\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"playback\00", align 1
@rsnd_debugfs_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rsnd_debugfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.6 = private unnamed_addr constant [10 x i8] c"name: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"status: %08x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rsnd_debugfs_reg_show(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %5
  %9 = add i32 %3, %1
  %10 = getelementptr i8, ptr %2, i32 %3
  br label %11

11:                                               ; preds = %11, %8
  %12 = phi i32 [ 0, %8 ], [ %22, %11 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  %13 = add i32 %9, %12
  store i32 %13, ptr %6, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %6) #5
  %14 = getelementptr i8, ptr %10, i32 %12
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %15) #5
  %16 = getelementptr i8, ptr %14, i32 4
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %17) #5
  %18 = getelementptr i8, ptr %14, i32 8
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %19) #5
  %20 = getelementptr i8, ptr %14, i32 12
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %21) #5
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  %22 = add i32 %12, 16
  %23 = icmp slt i32 %22, %4
  br i1 %23, label %11, label %24

24:                                               ; preds = %11, %5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rsnd_debugfs_mod_reg_show(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.rsnd_mod, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @rsnd_gen_get_phy_addr(ptr noundef %7, i32 noundef %2) #5
  %9 = tail call ptr @rsnd_gen_get_base_addr(ptr noundef %7, i32 noundef %2) #5
  tail call void @rsnd_debugfs_reg_show(ptr noundef %0, i32 noundef %8, ptr noundef %9, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_gen_get_phy_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_gen_get_base_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_debugfs_probe(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca [64 x i8], align 1
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %2, i8 0, i32 64, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.rsnd_priv, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 15
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %32, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.rsnd_priv, ptr %6, i32 0, i32 22
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 25
  br label %17

17:                                               ; preds = %21, %15
  %18 = phi i32 [ 0, %15 ], [ %29, %21 ]
  %19 = call ptr @rsnd_rdai_get(ptr noundef %6, i32 noundef %18) #5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 64, ptr noundef nonnull @.str.3, i32 noundef %18)
  %23 = load ptr, ptr %16, align 4
  %24 = call ptr @debugfs_create_dir(ptr noundef nonnull %2, ptr noundef %23) #5
  %25 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 1
  %26 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %24, ptr noundef %25, ptr noundef nonnull @rsnd_debugfs_fops) #5
  %27 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 2
  %28 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %24, ptr noundef %27, ptr noundef nonnull @rsnd_debugfs_fops) #5
  %29 = add nuw nsw i32 %18, 1
  %30 = load i32, ptr %12, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %17, label %32

32:                                               ; preds = %21, %17, %11, %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #5
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_rdai_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_debugfs_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @rsnd_debugfs_show, ptr noundef %4) #5
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_debugfs_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr %struct.rsnd_dai_stream, ptr %5, i32 0, i32 2, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rsnd_mod, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  tail call void @rsnd_adg_clk_dbg_info(ptr noundef %9, ptr noundef %0) #5
  store i32 0, ptr %3, align 4
  %10 = call ptr @rsnd_mod_next(ptr noundef nonnull %3, ptr noundef %5, ptr noundef null, i32 noundef 0) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %28, %2
  %13 = phi ptr [ %31, %28 ], [ %10, %2 ]
  %14 = getelementptr inbounds %struct.rsnd_mod, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %15, i32 0, i32 16
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.rsnd_mod, ptr %13, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = call ptr %17(ptr noundef nonnull %13, ptr noundef %5, i32 noundef %19) #5
  %21 = call ptr @rsnd_mod_name(ptr noundef nonnull %13) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %21) #5
  %22 = load i32, ptr %20, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %22) #5
  %23 = load ptr, ptr %14, align 4
  %24 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %23, i32 0, i32 20
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %12
  call void %25(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %13) #5
  br label %28

28:                                               ; preds = %27, %12
  %29 = load i32, ptr %3, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %3, align 4
  %31 = call ptr @rsnd_mod_next(ptr noundef nonnull %3, ptr noundef %5, ptr noundef null, i32 noundef 0) #5
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %12

33:                                               ; preds = %28, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_adg_clk_dbg_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_next(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_name(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }

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
!8 = !{i64 5044198}
!9 = !{!"auto-init"}
