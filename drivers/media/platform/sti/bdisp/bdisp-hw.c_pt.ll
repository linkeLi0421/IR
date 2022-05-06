; ModuleID = '/llk/IR/drivers/media/platform/sti/bdisp/bdisp-hw.c_pt.bc'
source_filename = "../drivers/media/platform/sti/bdisp/bdisp-hw.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.bdisp_filter_addr = type { i16, i16, ptr, i32 }
%struct.bdisp_filter_h_spec = type { i16, i16, [64 x i8] }
%struct.bdisp_filter_v_spec = type { i16, i16, [40 x i8] }
%struct.bdisp_dev = type { %struct.v4l2_device, %struct.video_device, ptr, ptr, %struct.spinlock, %struct.mutex, i16, %struct.bdisp_m2m_device, i32, ptr, ptr, %struct.wait_queue_head, ptr, %struct.delayed_work, %struct.bdisp_dbg }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bdisp_m2m_device = type { ptr, ptr, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.bdisp_dbg = type { ptr, [4 x ptr], %struct.bdisp_request, i64, i64, i64, i64, i64 }
%struct.bdisp_request = type { %struct.bdisp_frame, %struct.bdisp_frame, i8, i32 }
%struct.bdisp_frame = type { i32, i32, ptr, i32, i32, i32, i32, %struct.v4l2_rect, [4 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.bdisp_ctx = type { %struct.bdisp_frame, %struct.bdisp_frame, i32, i8, ptr, [4 x ptr], [4 x i32], %struct.v4l2_fh, %struct.v4l2_ctrl_handler, %struct.bdisp_ctrls, i8 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.bdisp_ctrls = type { ptr, ptr }
%struct.bdisp_op_cfg = type { i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.bdisp_fmt = type { i32, i8, i8, i8, i8, i8 }
%struct.bdisp_node = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [15 x i8] c"Reset timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s no mem\0A\00", align 1
@__func__.bdisp_hw_alloc_nodes = private unnamed_addr constant [21 x i8] c"bdisp_hw_alloc_nodes\00", align 1
@bdisp_h_filter = internal unnamed_addr global [12 x %struct.bdisp_filter_addr] zeroinitializer, align 4
@bdisp_h_spec = internal unnamed_addr constant [12 x %struct.bdisp_filter_h_spec] [%struct.bdisp_filter_h_spec { i16 0, i16 921, [64 x i8] c"\00\00\00\00@\00\00\00\00\00\FF\07=\FC\01\00\00\01\FD\116\F9\02\00\00\01\FB\1B.\F9\02\00\00\01\F9&&\F9\01\00\00\02\F90\19\FB\01\00\00\02\F99\0E\FD\01\00\00\01\FC>\06\FF\00\00" }, %struct.bdisp_filter_h_spec { i16 921, i16 1024, [64 x i8] c"\00\00\00\00@\00\00\00\FF\03\FD\08>\F9\04\FE\FD\06\F8\13;\F4\07\FC\FB\08\F5\1F4\F1\09\FB\FB\09\F2+*\F1\09\FB\FB\09\F25\1E\F4\08\FB\FC\07\F5<\12\F7\06\FD\FE\04\FA?\07\FC\03\FF" }, %struct.bdisp_filter_h_spec { i16 1024, i16 1126, [64 x i8] c"\00\00\00\00@\00\00\00\FF\03\FD\08>\F9\04\FE\FD\06\F8\13;\F4\07\FC\FB\08\F5\1F4\F1\09\FB\FB\09\F2+*\F1\09\FB\FB\09\F25\1E\F4\08\FB\FC\07\F5<\12\F7\06\FD\FE\04\FA?\07\FC\03\FF" }, %struct.bdisp_filter_h_spec { i16 1126, i16 1228, [64 x i8] c"\00\00\00\00@\00\00\00\FF\03\FD\08>\F9\04\FE\FD\06\F8\13;\F4\07\FC\FB\08\F5\1F4\F1\09\FB\FB\09\F2+*\F1\09\FB\FB\09\F25\1E\F4\08\FB\FC\07\F5<\12\F7\06\FD\FE\04\FA?\07\FC\03\FF" }, %struct.bdisp_filter_h_spec { i16 1228, i16 1331, [64 x i8] c"\FD\04\FC\059\05\FC\04\FC\06\F9\0C9\FE\00\02\FB\08\F6\175\F9\02\00\FC\08\F4 0\F4\05\FF\FD\07\F4)(\F3\07\FD\FF\05\F51\1F\F3\08\FC\00\02\F98\14\F6\08\FB\02\00\FF:\0B\F8\06\FC" }, %struct.bdisp_filter_h_spec { i16 1331, i16 1433, [64 x i8] c"\FC\06\F9\094\09\F9\06\FD\07\F7\102\02\FC\05\FE\07\F6\17/\FC\FF\04\FF\06\F5 *\F9\01\02\00\04\F6'%\F6\04\00\02\01\F9-\1D\F5\06\FF\04\FF\FD1\15\F5\07\FE\05\FC\025\0D\F7\07\FD" }, %struct.bdisp_filter_h_spec { i16 1433, i16 1536, [64 x i8] c"\FE\06\F8\0B0\0B\F8\06\FF\06\F7\12-\05\FA\06\00\04\F6\18,\00\FC\06\01\02\F7\1F'\FD\FF\04\03\00\F9$$\F9\00\03\04\FF\FD)\1D\F7\02\01\06\FC\00-\17\F6\04\00\06\FA\050\0F\F7\06\FF" }, %struct.bdisp_filter_h_spec { i16 1536, i16 2048, [64 x i8] c"\05\FD\FB\13%\13\FB\FD\05\FC\FD\17$\0F\F9\FF\04\FA\FF\1B$\0B\F9\00\03\F9\01\1F#\08\F8\01\02\F9\04\22 \04\F9\02\01\F8\08%\1D\01\F9\03\00\F9\0C%\1A\FE\FA\04\FF\F9\10&\15\FC\FC\05" }, %struct.bdisp_filter_h_spec { i16 2048, i16 3072, [64 x i8] c"\FC\FD\06\13\18\13\06\FD\FC\FE\08\15\17\12\04\FC\FB\FE\0A\16\18\10\03\FC\FB\00\0B\18\17\0F\01\FB\FB\00\0D\19\17\0D\00\FB\FB\01\0F\19\16\0B\00\FB\FC\03\11\19\15\09\FE\FB\FC\04\12\1A\12\08\FE\FC" }, %struct.bdisp_filter_h_spec { i16 3072, i16 4096, [64 x i8] c"\FE\02\09\0F\0E\0F\09\02\FF\02\09\0F\10\0E\08\01\FF\03\0A\10\10\0D\07\00\00\04\0B\10\0F\0C\06\00\00\05\0C\10\0E\0C\05\00\00\06\0C\11\0E\0B\04\00\00\07\0D\11\0F\0A\03\FF\01\08\0E\11\0E\09\02\FF" }, %struct.bdisp_filter_h_spec { i16 4096, i16 5120, [64 x i8] c"\00\04\09\0C\0E\0C\09\04\01\05\09\0C\0D\0C\08\04\01\05\0A\0C\0E\0B\08\03\02\06\0A\0D\0C\0B\07\03\02\07\0A\0D\0D\0A\07\02\03\07\0B\0D\0C\0A\06\02\03\08\0B\0D\0D\0A\05\01\04\08\0C\0D\0C\09\05\01" }, %struct.bdisp_filter_h_spec { i16 5120, i16 -1, [64 x i8] c"\03\06\09\0B\09\0B\09\06\03\06\09\0B\0C\0A\08\05\03\06\09\0B\0C\0A\08\05\04\07\09\0B\0B\0A\08\04\04\07\0A\0B\0B\0A\07\04\04\08\0A\0B\0B\09\07\04\05\08\0A\0B\0C\09\06\03\05\08\0A\0B\0C\09\06\03" }], align 2
@bdisp_v_spec = internal unnamed_addr constant [9 x %struct.bdisp_filter_v_spec] [%struct.bdisp_filter_v_spec { i16 0, i16 1024, [40 x i8] c"\00\00@\00\00\00\06=\FD\00\FE\0F8\FB\00\FD\19/\FB\00\FC$$\FC\00\FB/\19\FD\00\FB8\0F\FE\00\FD=\06\00\00" }, %struct.bdisp_filter_v_spec { i16 1024, i16 1331, [40 x i8] c"\FC\05>\05\FC\F8\0E;\FF\00\F5\188\F9\02\F4!1\F5\05\F4*'\F4\07\F60\1E\F4\08\F95\15\F6\07\FF7\0B\F9\06" }, %struct.bdisp_filter_v_spec { i16 1331, i16 1433, [40 x i8] c"\F8\0A<\0A\F8\F6\12;\02\FB\F4\1B5\FD\FF\F4#0\F8\01\F6)'\F6\04\F9.\1E\F5\06\FD1\16\F6\06\022\0D\F8\07" }, %struct.bdisp_filter_v_spec { i16 1433, i16 1536, [40 x i8] c"\F6\0E8\0E\F6\F5\158\06\F8\F5\1D3\00\FB\F6#-\FC\FE\F9(&\F9\00\FC,\1E\F7\03\00.\18\F6\04\05.\11\F7\05" }, %struct.bdisp_filter_v_spec { i16 1536, i16 2048, [40 x i8] c"\FB\13$\13\FB\FD\17#\0F\FA\FF\1A#\0B\F9\01\1D\22\07\F9\04 \1F\04\F9\07\22\1C\01\FA\0B$\17\FF\FB\0F$\14\FD\FC" }, %struct.bdisp_filter_v_spec { i16 2048, i16 3072, [40 x i8] c"\05\10\16\10\05\06\11\16\0F\04\08\13\15\0E\02\09\14\16\0C\01\0B\15\15\0B\00\0D\16\13\0A\00\0F\17\13\08\FF\11\18\12\07\FE" }, %struct.bdisp_filter_v_spec { i16 3072, i16 4096, [40 x i8] c"\09\0F\10\0F\09\09\0F\12\0E\08\0A\10\11\0E\07\0B\11\11\0D\06\0C\11\12\0C\05\0D\12\11\0C\04\0E\12\11\0B\04\0F\13\11\0A\03" }, %struct.bdisp_filter_v_spec { i16 4096, i16 5120, [40 x i8] c"\0A\0E\10\0E\0A\0B\0E\0F\0E\0A\0B\0F\10\0D\09\0C\0F\10\0D\08\0D\0F\0F\0D\08\0D\10\10\0C\07\0E\10\0F\0C\07\0F\10\10\0B\06" }, %struct.bdisp_filter_v_spec { i16 5120, i16 -1, [40 x i8] c"\0B\0E\0E\0E\0B\0B\0E\0F\0D\0B\0C\0E\0F\0D\0A\0C\0E\0F\0D\0A\0D\0F\0E\0D\09\0D\0F\0F\0C\09\0E\0F\0E\0C\09\0E\0F\0F\0C\08" }], align 2
@bdisp_v_filter = internal unnamed_addr global [9 x %struct.bdisp_filter_addr] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"cannot build nodes (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"node %d is null\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Image width out of HW caps\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Scale factor out of HW caps\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"scale factors failed (%dx%d)->(%dx%d)\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdisp_hw_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !8
  tail call void @arm_heavy_mb() #9
  %2 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 2768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 2560
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %8 = or i32 %7, -2147483648
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #9, !srcloc !9
  br label %13

13:                                               ; preds = %20, %1
  %14 = phi i32 [ 0, %1 ], [ %22, %20 ]
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 2568
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 429496000) #9
  %22 = add nuw nsw i32 %14, 1
  %23 = icmp eq i32 %22, 500
  br i1 %23, label %24, label %13

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str) #10
  br label %27

27:                                               ; preds = %24, %13
  %28 = phi i32 [ -11, %24 ], [ 0, %13 ]
  ret i32 %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdisp_hw_get_and_clear_irq(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 2564
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %6 = and i32 %5, 4096
  %7 = icmp eq i32 %6, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr i8, ptr %8, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %5) #9
  br i1 %7, label %13, label %10

10:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 2768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #9, !srcloc !9
  br label %13

13:                                               ; preds = %10, %1
  %14 = phi i32 [ 0, %10 ], [ -1, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bdisp_hw_free_nodes(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bdisp_dev, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef 912, ptr noundef nonnull %5, i32 noundef %13, i32 noundef 4) #9
  br label %14

14:                                               ; preds = %7, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdisp_hw_alloc_nodes(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !17
  %7 = call ptr @dma_alloc_attrs(ptr noundef %6, i32 noundef 912, ptr noundef nonnull %2, i32 noundef 3264, i32 noundef 4) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.bdisp_hw_alloc_nodes) #10
  br label %26

10:                                               ; preds = %1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(912) %7, i8 0, i32 912, i1 false)
  %11 = load i32, ptr %2, align 4
  %12 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 5, i32 0
  store ptr %7, ptr %12, align 4
  %13 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 6, i32 0
  store i32 %11, ptr %13, align 4
  %14 = getelementptr i8, ptr %7, i32 228
  %15 = add i32 %11, 228
  %16 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 5, i32 1
  store ptr %14, ptr %16, align 4
  %17 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 6, i32 1
  store i32 %15, ptr %17, align 4
  %18 = getelementptr i8, ptr %7, i32 456
  %19 = add i32 %11, 456
  %20 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 5, i32 2
  store ptr %18, ptr %20, align 4
  %21 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 6, i32 2
  store i32 %19, ptr %21, align 4
  %22 = getelementptr i8, ptr %7, i32 684
  %23 = add i32 %11, 684
  %24 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 5, i32 3
  store ptr %22, ptr %24, align 4
  %25 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 6, i32 3
  store i32 %23, ptr %25, align 4
  br label %26

26:                                               ; preds = %10, %9
  %27 = phi i32 [ -12, %9 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bdisp_hw_free_filters(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 0, i32 2), align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 0, i32 3), align 4
  tail call void @dma_free_attrs(ptr noundef %0, i32 noundef 1128, ptr noundef nonnull %2, i32 noundef %5, i32 noundef 4) #9
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdisp_hw_alloc_filters(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !17
  %3 = call ptr @dma_alloc_attrs(ptr noundef %0, i32 noundef 1128, ptr noundef nonnull %2, i32 noundef 3264, i32 noundef 4) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4
  br label %24

7:                                                ; preds = %24
  store i32 %38, ptr %2, align 4
  store i16 0, ptr @bdisp_v_filter, align 4
  store i16 1024, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 0, i32 1), align 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(40) %37, ptr noundef align 2 dereferenceable(40) getelementptr inbounds ([9 x %struct.bdisp_filter_v_spec], ptr @bdisp_v_spec, i32 0, i32 0, i32 2), i32 40, i1 false)
  store ptr %37, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 0, i32 2), align 4
  store i32 %38, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 0, i32 3), align 4
  %8 = getelementptr i8, ptr %25, i32 104
  %9 = add i32 %27, 104
  store i16 1024, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 1), align 4
  store i16 1331, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 1, i32 1), align 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(40) %8, ptr noundef align 2 dereferenceable(40) getelementptr inbounds ([9 x %struct.bdisp_filter_v_spec], ptr @bdisp_v_spec, i32 0, i32 1, i32 2), i32 40, i1 false)
  store ptr %8, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 1, i32 2), align 4
  store i32 %9, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 1, i32 3), align 4
  %10 = getelementptr i8, ptr %25, i32 144
  %11 = add i32 %27, 144
  store i16 1331, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 2), align 4
  store i16 1433, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 2, i32 1), align 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(40) %10, ptr noundef align 2 dereferenceable(40) getelementptr inbounds ([9 x %struct.bdisp_filter_v_spec], ptr @bdisp_v_spec, i32 0, i32 2, i32 2), i32 40, i1 false)
  store ptr %10, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 2, i32 2), align 4
  store i32 %11, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 2, i32 3), align 4
  %12 = getelementptr i8, ptr %25, i32 184
  %13 = add i32 %27, 184
  store i16 1433, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 3), align 4
  store i16 1536, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 3, i32 1), align 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(40) %12, ptr noundef align 2 dereferenceable(40) getelementptr inbounds ([9 x %struct.bdisp_filter_v_spec], ptr @bdisp_v_spec, i32 0, i32 3, i32 2), i32 40, i1 false)
  store ptr %12, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 3, i32 2), align 4
  store i32 %13, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 3, i32 3), align 4
  %14 = getelementptr i8, ptr %25, i32 224
  %15 = add i32 %27, 224
  store i16 1536, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 4), align 4
  store i16 2048, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 4, i32 1), align 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(40) %14, ptr noundef align 2 dereferenceable(40) getelementptr inbounds ([9 x %struct.bdisp_filter_v_spec], ptr @bdisp_v_spec, i32 0, i32 4, i32 2), i32 40, i1 false)
  store ptr %14, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 4, i32 2), align 4
  store i32 %15, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 4, i32 3), align 4
  %16 = getelementptr i8, ptr %25, i32 264
  %17 = add i32 %27, 264
  store i16 2048, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 5), align 4
  store i16 3072, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 5, i32 1), align 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(40) %16, ptr noundef align 2 dereferenceable(40) getelementptr inbounds ([9 x %struct.bdisp_filter_v_spec], ptr @bdisp_v_spec, i32 0, i32 5, i32 2), i32 40, i1 false)
  store ptr %16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 5, i32 2), align 4
  store i32 %17, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 5, i32 3), align 4
  %18 = getelementptr i8, ptr %25, i32 304
  %19 = add i32 %27, 304
  store i16 3072, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 6), align 4
  store i16 4096, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 6, i32 1), align 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(40) %18, ptr noundef align 2 dereferenceable(40) getelementptr inbounds ([9 x %struct.bdisp_filter_v_spec], ptr @bdisp_v_spec, i32 0, i32 6, i32 2), i32 40, i1 false)
  store ptr %18, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 6, i32 2), align 4
  store i32 %19, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 6, i32 3), align 4
  %20 = getelementptr i8, ptr %25, i32 344
  %21 = add i32 %27, 344
  store i16 4096, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 7), align 4
  store i16 5120, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 7, i32 1), align 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(40) %20, ptr noundef align 2 dereferenceable(40) getelementptr inbounds ([9 x %struct.bdisp_filter_v_spec], ptr @bdisp_v_spec, i32 0, i32 7, i32 2), i32 40, i1 false)
  store ptr %20, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 7, i32 2), align 4
  store i32 %21, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 7, i32 3), align 4
  %22 = getelementptr i8, ptr %25, i32 384
  %23 = add i32 %27, 384
  store i16 5120, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 8), align 4
  store i16 -1, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 8, i32 1), align 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(40) %22, ptr noundef align 2 dereferenceable(40) getelementptr inbounds ([9 x %struct.bdisp_filter_v_spec], ptr @bdisp_v_spec, i32 0, i32 8, i32 2), i32 40, i1 false)
  store ptr %22, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 8, i32 2), align 4
  store i32 %23, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 8, i32 3), align 4
  br label %41

