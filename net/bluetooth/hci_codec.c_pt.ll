; ModuleID = '/llk/IR/net/bluetooth/hci_codec.c_pt.bc'
source_filename = "../net/bluetooth/hci_codec.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.hci_op_read_local_codec_caps = type <{ i8, i16, i16, i8, i8 }>
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff_head = type { %union.anon.0, i32, %struct.spinlock }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.1, %union.anon.98, %union.anon.99, [48 x i8], %union.anon.100, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.102, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, ptr, %union.anon.3 }
%union.anon.3 = type { ptr }
%union.anon.98 = type { ptr }
%union.anon.99 = type { i64 }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { i32, ptr }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.104, i32, i32, i32, i16, i16, %union.anon.106, %union.anon.107, %union.anon.108, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.104 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i16 }
%struct.hci_std_codecs = type { i8, [0 x i8] }
%struct.hci_vnd_codecs = type <{ i8, [0 x %struct.hci_vnd_codec] }>
%struct.hci_vnd_codec = type { i16, i16 }
%struct.codec_list = type { %struct.list_head, i8, i16, i16, i8, i8, i32, [0 x %struct.hci_codec_caps] }
%struct.hci_codec_caps = type { i8, [0 x i8] }
%struct.hci_rp_read_local_codec_caps = type { i8, i8 }
%struct.hci_std_codecs_v2 = type { i8, [0 x %struct.hci_std_codec_v2] }
%struct.hci_std_codec_v2 = type { i8, i8 }
%struct.hci_vnd_codecs_v2 = type { i8, [0 x %struct.hci_vnd_codec_v2] }
%struct.hci_vnd_codec_v2 = type <{ i8, i16, i16, i8 }>

@.str = private unnamed_addr constant [49 x i8] c"%s: Failed to read local supported codecs (%ld)\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: Failed to read codec capabilities (%ld)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_codec_list_clear(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %11, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  store volatile ptr %6, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  tail call void @kfree(ptr noundef %5) #7
  %10 = icmp eq ptr %6, %0
  br i1 %10, label %11, label %4

11:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_read_supported_codecs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.hci_op_read_local_codec_caps, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %2, i8 0, i32 7, i1 false), !annotation !8
  %3 = tail call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext 4107, i32 noundef 0, ptr noundef null, i32 noundef 200) #7
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %7 = ptrtoint ptr %3 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %6, i32 noundef %7) #7
  br label %67

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %66, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %66

17:                                               ; preds = %12
  %18 = tail call ptr @skb_pull(ptr noundef %3, i32 noundef 1) #7
  %19 = load ptr, ptr %13, align 4
  %20 = load i32, ptr %9, align 8
  %21 = load i8, ptr %19, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ugt i32 %20, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %2, i8 0, i32 7, i1 false)
  %25 = load i8, ptr %19, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.hci_op_read_local_codec_caps, ptr %2, i32 0, i32 4
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi i32 [ 0, %27 ], [ %33, %29 ]
  %31 = getelementptr %struct.hci_std_codecs, ptr %19, i32 0, i32 1, i32 %30
  %32 = load i8, ptr %31, align 1
  store i8 %32, ptr %2, align 1
  store i8 0, ptr %28, align 1
  call fastcc void @hci_read_codec_capabilities(ptr noundef %0, i8 noundef zeroext 1, ptr noundef nonnull %2)
  %33 = add nuw nsw i32 %30, 1
  %34 = load i8, ptr %19, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %29, label %37

37:                                               ; preds = %29
  %38 = zext i8 %34 to i32
  %39 = add nuw nsw i32 %38, 1
  br label %40

40:                                               ; preds = %37, %24
  %41 = phi i32 [ %39, %37 ], [ 1, %24 ]
  %42 = call ptr @skb_pull(ptr noundef %3, i32 noundef %41) #7
  %43 = load ptr, ptr %13, align 4
  %44 = load i32, ptr %9, align 8
  %45 = load i8, ptr %43, align 1
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 2
  %48 = or i32 %47, 1
  %49 = icmp ult i32 %44, %48
  %50 = icmp eq i8 %45, 0
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %66, label %52

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.hci_op_read_local_codec_caps, ptr %2, i32 0, i32 1
  %54 = getelementptr inbounds %struct.hci_op_read_local_codec_caps, ptr %2, i32 0, i32 2
  %55 = getelementptr inbounds %struct.hci_op_read_local_codec_caps, ptr %2, i32 0, i32 4
  br label %56

