; ModuleID = '/llk/IR/drivers/media/platform/s5p-mfc/s5p_mfc_cmd_v5.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-mfc/s5p_mfc_cmd_v5.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.s5p_mfc_hw_cmds = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s5p_mfc_dev = type { %struct.v4l2_device, ptr, ptr, ptr, [2 x ptr], ptr, i32, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.s5p_mfc_pm, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.mutex, i32, i32, i32, %struct.wait_queue_head, %struct.s5p_mfc_priv_buf, i32, i32, ptr, ptr, [2 x i32], i32, [4 x ptr], i32, i32, %struct.atomic_t, %struct.timer_list, ptr, %struct.work_struct, i32, %struct.s5p_mfc_priv_buf, i32, ptr, ptr, ptr, i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.s5p_mfc_pm = type { ptr, ptr, [4 x ptr], i32, i8, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.s5p_mfc_priv_buf = type { i32, ptr, i32, i32, i32 }
%struct.s5p_mfc_cmd_args = type { [4 x i32] }
%struct.s5p_mfc_ctx = type { ptr, %struct.v4l2_fh, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, %struct.vb2_queue, %struct.vb2_queue, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, i32, i32, [32 x %struct.s5p_mfc_buf], i32, [32 x %struct.s5p_mfc_buf], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_enc_params, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i32, %union.anon.103, ptr, [128 x ptr], %struct.v4l2_ctrl_handler, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.s5p_mfc_buf = type { ptr, %struct.list_head, %union.anon.100, i32 }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { i32, i32 }
%struct.s5p_mfc_enc_params = type { i16, i16, i32, i32, i16, i32, i16, i32, i16, i32, i8, i8, i8, i32, i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, %struct.anon.102 }
%struct.anon.102 = type { %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_vp8_enc_params, %struct.s5p_mfc_hevc_enc_params }
%struct.s5p_mfc_h264_enc_params = type { i32, i32, i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i16, i8, i8, i8, i8, i8, i32, i32, i16, i32, i8, i8, i8, [7 x i8], i8, i8, i8, i8, i8, i8, i8, i32, [4 x i32], i8, [8 x i32] }
%struct.s5p_mfc_mpeg4_enc_params = type { i32, i32, i16, i16, i8, i8, i8, i8, i8, i32, i32 }
%struct.s5p_mfc_vp8_enc_params = type { i8, i32, i32, i8, i8, i32, i32, i8, [3 x i8], i8, i8, i8, i8, i8 }
%struct.s5p_mfc_hevc_enc_params = type { i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, [7 x i8], [7 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%union.anon.103 = type { i32 }

@s5p_mfc_cmds_v5 = internal global %struct.s5p_mfc_hw_cmds { ptr @s5p_mfc_cmd_host2risc_v5, ptr @s5p_mfc_sys_init_cmd_v5, ptr @s5p_mfc_sleep_cmd_v5, ptr @s5p_mfc_wakeup_cmd_v5, ptr @s5p_mfc_open_inst_cmd_v5, ptr @s5p_mfc_close_inst_cmd_v5 }, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [45 x i8] c"\013%s:%d: Timeout while waiting for hardware\0A\00", align 1
@__func__.s5p_mfc_cmd_host2risc_v5 = private unnamed_addr constant [25 x i8] c"s5p_mfc_cmd_host2risc_v5\00", align 1
@mfc_debug_level = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"\017%s:%d: Getting instance number (codec: %d)\0A\00", align 1
@__func__.s5p_mfc_open_inst_cmd_v5 = private unnamed_addr constant [25 x i8] c"s5p_mfc_open_inst_cmd_v5\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\013%s:%d: Failed to create a new instance\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"\013%s:%d: Instance already returned\0A\00", align 1
@__func__.s5p_mfc_close_inst_cmd_v5 = private unnamed_addr constant [26 x i8] c"s5p_mfc_close_inst_cmd_v5\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"\017%s:%d: Returning instance number %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"\013%s:%d: Failed to return an instance\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @s5p_mfc_init_hw_cmds_v5() local_unnamed_addr #0 {
  ret ptr @s5p_mfc_cmds_v5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_cmd_host2risc_v5(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = add i32 %4, 50
  %6 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 5
  br label %7

7:                                                ; preds = %13, %3
  %8 = load volatile i32, ptr @jiffies, align 64
  %9 = sub i32 %5, %8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s5p_mfc_cmd_host2risc_v5, i32 noundef 26) #6
  br label %36

13:                                               ; preds = %7
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr i8, ptr %14, i32 48
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %7

18:                                               ; preds = %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %19 = load i32, ptr %2, align 4
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr i8, ptr %20, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  %22 = getelementptr [4 x i32], ptr %2, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr i8, ptr %24, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %26 = getelementptr [4 x i32], ptr %2, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %6, align 4
  %29 = getelementptr i8, ptr %28, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %30 = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr i8, ptr %32, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %34 = load ptr, ptr %6, align 4
  %35 = getelementptr i8, ptr %34, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %1) #7, !srcloc !11
  br label %36

36:                                               ; preds = %18, %11
  %37 = phi i32 [ -5, %11 ], [ 0, %18 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_sys_init_cmd_v5(ptr nocapture noundef readonly %0) #1 {
  %2 = alloca %struct.s5p_mfc_cmd_args, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  %3 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 19, i32 3
  %4 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %5 = load i32, ptr %3, align 4
  store i32 %5, ptr %2, align 4
  %6 = call i32 @s5p_mfc_cmd_host2risc_v5(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_sleep_cmd_v5(ptr nocapture noundef readonly %0) #1 {
  %2 = alloca %struct.s5p_mfc_cmd_args, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = call i32 @s5p_mfc_cmd_host2risc_v5(ptr noundef %0, i32 noundef 5, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_wakeup_cmd_v5(ptr nocapture noundef readonly %0) #1 {
  %2 = alloca %struct.s5p_mfc_cmd_args, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = call i32 @s5p_mfc_cmd_host2risc_v5(ptr noundef %0, i32 noundef 6, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_open_inst_cmd_v5(ptr nocapture noundef %0) #1 {
  %2 = alloca %struct.s5p_mfc_cmd_args, align 4
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  %4 = load i32, ptr @mfc_debug_level, align 4
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 39
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5p_mfc_open_inst_cmd_v5, i32 noundef 78, i32 noundef %8) #6
  br label %10

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 27
  store i32 %12, ptr %13, align 4
  store i32 0, ptr %2, align 4
  %14 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 39
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %24 [
    i32 0, label %25
    i32 2, label %16
    i32 3, label %17
    i32 4, label %18
    i32 5, label %19
    i32 6, label %20
    i32 20, label %21
    i32 22, label %22
    i32 23, label %23
  ]

16:                                               ; preds = %10
  store i32 1, ptr %2, align 4
  br label %25

17:                                               ; preds = %10
  store i32 2, ptr %2, align 4
  br label %25

18:                                               ; preds = %10
  store i32 3, ptr %2, align 4
  br label %25

19:                                               ; preds = %10
  store i32 4, ptr %2, align 4
  br label %25

20:                                               ; preds = %10
  store i32 5, ptr %2, align 4
  br label %25

21:                                               ; preds = %10
  store i32 16, ptr %2, align 4
  br label %25

22:                                               ; preds = %10
  store i32 17, ptr %2, align 4
  br label %25

23:                                               ; preds = %10
  store i32 18, ptr %2, align 4
  br label %25

24:                                               ; preds = %10
  store i32 -1, ptr %2, align 4
  br label %25

25:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %16, %10
  %26 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 1
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 49
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 49, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 3
  store i32 %31, ptr %32, align 4
  %33 = call i32 @s5p_mfc_cmd_host2risc_v5(ptr noundef %3, i32 noundef 1, ptr noundef nonnull %2)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5p_mfc_open_inst_cmd_v5, i32 noundef 118) #6
  %37 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 16
  store i32 109, ptr %37, align 4
  br label %38

38:                                               ; preds = %35, %25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_mfc_close_inst_cmd_v5(ptr nocapture noundef %0) #1 {
  %2 = alloca %struct.s5p_mfc_cmd_args, align 4
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  %4 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5p_mfc_close_inst_cmd_v5, i32 noundef 131) #6
  br label %27

9:                                                ; preds = %1
  %10 = load i32, ptr @mfc_debug_level, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 17
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5p_mfc_close_inst_cmd_v5, i32 noundef 136, i32 noundef %14) #6
  br label %16

16:                                               ; preds = %12, %9
  %17 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 27
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %20, i8 0, i32 12, i1 false)
  %21 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %0, i32 0, i32 17
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %2, align 4
  %23 = call i32 @s5p_mfc_cmd_host2risc_v5(ptr noundef %3, i32 noundef 2, ptr noundef nonnull %2)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5p_mfc_close_inst_cmd_v5, i32 noundef 143) #6
  br label %27

27:                                               ; preds = %25, %7
  store i32 109, ptr %4, align 4
  br label %28

28:                                               ; preds = %27, %16
  %29 = phi i32 [ 0, %16 ], [ -22, %27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret i32 %29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind }

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
!8 = !{i64 5921048}
!9 = !{i64 2154979734}
!10 = !{i64 2154980038}
!11 = !{i64 5920630}
!12 = !{i64 2154980516}
!13 = !{i64 2154980994}
!14 = !{i64 2154981472}
!15 = !{i64 2154981932}