24:                                               ; preds = %24, %5
  %25 = phi ptr [ %3, %5 ], [ %37, %24 ]
  %26 = phi i32 [ 0, %5 ], [ %39, %24 ]
  %27 = phi i32 [ %6, %5 ], [ %38, %24 ]
  %28 = getelementptr [12 x %struct.bdisp_filter_h_spec], ptr @bdisp_h_spec, i32 0, i32 %26
  %29 = load i16, ptr %28, align 2
  %30 = getelementptr [12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 %26
  store i16 %29, ptr %30, align 4
  %31 = getelementptr [12 x %struct.bdisp_filter_h_spec], ptr @bdisp_h_spec, i32 0, i32 %26, i32 1
  %32 = load i16, ptr %31, align 2
  %33 = getelementptr [12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 %26, i32 1
  store i16 %32, ptr %33, align 2
  %34 = getelementptr [12 x %struct.bdisp_filter_h_spec], ptr @bdisp_h_spec, i32 0, i32 %26, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %25, ptr noundef align 2 dereferenceable(64) %34, i32 64, i1 false)
  %35 = getelementptr [12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 %26, i32 2
  store ptr %25, ptr %35, align 4
  %36 = getelementptr [12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 %26, i32 3
  store i32 %27, ptr %36, align 4
  %37 = getelementptr i8, ptr %25, i32 64
  %38 = add i32 %27, 64
  %39 = add nuw nsw i32 %26, 1
  %40 = icmp eq i32 %39, 12
  br i1 %40, label %7, label %24

41:                                               ; preds = %7, %1
  %42 = phi i32 [ -12, %1 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %42
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdisp_hw_update(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bdisp_op_cfg, align 2
  %3 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(18) %2, i8 0, i32 18, i1 false) #9, !annotation !17
  %7 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 5, i32 0
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %20, %16, %12, %1
  %11 = phi i32 [ 0, %1 ], [ 1, %12 ], [ 2, %16 ], [ 3, %20 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef %11) #10
  br label %142

12:                                               ; preds = %1
  %13 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 5, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %10, label %16

16:                                               ; preds = %12
  %17 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 5, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %10, label %20

20:                                               ; preds = %16
  %21 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 5, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %10, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %0, align 4
  %26 = icmp ugt i32 %25, 4096
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.4) #10
  br label %142

28:                                               ; preds = %24
  %29 = icmp ugt i32 %25, 2048
  %30 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %2, i32 0, i32 3
  %31 = zext i1 %29 to i8
  store i8 %31, ptr %30, align 1
  %32 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 3
  %33 = load i8, ptr %32, align 4
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %2, i32 0, i32 1
  store i8 %34, ptr %35, align 1
  %36 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %2, i32 0, i32 2
  %37 = lshr i8 %33, 1
  %38 = and i8 %37, 1
  store i8 %38, ptr %36, align 2
  %39 = getelementptr inbounds %struct.bdisp_frame, ptr %0, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 4
  %42 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %2, i32 0, i32 7
  %43 = zext i1 %41 to i8
  store i8 %43, ptr %42, align 2
  %44 = getelementptr inbounds %struct.bdisp_frame, ptr %0, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.bdisp_fmt, ptr %45, i32 0, i32 1
  %47 = load i8, ptr %46, align 4
  %48 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %2, i32 0, i32 8
  store i8 %47, ptr %48, align 1
  %49 = load i32, ptr %45, align 4
  %50 = icmp eq i32 %49, 842094158
  %51 = icmp eq i32 %49, 842093913
  %52 = or i1 %50, %51
  %53 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %2, i32 0, i32 9
  %54 = zext i1 %52 to i8
  store i8 %54, ptr %53, align 2
  %55 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %2, i32 0, i32 10
  store i8 %54, ptr %55, align 1
  %56 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 1, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.bdisp_fmt, ptr %57, i32 0, i32 1
  %59 = load i8, ptr %58, align 4
  %60 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %2, i32 0, i32 11
  store i8 %59, ptr %60, align 2
  %61 = load i32, ptr %57, align 4
  %62 = icmp eq i32 %61, 842094158
  %63 = icmp eq i32 %61, 842093913
  %64 = or i1 %62, %63
  %65 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %2, i32 0, i32 12
  %66 = zext i1 %64 to i8
  store i8 %66, ptr %65, align 1
  %67 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %2, i32 0, i32 13
  store i8 %66, ptr %67, align 2
  %68 = xor i1 %52, %64
  %69 = zext i1 %68 to i8
  store i8 %69, ptr %2, align 2
  %70 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %2, i32 0, i32 5
  %71 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %2, i32 0, i32 6
  %72 = getelementptr inbounds %struct.bdisp_frame, ptr %0, i32 0, i32 7, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.bdisp_frame, ptr %0, i32 0, i32 7, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 1, i32 7, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 1, i32 7, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %77, 0
  br i1 %80, label %104, label %81

81:                                               ; preds = %28
  %82 = icmp eq i32 %77, %73
  br i1 %82, label %91, label %83

83:                                               ; preds = %81
  %84 = shl i32 %73, 10
  %85 = udiv i32 %84, %77
  %86 = icmp ult i32 %85, 65536
  %87 = icmp uge i32 %84, %77
  %88 = and i1 %87, %86
  br i1 %88, label %89, label %104

89:                                               ; preds = %83
  %90 = trunc i32 %85 to i16
  br label %91

91:                                               ; preds = %89, %81
  %92 = phi i16 [ %90, %89 ], [ 1024, %81 ]
  store i16 %92, ptr %70, align 2
  %93 = icmp eq i32 %79, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %91
  %95 = icmp eq i32 %79, %75
  br i1 %95, label %121, label %96

96:                                               ; preds = %94
  %97 = shl i32 %75, 10
  %98 = udiv i32 %97, %79
  %99 = icmp ult i32 %98, 65536
  %100 = icmp uge i32 %97, %79
  %101 = and i1 %100, %99
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = trunc i32 %98 to i16
  br label %121

104:                                              ; preds = %96, %91, %83, %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.5) #10
  br label %142

105:                                              ; preds = %138
  %106 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 5, i32 %139
  %107 = load ptr, ptr %106, align 4
  call fastcc void @bdisp_hw_build_node(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %107, i32 noundef %131, i32 noundef 2048) #9
  %108 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 6, i32 %139
  %109 = load i32, ptr %108, align 4
  %110 = add nsw i32 %139, -1
  %111 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 5, i32 %110
  %112 = load ptr, ptr %111, align 4
  store i32 %109, ptr %112, align 4
  %113 = add nuw nsw i32 %139, 1
  br i1 %132, label %114, label %143

114:                                              ; preds = %105
  %115 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 5, i32 %113
  %116 = load ptr, ptr %115, align 4
  call fastcc void @bdisp_hw_build_node(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %116, i32 noundef 2, i32 noundef 2048) #9
  %117 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 6, i32 %113
  %118 = load i32, ptr %117, align 4
  %119 = load ptr, ptr %106, align 4
  store i32 %118, ptr %119, align 4
  %120 = add nuw nsw i32 %139, 2
  br label %143

121:                                              ; preds = %102, %94
  %122 = phi i16 [ %103, %102 ], [ 1024, %94 ]
  %123 = zext i1 %41 to i16
  %124 = lshr i16 %122, %123
  store i16 %124, ptr %71, align 2
  %125 = icmp ne i16 %92, 1024
  %126 = icmp ne i16 %124, 1024
  %127 = select i1 %125, i1 true, i1 %126
  %128 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %2, i32 0, i32 4
  %129 = zext i1 %127 to i8
  store i8 %129, ptr %128, align 2
  %130 = icmp ne i8 %59, 1
  %131 = zext i1 %130 to i32
  %132 = icmp ugt i8 %59, 1
  call fastcc void @bdisp_hw_build_node(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %8, i32 noundef %131, i32 noundef 0) #9
  br i1 %132, label %133, label %138

133:                                              ; preds = %121
  %134 = load ptr, ptr %13, align 4
  call fastcc void @bdisp_hw_build_node(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %134, i32 noundef 2, i32 noundef 0) #9
  %135 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 6, i32 1
  %136 = load i32, ptr %135, align 4
  %137 = load ptr, ptr %7, align 4
  store i32 %136, ptr %137, align 4
  br label %138

138:                                              ; preds = %133, %121
  %139 = phi i32 [ 2, %133 ], [ 1, %121 ]
  %140 = load i32, ptr %72, align 4
  %141 = icmp ugt i32 %140, 2048
  br i1 %141, label %105, label %143

142:                                              ; preds = %104, %27, %10
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2, i32 noundef -22) #10
  br label %241

143:                                              ; preds = %138, %114, %105
  %144 = phi i32 [ %139, %138 ], [ %120, %114 ], [ %113, %105 ]
  %145 = add nsw i32 %144, -1
  %146 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 5, i32 %145
  %147 = load ptr, ptr %146, align 4
  store i32 0, ptr %147, align 4
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #9
  %148 = load ptr, ptr %3, align 4
  %149 = getelementptr inbounds %struct.bdisp_dev, ptr %148, i32 0, i32 14, i32 1
  %150 = getelementptr inbounds %struct.bdisp_dev, ptr %148, i32 0, i32 14, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(60) %150, ptr noundef align 4 dereferenceable(60) %0, i32 60, i1 false) #9
  %151 = getelementptr inbounds %struct.bdisp_dev, ptr %148, i32 0, i32 14, i32 2, i32 1
  %152 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(60) %151, ptr noundef align 4 dereferenceable(60) %152, i32 60, i1 false) #9
  %153 = load i8, ptr %32, align 4
  %154 = and i8 %153, 1
  %155 = getelementptr inbounds %struct.bdisp_dev, ptr %148, i32 0, i32 14, i32 2, i32 2
  %156 = load i8, ptr %155, align 4
  %157 = and i8 %156, -2
  %158 = or i8 %157, %154
  store i8 %158, ptr %155, align 4
  %159 = load i8, ptr %32, align 4
  %160 = and i8 %159, 2
  %161 = and i8 %158, -3
  %162 = or i8 %161, %160
  store i8 %162, ptr %155, align 4
  %163 = getelementptr inbounds %struct.bdisp_dev, ptr %148, i32 0, i32 14, i32 2, i32 3
  %164 = load i32, ptr %163, align 4
  %165 = add i32 %164, 1
  store i32 %165, ptr %163, align 4
  %166 = load ptr, ptr %149, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %143
  %169 = load ptr, ptr %3, align 4
  %170 = getelementptr inbounds %struct.bdisp_dev, ptr %169, i32 0, i32 3
  %171 = load ptr, ptr %170, align 4
  %172 = tail call noalias ptr @devm_kmalloc(ptr noundef %171, i32 noundef 228, i32 noundef 2848) #9
  store ptr %172, ptr %149, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %213, label %174