56:                                               ; preds = %56, %52
  %57 = phi i32 [ 0, %52 ], [ %62, %56 ]
  store i8 -1, ptr %2, align 1
  %58 = getelementptr %struct.hci_vnd_codecs, ptr %43, i32 0, i32 1, i32 %57
  %59 = load i16, ptr %58, align 1
  store i16 %59, ptr %53, align 1
  %60 = getelementptr %struct.hci_vnd_codecs, ptr %43, i32 0, i32 1, i32 %57, i32 1
  %61 = load i16, ptr %60, align 1
  store i16 %61, ptr %54, align 1
  store i8 0, ptr %55, align 1
  call fastcc void @hci_read_codec_capabilities(ptr noundef %0, i8 noundef zeroext 1, ptr noundef nonnull %2)
  %62 = add nuw nsw i32 %57, 1
  %63 = load i8, ptr %43, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ult i32 %62, %64
  br i1 %65, label %56, label %66

66:                                               ; preds = %56, %40, %17, %12, %8
  call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  br label %67

67:                                               ; preds = %66, %5
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %2) #7
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hci_read_codec_capabilities(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = zext i8 %1 to i32
  %5 = getelementptr inbounds %struct.hci_op_read_local_codec_caps, ptr %2, i32 0, i32 3
  %6 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 45
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 198
  %9 = getelementptr inbounds %struct.hci_op_read_local_codec_caps, ptr %2, i32 0, i32 1
  %10 = getelementptr inbounds %struct.hci_op_read_local_codec_caps, ptr %2, i32 0, i32 2
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  br label %12

12:                                               ; preds = %113, %3
  %13 = phi i32 [ 0, %3 ], [ %114, %113 ]
  %14 = shl nuw nsw i32 1, %13
  %15 = and i32 %14, %4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %113, label %17

17:                                               ; preds = %12
  %18 = trunc i32 %13 to i8
  store i8 %18, ptr %5, align 1
  %19 = load i8, ptr %6, align 1
  %20 = and i8 %19, 8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %17
  tail call void @mutex_lock(ptr noundef %7) #7
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 20) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %22
  %27 = load i8, ptr %2, align 1
  %28 = getelementptr inbounds %struct.codec_list, ptr %24, i32 0, i32 1
  store i8 %27, ptr %28, align 8
  %29 = icmp eq i8 %27, -1
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i16, ptr %9, align 1
  %32 = getelementptr inbounds %struct.codec_list, ptr %24, i32 0, i32 2
  store i16 %31, ptr %32, align 2
  %33 = load i16, ptr %10, align 1
  %34 = getelementptr inbounds %struct.codec_list, ptr %24, i32 0, i32 3
  store i16 %33, ptr %34, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = load i8, ptr %5, align 1
  %37 = getelementptr inbounds %struct.codec_list, ptr %24, i32 0, i32 4
  store i8 %36, ptr %37, align 2
  %38 = getelementptr inbounds %struct.codec_list, ptr %24, i32 0, i32 6
  store i32 0, ptr %38, align 8
  %39 = getelementptr inbounds %struct.codec_list, ptr %24, i32 0, i32 5
  store i8 0, ptr %39, align 1
  %40 = load ptr, ptr %8, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %24, ptr %41, align 4
  store ptr %40, ptr %24, align 8
  %42 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %8, ptr %42, align 4
  store volatile ptr %24, ptr %8, align 4
  br label %43

43:                                               ; preds = %35, %22
  tail call void @mutex_unlock(ptr noundef %7) #7
  br label %113