174:                                              ; preds = %168, %143
  %175 = phi ptr [ %172, %168 ], [ %166, %143 ]
  %176 = load ptr, ptr %7, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(228) %175, ptr noundef align 4 dereferenceable(228) %176, i32 228, i1 false) #9
  %177 = getelementptr %struct.bdisp_dev, ptr %148, i32 0, i32 14, i32 1, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %186

180:                                              ; preds = %174
  %181 = load ptr, ptr %3, align 4
  %182 = getelementptr inbounds %struct.bdisp_dev, ptr %181, i32 0, i32 3
  %183 = load ptr, ptr %182, align 4
  %184 = tail call noalias ptr @devm_kmalloc(ptr noundef %183, i32 noundef 228, i32 noundef 2848) #9
  store ptr %184, ptr %177, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %213, label %186

186:                                              ; preds = %180, %174
  %187 = phi ptr [ %184, %180 ], [ %178, %174 ]
  %188 = load ptr, ptr %13, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(228) %187, ptr noundef align 4 dereferenceable(228) %188, i32 228, i1 false) #9
  %189 = getelementptr %struct.bdisp_dev, ptr %148, i32 0, i32 14, i32 1, i32 2
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %198

192:                                              ; preds = %186
  %193 = load ptr, ptr %3, align 4
  %194 = getelementptr inbounds %struct.bdisp_dev, ptr %193, i32 0, i32 3
  %195 = load ptr, ptr %194, align 4
  %196 = tail call noalias ptr @devm_kmalloc(ptr noundef %195, i32 noundef 228, i32 noundef 2848) #9
  store ptr %196, ptr %189, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %213, label %198

198:                                              ; preds = %192, %186
  %199 = phi ptr [ %196, %192 ], [ %190, %186 ]
  %200 = load ptr, ptr %17, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(228) %199, ptr noundef align 4 dereferenceable(228) %200, i32 228, i1 false) #9
  %201 = getelementptr %struct.bdisp_dev, ptr %148, i32 0, i32 14, i32 1, i32 3
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %210

204:                                              ; preds = %198
  %205 = load ptr, ptr %3, align 4
  %206 = getelementptr inbounds %struct.bdisp_dev, ptr %205, i32 0, i32 3
  %207 = load ptr, ptr %206, align 4
  %208 = tail call noalias ptr @devm_kmalloc(ptr noundef %207, i32 noundef 228, i32 noundef 2848) #9
  store ptr %208, ptr %201, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %213, label %210

210:                                              ; preds = %204, %198
  %211 = phi ptr [ %208, %204 ], [ %202, %198 ]
  %212 = load ptr, ptr %21, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(228) %211, ptr noundef align 4 dereferenceable(228) %212, i32 228, i1 false) #9
  br label %213

213:                                              ; preds = %210, %204, %192, %180, %168
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %214 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 10
  %215 = load ptr, ptr %214, align 4
  %216 = getelementptr i8, ptr %215, i32 2656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 -2143289341) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %217 = load ptr, ptr %214, align 4
  %218 = getelementptr i8, ptr %217, i32 2768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %218, i32 4096) #9, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  %219 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 6
  %220 = load i32, ptr %219, align 4
  %221 = load ptr, ptr %214, align 4
  %222 = getelementptr i8, ptr %221, i32 2660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %222, i32 %220) #9, !srcloc !9
  %223 = load ptr, ptr %7, align 4
  %224 = load i32, ptr %223, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %235, label %226