44:                                               ; preds = %17
  %45 = tail call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext 4110, i32 noundef 7, ptr noundef %2, i32 noundef 200) #7
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = ptrtoint ptr %45 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.1, ptr noundef %11, i32 noundef %48) #7
  br label %113

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 5
  %51 = load i32, ptr %50, align 8
  %52 = icmp ult i32 %51, 2
  br i1 %52, label %112, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 17
  %55 = load ptr, ptr %54, align 4
  %56 = load i8, ptr %55, align 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %112

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.hci_rp_read_local_codec_caps, ptr %55, i32 0, i32 1
  %60 = load i8, ptr %59, align 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %83, label %62

62:                                               ; preds = %58
  %63 = tail call ptr @skb_pull(ptr noundef %45, i32 noundef 2) #7
  %64 = load i8, ptr %59, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %83, label %66

66:                                               ; preds = %76, %62
  %67 = phi i32 [ %78, %76 ], [ 0, %62 ]
  %68 = phi i8 [ %80, %76 ], [ 0, %62 ]
  %69 = load i32, ptr %50, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %112, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr %54, align 4
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp ult i32 %69, %74
  br i1 %75, label %112, label %76

76:                                               ; preds = %71
  %77 = add nuw nsw i32 %74, 1
  %78 = add i32 %77, %67
  %79 = tail call ptr @skb_pull(ptr noundef %45, i32 noundef %77) #7
  %80 = add nuw i8 %68, 1
  %81 = load i8, ptr %59, align 1
  %82 = icmp ult i8 %80, %81
  br i1 %82, label %66, label %83

83:                                               ; preds = %76, %62, %58
  %84 = phi i32 [ 0, %58 ], [ 0, %62 ], [ %78, %76 ]
  tail call void @mutex_lock(ptr noundef %7) #7
  %85 = getelementptr i8, ptr %55, i32 2
  %86 = add i32 %84, 20
  %87 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %86, i32 noundef 3520) #9
  %88 = icmp eq ptr %87, null
  br i1 %88, label %111, label %89

89:                                               ; preds = %83
  %90 = load i8, ptr %2, align 1
  %91 = getelementptr inbounds %struct.codec_list, ptr %87, i32 0, i32 1
  store i8 %90, ptr %91, align 8
  %92 = icmp eq i8 %90, -1
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i16, ptr %9, align 1
  %95 = getelementptr inbounds %struct.codec_list, ptr %87, i32 0, i32 2
  store i16 %94, ptr %95, align 2
  %96 = load i16, ptr %10, align 1
  %97 = getelementptr inbounds %struct.codec_list, ptr %87, i32 0, i32 3
  store i16 %96, ptr %97, align 4
  br label %98

98:                                               ; preds = %93, %89
  %99 = load i8, ptr %5, align 1
  %100 = getelementptr inbounds %struct.codec_list, ptr %87, i32 0, i32 4
  store i8 %99, ptr %100, align 2
  %101 = getelementptr inbounds %struct.codec_list, ptr %87, i32 0, i32 6
  store i32 %84, ptr %101, align 16
  %102 = getelementptr inbounds %struct.codec_list, ptr %87, i32 0, i32 5
  store i8 0, ptr %102, align 1
  %103 = icmp eq ptr %55, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %98
  %105 = load i8, ptr %59, align 1
  store i8 %105, ptr %102, align 1
  %106 = getelementptr inbounds %struct.codec_list, ptr %87, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %106, ptr align 1 %85, i32 %84, i1 false) #7
  br label %107

107:                                              ; preds = %104, %98
  %108 = load ptr, ptr %8, align 4
  %109 = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  store ptr %87, ptr %109, align 4
  store ptr %108, ptr %87, align 64
  %110 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  store ptr %8, ptr %110, align 4
  store volatile ptr %87, ptr %8, align 4
  br label %111

111:                                              ; preds = %107, %83
  tail call void @mutex_unlock(ptr noundef %7) #7
  br label %112

112:                                              ; preds = %111, %71, %66, %53, %49
  tail call void @kfree_skb_reason(ptr noundef %45, i32 noundef 0) #7
  br label %113

113:                                              ; preds = %112, %47, %43, %12
  %114 = add nuw nsw i32 %13, 1
  %115 = icmp eq i32 %114, 4
  br i1 %115, label %116, label %12