226:                                              ; preds = %213
  %227 = load ptr, ptr %13, align 4
  %228 = load i32, ptr %227, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %235, label %230

230:                                              ; preds = %226
  %231 = load ptr, ptr %17, align 4
  %232 = load i32, ptr %231, align 4
  %233 = icmp eq i32 %232, 0
  %234 = select i1 %233, i32 2, i32 3
  br label %235

235:                                              ; preds = %230, %226, %213
  %236 = phi i32 [ 0, %213 ], [ 1, %226 ], [ %234, %230 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  %237 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 6, i32 %236
  %238 = load i32, ptr %237, align 4
  %239 = load ptr, ptr %214, align 4
  %240 = getelementptr i8, ptr %239, i32 2664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %240, i32 %238) #9, !srcloc !9
  br label %241

241:                                              ; preds = %235, %142
  %242 = phi i32 [ -22, %142 ], [ 0, %235 ]
  ret i32 %242
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bdisp_hw_build_node(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #6 {
  %6 = getelementptr inbounds %struct.bdisp_frame, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bdisp_frame, ptr %0, i32 0, i32 7, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bdisp_frame, ptr %0, i32 0, i32 7, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.bdisp_frame, ptr %0, i32 0, i32 7, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 1, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 1, i32 7, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 1, i32 7, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 1, i32 7, i32 2
  %21 = load i32, ptr %20, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(228) %2, i8 0, i32 228, i1 false)
  %22 = add i32 %7, %4
  %23 = sub i32 %11, %4
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 2048)
  %25 = mul i32 %21, %4
  %26 = load i32, ptr %10, align 4
  %27 = udiv i32 %25, %26
  %28 = add i32 %27, %15
  %29 = mul i32 %21, %24
  %30 = udiv i32 %29, %26
  %31 = getelementptr inbounds %struct.bdisp_frame, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 1, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 1
  store i32 1040380, ptr %37, align 4
  %38 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 3
  store i32 7, ptr %38, align 4
  %39 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %1, i32 0, i32 8
  %40 = load i8, ptr %39, align 1
  switch i8 %40, label %48 [
    i8 1, label %41
    i8 2, label %43
  ]

41:                                               ; preds = %5
  %42 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 2
  store i32 8, ptr %42, align 4
  br label %53

43:                                               ; preds = %5
  %44 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 2
  %45 = icmp eq i32 %3, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 56, ptr %44, align 4
  br label %53

47:                                               ; preds = %43
  store i32 40, ptr %44, align 4
  br label %53

48:                                               ; preds = %5
  %49 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 2
  %50 = icmp eq i32 %3, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 59, ptr %49, align 4
  br label %53

52:                                               ; preds = %48
  store i32 41, ptr %49, align 4
  br label %53

53:                                               ; preds = %52, %51, %47, %46, %41
  %54 = phi i32 [ 59, %51 ], [ 41, %52 ], [ 56, %46 ], [ 40, %47 ], [ 8, %41 ]
  %55 = load i8, ptr %1, align 2, !range !22
  %56 = icmp eq i8 %55, 0
  %57 = select i1 %56, i32 0, i32 64
  %58 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 2
  %59 = or i32 %57, %54
  store i32 %59, ptr %58, align 4
  %60 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %1, i32 0, i32 4
  %61 = load i8, ptr %60, align 2, !range !22
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %1, i32 0, i32 10
  %65 = load i8, ptr %64, align 1, !range !22
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %1, i32 0, i32 13
  %69 = load i8, ptr %68, align 2, !range !22
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67, %63, %53
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i1 [ true, %67 ], [ false, %71 ]
  %74 = phi i32 [ 0, %67 ], [ 256, %71 ]
  %75 = or i32 %74, %59
  store i32 %75, ptr %58, align 4
  %76 = icmp eq i32 %3, 2
  %77 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 1, i32 8
  %78 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 1, i32 8, i32 1
  %79 = select i1 %76, ptr %78, ptr %77
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 4
  store i32 %80, ptr %81, align 4
  %82 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 1, i32 4
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 5
  switch i32 %36, label %89 [
    i32 842093913, label %90
    i32 842094158, label %85
    i32 1346520914, label %86
    i32 875713112, label %87
    i32 859981650, label %88
  ]

85:                                               ; preds = %72
  br label %90

86:                                               ; preds = %72
  br label %90

87:                                               ; preds = %72
  br label %90

88:                                               ; preds = %72
  br label %90

89:                                               ; preds = %72
  br label %90