116:                                              ; preds = %113
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_read_supported_codecs_v2(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.hci_op_read_local_codec_caps, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %2, i8 0, i32 7, i1 false), !annotation !8
  %3 = tail call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext 4109, i32 noundef 0, ptr noundef null, i32 noundef 200) #7
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %7 = ptrtoint ptr %3 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %6, i32 noundef %7) #7
  br label %71

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %70, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %70

17:                                               ; preds = %12
  %18 = tail call ptr @skb_pull(ptr noundef %3, i32 noundef 1) #7
  %19 = load ptr, ptr %13, align 4
  %20 = load i32, ptr %9, align 8
  %21 = load i8, ptr %19, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 1
  %24 = or i32 %23, 1
  %25 = icmp ult i32 %20, %24
  br i1 %25, label %70, label %26

26:                                               ; preds = %17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %2, i8 0, i32 7, i1 false)
  %27 = load i8, ptr %19, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %29, %26
  %30 = phi i32 [ %35, %29 ], [ 0, %26 ]
  %31 = getelementptr %struct.hci_std_codecs_v2, ptr %19, i32 0, i32 1, i32 %30
  %32 = load i8, ptr %31, align 1
  store i8 %32, ptr %2, align 1
  %33 = getelementptr %struct.hci_std_codecs_v2, ptr %19, i32 0, i32 1, i32 %30, i32 1
  %34 = load i8, ptr %33, align 1
  call fastcc void @hci_read_codec_capabilities(ptr noundef %0, i8 noundef zeroext %34, ptr noundef nonnull %2)
  %35 = add nuw nsw i32 %30, 1
  %36 = load i8, ptr %19, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %29, label %39

39:                                               ; preds = %29
  %40 = zext i8 %36 to i32
  %41 = shl nuw nsw i32 %40, 1
  %42 = or i32 %41, 1
  br label %43

43:                                               ; preds = %39, %26
  %44 = phi i32 [ %42, %39 ], [ 1, %26 ]
  %45 = call ptr @skb_pull(ptr noundef %3, i32 noundef %44) #7
  %46 = load ptr, ptr %13, align 4
  %47 = load i32, ptr %9, align 8
  %48 = load i8, ptr %46, align 1
  %49 = zext i8 %48 to i32
  %50 = mul nuw nsw i32 %49, 6
  %51 = or i32 %50, 1
  %52 = icmp ult i32 %47, %51
  %53 = icmp eq i8 %48, 0
  %54 = select i1 %52, i1 true, i1 %53
  br i1 %54, label %70, label %55

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.hci_op_read_local_codec_caps, ptr %2, i32 0, i32 1
  %57 = getelementptr inbounds %struct.hci_op_read_local_codec_caps, ptr %2, i32 0, i32 2
  br label %58

58:                                               ; preds = %58, %55
  %59 = phi i32 [ 0, %55 ], [ %66, %58 ]
  store i8 -1, ptr %2, align 1
  %60 = getelementptr %struct.hci_vnd_codecs_v2, ptr %46, i32 0, i32 1, i32 %59, i32 1
  %61 = load i16, ptr %60, align 1
  store i16 %61, ptr %56, align 1
  %62 = getelementptr %struct.hci_vnd_codecs_v2, ptr %46, i32 0, i32 1, i32 %59, i32 2
  %63 = load i16, ptr %62, align 1
  store i16 %63, ptr %57, align 1
  %64 = getelementptr %struct.hci_vnd_codecs_v2, ptr %46, i32 0, i32 1, i32 %59, i32 3
  %65 = load i8, ptr %64, align 1
  call fastcc void @hci_read_codec_capabilities(ptr noundef %0, i8 noundef zeroext %65, ptr noundef nonnull %2)
  %66 = add nuw nsw i32 %59, 1
  %67 = load i8, ptr %46, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp ult i32 %66, %68
  br i1 %69, label %58, label %70

70:                                               ; preds = %58, %43, %17, %12, %8
  call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  br label %71

71:                                               ; preds = %70, %5
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind allocsize(0) }

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