90:                                               ; preds = %89, %88, %87, %86, %85, %72
  %91 = phi i32 [ 2424832, %89 ], [ 1073807360, %88 ], [ 131072, %87 ], [ 0, %86 ], [ 1075183616, %85 ], [ 1966080, %72 ]
  %92 = select i1 %76, i32 201326592, i32 67108864
  %93 = or i32 %92, %83
  %94 = or i32 %93, %91
  store i32 %94, ptr %84, align 4
  %95 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %1, i32 0, i32 1
  %96 = load i8, ptr %95, align 1, !range !22
  %97 = icmp eq i8 %96, 0
  %98 = select i1 %97, i32 0, i32 16777216
  %99 = or i32 %98, %94
  store i32 %99, ptr %84, align 4
  %100 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %1, i32 0, i32 2
  %101 = load i8, ptr %100, align 2, !range !22
  %102 = icmp eq i8 %101, 0
  %103 = select i1 %102, i32 0, i32 33554432
  %104 = or i32 %103, %99
  store i32 %104, ptr %84, align 4
  %105 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %1, i32 0, i32 13
  %106 = load i8, ptr %105, align 2, !range !22
  %107 = icmp ne i8 %106, 0
  %108 = and i1 %76, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %90
  %110 = lshr i32 %19, 1
  %111 = lshr i32 %30, 1
  %112 = sdiv i32 %28, 2
  %113 = sdiv i32 %17, 2
  %114 = sdiv i32 %27, 2
  %115 = sdiv i32 %21, 2
  br label %116

116:                                              ; preds = %109, %90
  %117 = phi i32 [ %112, %109 ], [ %28, %90 ]
  %118 = phi i32 [ %113, %109 ], [ %17, %90 ]
  %119 = phi i32 [ %111, %109 ], [ %30, %90 ]
  %120 = phi i32 [ %110, %109 ], [ %19, %90 ]
  %121 = phi i32 [ %114, %109 ], [ %27, %90 ]
  %122 = phi i32 [ %115, %109 ], [ %21, %90 ]
  %123 = load i8, ptr %100, align 2, !range !22
  %124 = icmp eq i8 %123, 0
  %125 = add i32 %120, 65535
  %126 = select i1 %124, i32 %118, i32 %125
  %127 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 6
  %128 = shl i32 %126, 16
  store i32 %128, ptr %127, align 4
  %129 = load i8, ptr %95, align 1, !range !22
  %130 = icmp eq i8 %129, 0
  %131 = xor i32 %121, -1
  %132 = add i32 %122, %131
  %133 = select i1 %130, i32 %117, i32 %132
  %134 = or i32 %133, %128
  store i32 %134, ptr %127, align 4
  %135 = shl i32 %120, 16
  %136 = or i32 %135, %119
  %137 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 7
  store i32 %136, ptr %137, align 4
  %138 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %1, i32 0, i32 7
  %139 = load i8, ptr %138, align 2, !range !22
  %140 = icmp eq i8 %139, 0
  %141 = sdiv i32 %9, 2
  %142 = select i1 %140, i32 %9, i32 %141
  %143 = xor i1 %140, true
  %144 = zext i1 %143 to i32
  %145 = lshr i32 %13, %144
  %146 = load i8, ptr %39, align 1
  %147 = icmp eq i8 %146, 1
  br i1 %147, label %148, label %172

148:                                              ; preds = %116
  %149 = getelementptr inbounds %struct.bdisp_frame, ptr %0, i32 0, i32 8
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 14
  store i32 %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.bdisp_frame, ptr %0, i32 0, i32 4
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 15
  store i32 %153, ptr %154, align 4
  %155 = load i8, ptr %138, align 2, !range !22
  %156 = zext i8 %155 to i32
  %157 = shl i32 %153, %156
  switch i32 %33, label %162 [
    i32 842093913, label %163
    i32 842094158, label %158
    i32 1346520914, label %159
    i32 875713112, label %160
    i32 859981650, label %161
  ]

158:                                              ; preds = %148
  br label %163

159:                                              ; preds = %148
  br label %163

160:                                              ; preds = %148
  br label %163

161:                                              ; preds = %148
  br label %163

162:                                              ; preds = %148
  br label %163

163:                                              ; preds = %162, %161, %160, %159, %158, %148
  %164 = phi i32 [ 2424832, %162 ], [ 1073807360, %161 ], [ 131072, %160 ], [ 0, %159 ], [ 1075183616, %158 ], [ 1966080, %148 ]
  %165 = or i32 %157, %164
  store i32 %165, ptr %154, align 4
  %166 = shl i32 %142, 16
  %167 = or i32 %166, %22
  %168 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 16
  store i32 %167, ptr %168, align 4
  %169 = shl i32 %145, 16
  %170 = or i32 %169, %24
  %171 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 17
  store i32 %170, ptr %171, align 4
  br label %247

172:                                              ; preds = %116
  %173 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %1, i32 0, i32 10
  %174 = load i8, ptr %173, align 1, !range !22
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %172
  %177 = sdiv i32 %142, 2
  %178 = sdiv i32 %22, 2
  %179 = lshr i32 %24, 1
  %180 = lshr i32 %145, 1
  br label %181

181:                                              ; preds = %176, %172
  %182 = phi i32 [ %178, %176 ], [ %22, %172 ]
  %183 = phi i32 [ %177, %176 ], [ %142, %172 ]
  %184 = phi i32 [ %179, %176 ], [ %24, %172 ]
  %185 = phi i32 [ %180, %176 ], [ %145, %172 ]
  %186 = getelementptr inbounds %struct.bdisp_frame, ptr %0, i32 0, i32 8
  %187 = getelementptr %struct.bdisp_frame, ptr %0, i32 0, i32 8, i32 1
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 14
  store i32 %188, ptr %189, align 4
  %190 = getelementptr inbounds %struct.bdisp_frame, ptr %0, i32 0, i32 4
  %191 = load i32, ptr %190, align 4
  %192 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 15
  store i32 %191, ptr %192, align 4
  %193 = load i8, ptr %39, align 1
  %194 = icmp eq i8 %193, 3
  br i1 %194, label %195, label %197

195:                                              ; preds = %181
  %196 = lshr i32 %191, 1
  store i32 %196, ptr %192, align 4
  br label %197

197:                                              ; preds = %195, %181
  %198 = phi i32 [ %196, %195 ], [ %191, %181 ]
  %199 = load i8, ptr %138, align 2, !range !22
  %200 = zext i8 %199 to i32
  %201 = shl i32 %198, %200
  switch i32 %33, label %206 [
    i32 842093913, label %207
    i32 842094158, label %202
    i32 1346520914, label %203
    i32 875713112, label %204
    i32 859981650, label %205
  ]

202:                                              ; preds = %197
  br label %207

203:                                              ; preds = %197
  br label %207

204:                                              ; preds = %197
  br label %207

205:                                              ; preds = %197
  br label %207

206:                                              ; preds = %197
  br label %207

207:                                              ; preds = %206, %205, %204, %203, %202, %197
  %208 = phi i32 [ 2424832, %206 ], [ 1073807360, %205 ], [ 131072, %204 ], [ 0, %203 ], [ 1075183616, %202 ], [ 1966080, %197 ]
  %209 = or i32 %201, %208
  store i32 %209, ptr %192, align 4
  %210 = shl i32 %183, 16
  %211 = or i32 %210, %182
  %212 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 16
  store i32 %211, ptr %212, align 4
  %213 = shl i32 %185, 16
  %214 = or i32 %213, %184
  %215 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 17
  store i32 %214, ptr %215, align 4
  %216 = load i8, ptr %39, align 1
  %217 = icmp eq i8 %216, 3
  br i1 %217, label %218, label %224

218:                                              ; preds = %207
  %219 = getelementptr %struct.bdisp_frame, ptr %0, i32 0, i32 8, i32 2
  %220 = load i32, ptr %219, align 4
  %221 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 10
  store i32 %220, ptr %221, align 4
  %222 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 11
  store i32 %209, ptr %222, align 4
  %223 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 12
  store i32 %211, ptr %223, align 4
  br label %224

224:                                              ; preds = %218, %207
  %225 = load i32, ptr %186, align 4
  %226 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 18
  store i32 %225, ptr %226, align 4
  %227 = load i32, ptr %190, align 4
  %228 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 19
  store i32 %227, ptr %228, align 4
  %229 = load i8, ptr %138, align 2, !range !22
  %230 = zext i8 %229 to i32
  %231 = shl i32 %227, %230
  switch i32 %33, label %236 [
    i32 842093913, label %237
    i32 842094158, label %232
    i32 1346520914, label %233
    i32 875713112, label %234
    i32 859981650, label %235
  ]

232:                                              ; preds = %224
  br label %237

233:                                              ; preds = %224
  br label %237

234:                                              ; preds = %224
  br label %237

235:                                              ; preds = %224
  br label %237

236:                                              ; preds = %224
  br label %237

237:                                              ; preds = %236, %235, %234, %233, %232, %224
  %238 = phi i32 [ 2424832, %236 ], [ 1073807360, %235 ], [ 131072, %234 ], [ 0, %233 ], [ 1075183616, %232 ], [ 1966080, %224 ]
  %239 = or i32 %231, %238
  store i32 %239, ptr %228, align 4
  br i1 %76, label %243, label %240

240:                                              ; preds = %237
  %241 = load i8, ptr %173, align 1, !range !22
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %240, %237
  %244 = or i32 %239, 67108864
  store i32 %244, ptr %228, align 4
  %245 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 20
  store i32 %211, ptr %245, align 4
  %246 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 21
  store i32 %214, ptr %246, align 4
  br label %247

247:                                              ; preds = %243, %163
  br i1 %73, label %411, label %253

248:                                              ; preds = %240
  %249 = shl i32 %211, 1
  %250 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 20
  store i32 %249, ptr %250, align 4
  %251 = shl i32 %214, 1
  %252 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 21
  store i32 %251, ptr %252, align 4
  br i1 %73, label %411, label %258

253:                                              ; preds = %247
  br i1 %76, label %254, label %258

254:                                              ; preds = %253
  %255 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %1, i32 0, i32 9
  %256 = load i8, ptr %255, align 2, !range !22
  %257 = icmp eq i8 %256, 0
  br label %258

258:                                              ; preds = %254, %253, %248
  %259 = phi i1 [ false, %253 ], [ %257, %254 ], [ false, %248 ]
  %260 = load i8, ptr %60, align 2, !range !22
  %261 = icmp eq i8 %260, 0
  %262 = select i1 %259, i32 68, i32 570425412
  %263 = select i1 %259, i32 85, i32 855638101
  %264 = select i1 %261, i32 %262, i32 %263
  %265 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 26
  store i32 %264, ptr %265, align 4
  %266 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %1, i32 0, i32 5
  %267 = load i16, ptr %266, align 2
  %268 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %1, i32 0, i32 6
  %269 = load i16, ptr %268, align 2
  %270 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %1, i32 0, i32 10
  %271 = load i8, ptr %270, align 1, !range !22
  %272 = icmp eq i8 %271, 0
  %273 = load i8, ptr %105, align 2, !range !22
  br i1 %272, label %274, label %280

274:                                              ; preds = %258
  %275 = icmp ne i8 %273, 0
  %276 = and i1 %76, %275
  br i1 %276, label %277, label %285

277:                                              ; preds = %274
  %278 = shl i16 %267, 1
  %279 = shl i16 %269, 1
  br label %285

280:                                              ; preds = %258
  %281 = icmp eq i8 %273, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %280
  %283 = lshr i16 %267, 1
  %284 = lshr i16 %269, 1
  br label %285

285:                                              ; preds = %282, %280, %277, %274
  %286 = phi i16 [ %269, %280 ], [ %284, %282 ], [ %279, %277 ], [ %269, %274 ]
  %287 = phi i16 [ %267, %280 ], [ %283, %282 ], [ %278, %277 ], [ %267, %274 ]
  %288 = zext i16 %286 to i32
  %289 = shl nuw i32 %288, 16
  %290 = zext i16 %287 to i32
  %291 = or i32 %289, %290
  %292 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 28
  store i32 %291, ptr %292, align 4
  %293 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 29
  store i32 536883200, ptr %293, align 4
  %294 = tail call fastcc i32 @bdisp_hw_get_hf_addr(i16 noundef zeroext %287)
  %295 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 30
  store i32 %294, ptr %295, align 4
  %296 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 8), align 4
  %297 = icmp uge i16 %296, %286
  %298 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 8, i32 1), align 2
  %299 = icmp ult i16 %298, %286
  %300 = select i1 %297, i1 true, i1 %299
  br i1 %300, label %301, label %344

301:                                              ; preds = %285
  %302 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 7), align 4
  %303 = icmp uge i16 %302, %286
  %304 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 7, i32 1), align 2
  %305 = icmp ult i16 %304, %286
  %306 = select i1 %303, i1 true, i1 %305
  br i1 %306, label %307, label %344

307:                                              ; preds = %301
  %308 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 6), align 4
  %309 = icmp uge i16 %308, %286
  %310 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 6, i32 1), align 2
  %311 = icmp ult i16 %310, %286
  %312 = select i1 %309, i1 true, i1 %311
  br i1 %312, label %313, label %344

313:                                              ; preds = %307
  %314 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 5), align 4
  %315 = icmp uge i16 %314, %286
  %316 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 5, i32 1), align 2
  %317 = icmp ult i16 %316, %286
  %318 = select i1 %315, i1 true, i1 %317
  br i1 %318, label %319, label %344

319:                                              ; preds = %313
  %320 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 4), align 4
  %321 = icmp uge i16 %320, %286
  %322 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 4, i32 1), align 2
  %323 = icmp ult i16 %322, %286
  %324 = select i1 %321, i1 true, i1 %323
  br i1 %324, label %325, label %344

325:                                              ; preds = %319
  %326 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 3), align 4
  %327 = icmp uge i16 %326, %286
  %328 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 3, i32 1), align 2
  %329 = icmp ult i16 %328, %286
  %330 = select i1 %327, i1 true, i1 %329
  br i1 %330, label %331, label %344

331:                                              ; preds = %325
  %332 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 2), align 4
  %333 = icmp uge i16 %332, %286
  %334 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 2, i32 1), align 2
  %335 = icmp ult i16 %334, %286
  %336 = select i1 %333, i1 true, i1 %335
  br i1 %336, label %337, label %344

337:                                              ; preds = %331
  %338 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 1), align 4
  %339 = icmp ult i16 %338, %286
  %340 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 1, i32 1), align 2
  %341 = icmp uge i16 %340, %286
  %342 = select i1 %339, i1 %341, i1 false
  %343 = zext i1 %342 to i32
  br label %344

344:                                              ; preds = %337, %331, %325, %319, %313, %307, %301, %285
  %345 = phi i32 [ 8, %285 ], [ 7, %301 ], [ 6, %307 ], [ 5, %313 ], [ 4, %319 ], [ 3, %325 ], [ 2, %331 ], [ %343, %337 ]
  %346 = getelementptr [9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 %345, i32 3
  %347 = load i32, ptr %346, align 4
  %348 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 31
  store i32 %347, ptr %348, align 4
  br i1 %259, label %411, label %349

349:                                              ; preds = %344
  %350 = load i16, ptr %266, align 2
  %351 = load i16, ptr %268, align 2
  %352 = zext i16 %351 to i32
  %353 = shl nuw i32 %352, 16
  %354 = zext i16 %350 to i32
  %355 = or i32 %353, %354
  %356 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 32
  store i32 %355, ptr %356, align 4
  %357 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 33
  store i32 536883200, ptr %357, align 4
  %358 = tail call fastcc i32 @bdisp_hw_get_hf_addr(i16 noundef zeroext %350)
  %359 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 34
  store i32 %358, ptr %359, align 4
  %360 = icmp uge i16 %296, %351
  %361 = icmp ult i16 %298, %351
  %362 = select i1 %360, i1 true, i1 %361
  br i1 %362, label %363, label %406

363:                                              ; preds = %349
  %364 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 7), align 4
  %365 = icmp uge i16 %364, %351
  %366 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 7, i32 1), align 2
  %367 = icmp ult i16 %366, %351
  %368 = select i1 %365, i1 true, i1 %367
  br i1 %368, label %369, label %406

369:                                              ; preds = %363
  %370 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 6), align 4
  %371 = icmp uge i16 %370, %351
  %372 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 6, i32 1), align 2
  %373 = icmp ult i16 %372, %351
  %374 = select i1 %371, i1 true, i1 %373
  br i1 %374, label %375, label %406

375:                                              ; preds = %369
  %376 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 5), align 4
  %377 = icmp uge i16 %376, %351
  %378 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 5, i32 1), align 2
  %379 = icmp ult i16 %378, %351
  %380 = select i1 %377, i1 true, i1 %379
  br i1 %380, label %381, label %406

381:                                              ; preds = %375
  %382 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 4), align 4
  %383 = icmp uge i16 %382, %351
  %384 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 4, i32 1), align 2
  %385 = icmp ult i16 %384, %351
  %386 = select i1 %383, i1 true, i1 %385
  br i1 %386, label %387, label %406

387:                                              ; preds = %381
  %388 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 3), align 4
  %389 = icmp uge i16 %388, %351
  %390 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 3, i32 1), align 2
  %391 = icmp ult i16 %390, %351
  %392 = select i1 %389, i1 true, i1 %391
  br i1 %392, label %393, label %406

393:                                              ; preds = %387
  %394 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 2), align 4
  %395 = icmp uge i16 %394, %351
  %396 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 2, i32 1), align 2
  %397 = icmp ult i16 %396, %351
  %398 = select i1 %395, i1 true, i1 %397
  br i1 %398, label %399, label %406

399:                                              ; preds = %393
  %400 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 1), align 4
  %401 = icmp ult i16 %400, %351
  %402 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 1, i32 1), align 2
  %403 = icmp uge i16 %402, %351
  %404 = select i1 %401, i1 %403, i1 false
  %405 = zext i1 %404 to i32
  br label %406

406:                                              ; preds = %399, %393, %387, %381, %375, %369, %363, %349
  %407 = phi i32 [ 8, %349 ], [ 7, %363 ], [ 6, %369 ], [ 5, %375 ], [ 4, %381 ], [ 3, %387 ], [ 2, %393 ], [ %405, %399 ]
  %408 = getelementptr [9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 %407, i32 3
  %409 = load i32, ptr %408, align 4
  %410 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 35
  store i32 %409, ptr %410, align 4
  br label %411

411:                                              ; preds = %406, %344, %248, %247
  %412 = load i8, ptr %1, align 2, !range !22
  %413 = icmp eq i8 %412, 0
  br i1 %413, label %426, label %414

414:                                              ; preds = %411
  %415 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %1, i32 0, i32 9
  %416 = load i8, ptr %415, align 2, !range !22
  %417 = icmp eq i8 %416, 0
  %418 = select i1 %417, i32 236882926, i32 858040320
  %419 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 44
  store i32 %418, ptr %419, align 4
  %420 = select i1 %417, i32 138544153, i32 -435901540
  %421 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 45
  store i32 %420, ptr %421, align 4
  %422 = select i1 %417, i32 -77671311, i32 305495
  %423 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 46
  store i32 %422, ptr %423, align 4
  %424 = select i1 %417, i32 134234240, i32 840048363
  %425 = getelementptr inbounds %struct.bdisp_node, ptr %2, i32 0, i32 47
  store i32 %424, ptr %425, align 4
  br label %426

426:                                              ; preds = %414, %411
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @bdisp_hw_get_hf_addr(i16 noundef zeroext %0) unnamed_addr #7 {
  %2 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 11), align 4
  %3 = icmp uge i16 %2, %0
  %4 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 11, i32 1), align 2
  %5 = icmp ult i16 %4, %0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %7, label %68

7:                                                ; preds = %1
  %8 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 10), align 4
  %9 = icmp uge i16 %8, %0
  %10 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 10, i32 1), align 2
  %11 = icmp ult i16 %10, %0
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %13, label %68

13:                                               ; preds = %7
  %14 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 9), align 4
  %15 = icmp uge i16 %14, %0
  %16 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 9, i32 1), align 2
  %17 = icmp ult i16 %16, %0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %19, label %68

19:                                               ; preds = %13
  %20 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 8), align 4
  %21 = icmp uge i16 %20, %0
  %22 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 8, i32 1), align 2
  %23 = icmp ult i16 %22, %0
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %19
  %26 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 7), align 4
  %27 = icmp uge i16 %26, %0
  %28 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 7, i32 1), align 2
  %29 = icmp ult i16 %28, %0
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %25
  %32 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 6), align 4
  %33 = icmp uge i16 %32, %0
  %34 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 6, i32 1), align 2
  %35 = icmp ult i16 %34, %0
  %36 = select i1 %33, i1 true, i1 %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %31
  %38 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 5), align 4
  %39 = icmp uge i16 %38, %0
  %40 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 5, i32 1), align 2
  %41 = icmp ult i16 %40, %0
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %37
  %44 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 4), align 4
  %45 = icmp uge i16 %44, %0
  %46 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 4, i32 1), align 2
  %47 = icmp ult i16 %46, %0
  %48 = select i1 %45, i1 true, i1 %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %43
  %50 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 3), align 4
  %51 = icmp uge i16 %50, %0
  %52 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 3, i32 1), align 2
  %53 = icmp ult i16 %52, %0
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 2), align 4
  %57 = icmp uge i16 %56, %0
  %58 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 2, i32 1), align 2
  %59 = icmp ult i16 %58, %0
  %60 = select i1 %57, i1 true, i1 %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 1), align 4
  %63 = icmp ult i16 %62, %0
  %64 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 1, i32 1), align 2
  %65 = icmp uge i16 %64, %0
  %66 = select i1 %63, i1 %65, i1 false
  %67 = zext i1 %66 to i32
  br label %68

68:                                               ; preds = %61, %55, %49, %43, %37, %31, %25, %19, %13, %7, %1
  %69 = phi i32 [ 11, %1 ], [ 10, %7 ], [ 9, %13 ], [ 8, %19 ], [ 7, %25 ], [ 6, %31 ], [ 5, %37 ], [ 4, %43 ], [ 3, %49 ], [ 2, %55 ], [ %67, %61 ]
  %70 = getelementptr [12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 %69, i32 3
  %71 = load i32, ptr %70, align 4
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 2154990094}
!9 = !{i64 5948573}
!10 = !{i64 2154991057}
!11 = !{i64 5948991}
!12 = !{i64 2154991568}
!13 = !{i64 2154991794}
!14 = !{i64 2154992276}
!15 = !{i64 2154993793}
!16 = !{i64 2154995349}
!17 = !{!"auto-init"}
!18 = !{i64 2155009068}
!19 = !{i64 2155009518}
!20 = !{i64 2155009910}
!21 = !{i64 2155010335}
!22 = !{i8 0, i8 2}
