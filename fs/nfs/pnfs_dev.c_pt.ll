; ModuleID = '/llk/IR/fs/nfs/pnfs_dev.c_pt.bc'
source_filename = "../fs/nfs/pnfs_dev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_find_get_deviceid:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_find_get_deviceid\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_find_get_deviceid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_delete_deviceid:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_delete_deviceid\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_delete_deviceid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_init_deviceid_node:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_init_deviceid_node\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_init_deviceid_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_put_deviceid_node:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_put_deviceid_node\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_put_deviceid_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_mark_deviceid_available:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_mark_deviceid_available\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_mark_deviceid_available:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_mark_deviceid_unavailable:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_mark_deviceid_unavailable\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_mark_deviceid_unavailable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs4_test_deviceid_unavailable:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs4_test_deviceid_unavailable\22\09\09\09\09\09"
module asm "__kstrtabns_nfs4_test_deviceid_unavailable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.rb_root = type { ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.112 }
%union.anon.112 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.nfs4_deviceid_node = type { %struct.hlist_node, %struct.hlist_node, ptr, ptr, i32, i32, %struct.nfs4_deviceid, %struct.callback_head, %struct.atomic_t }
%struct.nfs4_deviceid = type { [16 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nfs4_session = type { %struct.nfs4_sessionid, i32, i32, i32, i32, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, ptr }
%struct.nfs4_sessionid = type { [16 x i8] }
%struct.nfs4_channel_attrs = type { i32, i32, i32, i32, i32 }
%struct.nfs4_slot_table = type { ptr, ptr, [32 x i32], %struct.spinlock, %struct.rpc_wait_queue, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pnfs_layoutdriver_type = type { %struct.list_head, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pnfs_device = type { %struct.nfs4_deviceid, i32, i32, i32, ptr, i32, i32, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@nfs4_deviceid_lock = internal global %struct.spinlock zeroinitializer, align 4
@nfs4_deviceid_cache = internal global [32 x %struct.hlist_head] zeroinitializer, align 4
@__kstrtab_nfs4_find_get_deviceid = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_find_get_deviceid = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_find_get_deviceid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_find_get_deviceid to i32), ptr @__kstrtab_nfs4_find_get_deviceid, ptr @__kstrtabns_nfs4_find_get_deviceid }, section "___ksymtab_gpl+nfs4_find_get_deviceid", align 4
@__kstrtab_nfs4_delete_deviceid = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_delete_deviceid = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_delete_deviceid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_delete_deviceid to i32), ptr @__kstrtab_nfs4_delete_deviceid, ptr @__kstrtabns_nfs4_delete_deviceid }, section "___ksymtab_gpl+nfs4_delete_deviceid", align 4
@__kstrtab_nfs4_init_deviceid_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_init_deviceid_node = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_init_deviceid_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_init_deviceid_node to i32), ptr @__kstrtab_nfs4_init_deviceid_node, ptr @__kstrtabns_nfs4_init_deviceid_node }, section "___ksymtab_gpl+nfs4_init_deviceid_node", align 4
@__kstrtab_nfs4_put_deviceid_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_put_deviceid_node = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_put_deviceid_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_put_deviceid_node to i32), ptr @__kstrtab_nfs4_put_deviceid_node, ptr @__kstrtabns_nfs4_put_deviceid_node }, section "___ksymtab_gpl+nfs4_put_deviceid_node", align 4
@__kstrtab_nfs4_mark_deviceid_available = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_mark_deviceid_available = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_mark_deviceid_available = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_mark_deviceid_available to i32), ptr @__kstrtab_nfs4_mark_deviceid_available, ptr @__kstrtabns_nfs4_mark_deviceid_available }, section "___ksymtab_gpl+nfs4_mark_deviceid_available", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_nfs4_mark_deviceid_unavailable = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_mark_deviceid_unavailable = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_mark_deviceid_unavailable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_mark_deviceid_unavailable to i32), ptr @__kstrtab_nfs4_mark_deviceid_unavailable, ptr @__kstrtabns_nfs4_mark_deviceid_unavailable }, section "___ksymtab_gpl+nfs4_mark_deviceid_unavailable", align 4
@__kstrtab_nfs4_test_deviceid_unavailable = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs4_test_deviceid_unavailable = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs4_test_deviceid_unavailable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs4_test_deviceid_unavailable to i32), ptr @__kstrtab_nfs4_test_deviceid_unavailable, ptr @__kstrtabns_nfs4_test_deviceid_unavailable }, section "___ksymtab_gpl+nfs4_test_deviceid_unavailable", align 4
@nfs41_maxgetdevinfo_overhead = external dso_local local_unnamed_addr constant i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__tracepoint_nfs4_find_deviceid = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_nfs4_deviceid_free = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_nfs4_delete_deviceid, ptr @__ksymtab_nfs4_find_get_deviceid, ptr @__ksymtab_nfs4_init_deviceid_node, ptr @__ksymtab_nfs4_mark_deviceid_available, ptr @__ksymtab_nfs4_mark_deviceid_unavailable, ptr @__ksymtab_nfs4_put_deviceid_node, ptr @__ksymtab_nfs4_test_deviceid_unavailable], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_find_get_deviceid(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %1, i32 1
  %6 = load i8, ptr %1, align 1
  %7 = zext i8 %6 to i32
  %8 = mul nuw nsw i32 %7, 37
  %9 = getelementptr i8, ptr %1, i32 2
  %10 = load i8, ptr %5, align 1
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %8, %11
  %13 = mul nuw nsw i32 %12, 37
  %14 = getelementptr i8, ptr %1, i32 3
  %15 = load i8, ptr %9, align 1
  %16 = zext i8 %15 to i32
  %17 = add nuw nsw i32 %13, %16
  %18 = mul nuw nsw i32 %17, 37
  %19 = getelementptr i8, ptr %1, i32 4
  %20 = load i8, ptr %14, align 1
  %21 = zext i8 %20 to i32
  %22 = add nuw nsw i32 %18, %21
  %23 = mul nuw nsw i32 %22, 37
  %24 = getelementptr i8, ptr %1, i32 5
  %25 = load i8, ptr %19, align 1
  %26 = zext i8 %25 to i32
  %27 = add nuw nsw i32 %23, %26
  %28 = mul i32 %27, 37
  %29 = getelementptr i8, ptr %1, i32 6
  %30 = load i8, ptr %24, align 1
  %31 = zext i8 %30 to i32
  %32 = add i32 %28, %31
  %33 = mul i32 %32, 37
  %34 = getelementptr i8, ptr %1, i32 7
  %35 = load i8, ptr %29, align 1
  %36 = zext i8 %35 to i32
  %37 = add i32 %33, %36
  %38 = mul i32 %37, 37
  %39 = getelementptr i8, ptr %1, i32 8
  %40 = load i8, ptr %34, align 1
  %41 = zext i8 %40 to i32
  %42 = add i32 %38, %41
  %43 = mul i32 %42, 37
  %44 = getelementptr i8, ptr %1, i32 9
  %45 = load i8, ptr %39, align 1
  %46 = zext i8 %45 to i32
  %47 = add i32 %43, %46
  %48 = mul i32 %47, 37
  %49 = getelementptr i8, ptr %1, i32 10
  %50 = load i8, ptr %44, align 1
  %51 = zext i8 %50 to i32
  %52 = add i32 %48, %51
  %53 = mul i32 %52, 37
  %54 = getelementptr i8, ptr %1, i32 11
  %55 = load i8, ptr %49, align 1
  %56 = zext i8 %55 to i32
  %57 = add i32 %53, %56
  %58 = mul i32 %57, 37
  %59 = getelementptr i8, ptr %1, i32 12
  %60 = load i8, ptr %54, align 1
  %61 = zext i8 %60 to i32
  %62 = add i32 %58, %61
  %63 = mul i32 %62, 37
  %64 = getelementptr i8, ptr %1, i32 13
  %65 = load i8, ptr %59, align 1
  %66 = zext i8 %65 to i32
  %67 = add i32 %63, %66
  %68 = mul i32 %67, 37
  %69 = getelementptr i8, ptr %1, i32 14
  %70 = load i8, ptr %64, align 1
  %71 = zext i8 %70 to i32
  %72 = add i32 %68, %71
  %73 = mul i32 %72, 5
  %74 = getelementptr i8, ptr %1, i32 15
  %75 = load i8, ptr %69, align 1
  %76 = zext i8 %75 to i32
  %77 = add i32 %73, %76
  %78 = mul i32 %77, 5
  %79 = load i8, ptr %74, align 1
  %80 = zext i8 %79 to i32
  %81 = add i32 %78, %80
  %82 = and i32 %81, 31
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %83 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 44
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %0, align 8
  %86 = getelementptr [32 x %struct.hlist_head], ptr @nfs4_deviceid_cache, i32 0, i32 %82
  %87 = load volatile ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %114, label %89

89:                                               ; preds = %106, %4
  %90 = phi ptr [ %107, %106 ], [ %87, %4 ]
  %91 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %90, i32 0, i32 2
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, %84
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %90, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, %85
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %90, i32 0, i32 6
  %100 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %99, ptr noundef dereferenceable(16) %1, i32 16) #11
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %90, i32 0, i32 8
  %104 = load volatile i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102, %98, %94, %89
  %107 = load volatile ptr, ptr %90, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %114, label %89

109:                                              ; preds = %102
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %103) #11, !srcloc !10
  %110 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %103, ptr %103, i32 0, i32 1, ptr elementtype(i32) %103) #11, !srcloc !11
  %111 = extractvalue { i32, i32, i32 } %110, 0
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  br label %262

114:                                              ; preds = %109, %106, %4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %115 = load ptr, ptr %0, align 8
  %116 = getelementptr inbounds %struct.nfs_client, ptr %115, i32 0, i32 36
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.nfs4_session, ptr %117, i32 0, i32 5, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = load ptr, ptr %83, align 4
  %121 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %120, i32 0, i32 5
  %122 = load i32, ptr %121, align 4
  %123 = icmp ne i32 %122, 0
  %124 = icmp ult i32 %122, %119
  %125 = select i1 %123, i1 %124, i1 false
  %126 = select i1 %125, i32 %122, i32 %119
  %127 = add i32 %126, 4095
  %128 = lshr i32 %127, 12
  %129 = and i32 %3, 17
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %135, label %131, !prof !14

131:                                              ; preds = %114
  %132 = and i32 %3, 1
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %133, i32 1, i32 2
  br label %135

135:                                              ; preds = %131, %114
  %136 = phi i32 [ 0, %114 ], [ %134, %131 ]
  %137 = or i32 %3, 256
  %138 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %136, i32 6
  %139 = load ptr, ptr %138, align 4
  %140 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %139, i32 noundef %137, i32 noundef 44) #12
  %141 = icmp eq ptr %140, null
  br i1 %141, label %200, label %142

142:                                              ; preds = %135
  %143 = shl nuw nsw i32 %128, 2
  %144 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %143, i32 noundef %137) #13
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  tail call void @kfree(ptr noundef nonnull %140) #11
  br label %200

147:                                              ; preds = %142
  %148 = icmp ult i32 %127, 4096
  br i1 %148, label %159, label %149

149:                                              ; preds = %147
  %150 = tail call i32 @llvm.umax.i32(i32 %128, i32 1) #11
  br label %154

151:                                              ; preds = %154
  %152 = add nuw nsw i32 %155, 1
  %153 = icmp eq i32 %152, %150
  br i1 %153, label %159, label %154

154:                                              ; preds = %151, %149
  %155 = phi i32 [ %152, %151 ], [ 0, %149 ]
  %156 = tail call ptr @__alloc_pages(i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %157 = getelementptr ptr, ptr %144, i32 %155
  store ptr %156, ptr %157, align 4
  %158 = icmp eq ptr %156, null
  br i1 %158, label %188, label %151

159:                                              ; preds = %151, %147
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %140, ptr noundef align 1 dereferenceable(16) %1, i32 16, i1 false) #11
  %160 = load ptr, ptr %83, align 4
  %161 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %160, i32 0, i32 1
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr inbounds %struct.pnfs_device, ptr %140, i32 0, i32 1
  store i32 %162, ptr %163, align 8
  %164 = getelementptr inbounds %struct.pnfs_device, ptr %140, i32 0, i32 4
  store ptr %144, ptr %164, align 4
  %165 = getelementptr inbounds %struct.pnfs_device, ptr %140, i32 0, i32 5
  store i32 0, ptr %165, align 8
  %166 = getelementptr inbounds %struct.pnfs_device, ptr %140, i32 0, i32 6
  store i32 %126, ptr %166, align 4
  %167 = getelementptr inbounds %struct.pnfs_device, ptr %140, i32 0, i32 2
  store i32 0, ptr %167, align 4
  %168 = load i32, ptr @nfs41_maxgetdevinfo_overhead, align 4
  %169 = sub i32 %126, %168
  %170 = getelementptr inbounds %struct.pnfs_device, ptr %140, i32 0, i32 3
  store i32 %169, ptr %170, align 8
  %171 = tail call i32 @nfs4_proc_getdeviceinfo(ptr noundef %0, ptr noundef nonnull %140, ptr noundef %2) #11
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %159
  %174 = load ptr, ptr %83, align 4
  %175 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %174, i32 0, i32 22
  %176 = load ptr, ptr %175, align 4
  %177 = tail call ptr %176(ptr noundef %0, ptr noundef nonnull %140, i32 noundef %3) #11
  %178 = icmp eq ptr %177, null
  br i1 %178, label %186, label %179

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.pnfs_device, ptr %140, i32 0, i32 7
  %181 = load i8, ptr %180, align 8
  %182 = and i8 %181, 1
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %177, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %185) #11
  br i1 %148, label %197, label %188

186:                                              ; preds = %179, %173, %159
  %187 = phi ptr [ null, %159 ], [ %177, %179 ], [ null, %173 ]
  br i1 %148, label %197, label %188

188:                                              ; preds = %186, %184, %154
  %189 = phi ptr [ %177, %184 ], [ %187, %186 ], [ null, %154 ]
  %190 = tail call i32 @llvm.umax.i32(i32 %128, i32 1) #11
  br label %191

191:                                              ; preds = %191, %188
  %192 = phi i32 [ %195, %191 ], [ 0, %188 ]
  %193 = getelementptr ptr, ptr %144, i32 %192
  %194 = load ptr, ptr %193, align 4
  tail call void @__free_pages(ptr noundef %194, i32 noundef 0) #11
  %195 = add nuw nsw i32 %192, 1
  %196 = icmp eq i32 %195, %190
  br i1 %196, label %197, label %191

197:                                              ; preds = %191, %186, %184
  %198 = phi ptr [ %187, %186 ], [ %177, %184 ], [ %189, %191 ]
  tail call void @kfree(ptr noundef nonnull %144) #11
  tail call void @kfree(ptr noundef nonnull %140) #11
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %216

200:                                              ; preds = %197, %146, %135
  %201 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_find_deviceid, i32 0, i32 1), align 4
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %279

203:                                              ; preds = %200
  %204 = tail call ptr @llvm.thread.pointer() #11
  %205 = getelementptr inbounds %struct.thread_info, ptr %204, i32 0, i32 2
  %206 = load i32, ptr %205, align 8
  %207 = lshr i32 %206, 5
  %208 = getelementptr i32, ptr @__cpu_online_mask, i32 %207
  %209 = load volatile i32, ptr %208, align 4
  %210 = and i32 %206, 31
  %211 = shl nuw i32 1, %210
  %212 = and i32 %211, %209
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %279, label %214

214:                                              ; preds = %203
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %215 = tail call i32 @__traceiter_nfs4_find_deviceid(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef -2) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  br label %279

216:                                              ; preds = %197
  tail call void @_raw_spin_lock(ptr noundef nonnull @nfs4_deviceid_lock) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %217 = load ptr, ptr %83, align 4
  %218 = load ptr, ptr %0, align 8
  %219 = load volatile ptr, ptr %86, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %251, label %221

221:                                              ; preds = %238, %216
  %222 = phi ptr [ %239, %238 ], [ %219, %216 ]
  %223 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %222, i32 0, i32 2
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, %217
  br i1 %225, label %226, label %238

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %222, i32 0, i32 3
  %228 = load ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, %218
  br i1 %229, label %230, label %238

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %222, i32 0, i32 6
  %232 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %231, ptr noundef dereferenceable(16) %1, i32 16) #11
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %222, i32 0, i32 8
  %236 = load volatile i32, ptr %235, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %234, %230, %226, %221
  %239 = load volatile ptr, ptr %222, align 4
  %240 = icmp eq ptr %239, null
  br i1 %240, label %251, label %221

241:                                              ; preds = %234
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %235) #11, !srcloc !10
  %242 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %235, ptr %235, i32 0, i32 1, ptr elementtype(i32) %235) #11, !srcloc !11
  %243 = extractvalue { i32, i32, i32 } %242, 0
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %251, label %245

245:                                              ; preds = %241
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  %246 = load i16, ptr @nfs4_deviceid_lock, align 4
  %247 = add i16 %246, 1
  store i16 %247, ptr @nfs4_deviceid_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %248 = load ptr, ptr %83, align 4
  %249 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %248, i32 0, i32 21
  %250 = load ptr, ptr %249, align 4
  tail call void %250(ptr noundef nonnull %198) #11
  br label %262

251:                                              ; preds = %241, %238, %216
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %252 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %198, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %252) #11, !srcloc !10
  %253 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %252, ptr %252, i32 1, ptr elementtype(i32) %252) #11, !srcloc !21
  %254 = load ptr, ptr %86, align 4
  store ptr %254, ptr %198, align 4
  %255 = getelementptr inbounds %struct.hlist_node, ptr %198, i32 0, i32 1
  store volatile ptr %86, ptr %255, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  store volatile ptr %198, ptr %86, align 4
  %256 = icmp eq ptr %254, null
  br i1 %256, label %259, label %257

257:                                              ; preds = %251
  %258 = getelementptr inbounds %struct.hlist_node, ptr %254, i32 0, i32 1
  store volatile ptr %198, ptr %258, align 4
  br label %259

259:                                              ; preds = %257, %251
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  %260 = load i16, ptr @nfs4_deviceid_lock, align 4
  %261 = add i16 %260, 1
  store i16 %261, ptr @nfs4_deviceid_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  br label %262

262:                                              ; preds = %259, %245, %113
  %263 = phi ptr [ %90, %113 ], [ %222, %245 ], [ %198, %259 ]
  %264 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_find_deviceid, i32 0, i32 1), align 4
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %279

266:                                              ; preds = %262
  %267 = tail call ptr @llvm.thread.pointer() #11
  %268 = getelementptr inbounds %struct.thread_info, ptr %267, i32 0, i32 2
  %269 = load i32, ptr %268, align 8
  %270 = lshr i32 %269, 5
  %271 = getelementptr i32, ptr @__cpu_online_mask, i32 %270
  %272 = load volatile i32, ptr %271, align 4
  %273 = and i32 %269, 31
  %274 = shl nuw i32 1, %273
  %275 = and i32 %274, %272
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %279, label %277

277:                                              ; preds = %266
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %278 = tail call i32 @__traceiter_nfs4_find_deviceid(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef 0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  br label %279

279:                                              ; preds = %277, %266, %262, %214, %203, %200
  %280 = phi ptr [ null, %200 ], [ null, %203 ], [ null, %214 ], [ %263, %262 ], [ %263, %266 ], [ %263, %277 ]
  ret ptr %280
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_delete_deviceid(ptr noundef readnone %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @nfs4_deviceid_lock) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %4 = getelementptr i8, ptr %2, i32 1
  %5 = load i8, ptr %2, align 1
  %6 = zext i8 %5 to i32
  %7 = mul nuw nsw i32 %6, 37
  %8 = getelementptr i8, ptr %2, i32 2
  %9 = load i8, ptr %4, align 1
  %10 = zext i8 %9 to i32
  %11 = add nuw nsw i32 %7, %10
  %12 = mul nuw nsw i32 %11, 37
  %13 = getelementptr i8, ptr %2, i32 3
  %14 = load i8, ptr %8, align 1
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %12, %15
  %17 = mul nuw nsw i32 %16, 37
  %18 = getelementptr i8, ptr %2, i32 4
  %19 = load i8, ptr %13, align 1
  %20 = zext i8 %19 to i32
  %21 = add nuw nsw i32 %17, %20
  %22 = mul nuw nsw i32 %21, 37
  %23 = getelementptr i8, ptr %2, i32 5
  %24 = load i8, ptr %18, align 1
  %25 = zext i8 %24 to i32
  %26 = add nuw nsw i32 %22, %25
  %27 = mul i32 %26, 37
  %28 = getelementptr i8, ptr %2, i32 6
  %29 = load i8, ptr %23, align 1
  %30 = zext i8 %29 to i32
  %31 = add i32 %27, %30
  %32 = mul i32 %31, 37
  %33 = getelementptr i8, ptr %2, i32 7
  %34 = load i8, ptr %28, align 1
  %35 = zext i8 %34 to i32
  %36 = add i32 %32, %35
  %37 = mul i32 %36, 37
  %38 = getelementptr i8, ptr %2, i32 8
  %39 = load i8, ptr %33, align 1
  %40 = zext i8 %39 to i32
  %41 = add i32 %37, %40
  %42 = mul i32 %41, 37
  %43 = getelementptr i8, ptr %2, i32 9
  %44 = load i8, ptr %38, align 1
  %45 = zext i8 %44 to i32
  %46 = add i32 %42, %45
  %47 = mul i32 %46, 37
  %48 = getelementptr i8, ptr %2, i32 10
  %49 = load i8, ptr %43, align 1
  %50 = zext i8 %49 to i32
  %51 = add i32 %47, %50
  %52 = mul i32 %51, 37
  %53 = getelementptr i8, ptr %2, i32 11
  %54 = load i8, ptr %48, align 1
  %55 = zext i8 %54 to i32
  %56 = add i32 %52, %55
  %57 = mul i32 %56, 37
  %58 = getelementptr i8, ptr %2, i32 12
  %59 = load i8, ptr %53, align 1
  %60 = zext i8 %59 to i32
  %61 = add i32 %57, %60
  %62 = mul i32 %61, 37
  %63 = getelementptr i8, ptr %2, i32 13
  %64 = load i8, ptr %58, align 1
  %65 = zext i8 %64 to i32
  %66 = add i32 %62, %65
  %67 = mul i32 %66, 37
  %68 = getelementptr i8, ptr %2, i32 14
  %69 = load i8, ptr %63, align 1
  %70 = zext i8 %69 to i32
  %71 = add i32 %67, %70
  %72 = mul i32 %71, 5
  %73 = getelementptr i8, ptr %2, i32 15
  %74 = load i8, ptr %68, align 1
  %75 = zext i8 %74 to i32
  %76 = add i32 %72, %75
  %77 = mul i32 %76, 5
  %78 = load i8, ptr %73, align 1
  %79 = zext i8 %78 to i32
  %80 = add i32 %77, %79
  %81 = and i32 %80, 31
  %82 = getelementptr [32 x %struct.hlist_head], ptr @nfs4_deviceid_cache, i32 0, i32 %81
  %83 = load volatile ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %105, label %85

85:                                               ; preds = %102, %3
  %86 = phi ptr [ %103, %102 ], [ %83, %3 ]
  %87 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, %0
  br i1 %89, label %90, label %102

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %86, i32 0, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, %1
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %86, i32 0, i32 6
  %96 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %95, ptr noundef dereferenceable(16) %2, i32 16) #11
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %86, i32 0, i32 8
  %100 = load volatile i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %98, %94, %90, %85
  %103 = load volatile ptr, ptr %86, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %85

105:                                              ; preds = %102, %3
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  %106 = load i16, ptr @nfs4_deviceid_lock, align 4
  %107 = add i16 %106, 1
  store i16 %107, ptr @nfs4_deviceid_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  br label %123

108:                                              ; preds = %98
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %109 = getelementptr inbounds %struct.hlist_node, ptr %86, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %118, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %86, align 4
  store volatile ptr %113, ptr %110, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.hlist_node, ptr %113, i32 0, i32 1
  store volatile ptr %110, ptr %116, align 4
  br label %117

117:                                              ; preds = %115, %112
  store volatile ptr null, ptr %109, align 4
  br label %118

118:                                              ; preds = %117, %108
  %119 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %86, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %119) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  %120 = load i16, ptr @nfs4_deviceid_lock, align 4
  %121 = add i16 %120, 1
  store i16 %121, ptr @nfs4_deviceid_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %122 = tail call zeroext i1 @nfs4_put_deviceid_node(ptr noundef nonnull %86)
  br label %123

123:                                              ; preds = %118, %105
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs4_put_deviceid_node(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %0, i32 0, i32 4
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #11, !srcloc !10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 2, i32 -1, ptr elementtype(i32) %7) #11, !srcloc !11
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  br label %47

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %0, i32 0, i32 6
  tail call void @nfs4_delete_deviceid(ptr noundef %14, ptr noundef %16, ptr noundef %17)
  br label %18

18:                                               ; preds = %12, %1
  %19 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #11, !srcloc !10
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #11, !srcloc !24
  %21 = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !25
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %0, i32 0, i32 6
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs4_deviceid_free, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = tail call ptr @llvm.thread.pointer() #11
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  %41 = tail call i32 @__traceiter_nfs4_deviceid_free(ptr noundef null, ptr noundef %25, ptr noundef %26) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !27
  br label %42

42:                                               ; preds = %40, %29, %23
  %43 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %0, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.pnfs_layoutdriver_type, ptr %44, i32 0, i32 21
  %46 = load ptr, ptr %45, align 4
  tail call void %46(ptr noundef %0) #11
  br label %47

47:                                               ; preds = %42, %18, %11
  %48 = phi i1 [ true, %42 ], [ false, %18 ], [ false, %11 ]
  ret i1 %48
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_init_deviceid_node(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr inbounds %struct.nfs_server, ptr %1, i32 0, i32 44
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %0, i32 0, i32 2
  store ptr %5, ptr %6, align 4
  %7 = load ptr, ptr %1, align 8
  %8 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %0, i32 0, i32 3
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %0, i32 0, i32 4
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %0, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %10, ptr noundef align 1 dereferenceable(16) %2, i32 16, i1 false)
  %11 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %0, i32 0, i32 8
  store volatile i32 1, ptr %11, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_mark_deviceid_available(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %0, i32 0, i32 4
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %2) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !28
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_mark_deviceid_unavailable(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %0, i32 0, i32 5
  store i32 %2, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !29
  %4 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %0, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %4) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %0, i32 0, i32 4
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 12000, %7
  %11 = add i32 %10, %9
  %12 = icmp sgt i32 %11, -1
  %13 = sub i32 %7, %9
  %14 = icmp sgt i32 %13, -1
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %17, label %16

16:                                               ; preds = %6
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %2) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !31
  br label %17

17:                                               ; preds = %16, %6, %1
  %18 = phi i1 [ true, %6 ], [ false, %16 ], [ false, %1 ]
  ret i1 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_deviceid_purge_client(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.hlist_head, align 4
  %3 = getelementptr inbounds %struct.nfs_client, ptr %0, i32 0, i32 35
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 131072
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %67, label %7

7:                                                ; preds = %64, %1
  %8 = phi i32 [ %65, %64 ], [ 0, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @nfs4_deviceid_lock) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %9 = getelementptr [32 x %struct.hlist_head], ptr @nfs4_deviceid_cache, i32 0, i32 %8
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %43, label %12

12:                                               ; preds = %40, %7
  %13 = phi ptr [ %41, %40 ], [ %10, %7 ]
  %14 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %40

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %13, i32 0, i32 8
  %19 = load volatile i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %13, align 4
  store volatile ptr %26, ptr %23, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  store volatile ptr %23, ptr %29, align 4
  br label %30

30:                                               ; preds = %28, %25
  store volatile ptr null, ptr %22, align 4
  br label %31

31:                                               ; preds = %30, %21
  %32 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %13, i32 0, i32 1
  %33 = load ptr, ptr %2, align 4
  store volatile ptr %33, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.hlist_node, ptr %33, i32 0, i32 1
  store volatile ptr %32, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %31
  store volatile ptr %32, ptr %2, align 4
  %38 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %13, i32 0, i32 1, i32 1
  store volatile ptr %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %13, i32 0, i32 4
  call void @_clear_bit(i32 noundef 2, ptr noundef %39) #11
  br label %40

40:                                               ; preds = %37, %17, %12
  %41 = load volatile ptr, ptr %13, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %12

43:                                               ; preds = %40, %7
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  %44 = load i16, ptr @nfs4_deviceid_lock, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr @nfs4_deviceid_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !18
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %46 = load volatile ptr, ptr %2, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %64, label %48

48:                                               ; preds = %43
  %49 = load volatile ptr, ptr %2, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %64, label %51

51:                                               ; preds = %60, %48
  %52 = phi ptr [ %62, %60 ], [ %49, %48 ]
  %53 = getelementptr i8, ptr %52, i32 -8
  %54 = load ptr, ptr %52, align 4
  %55 = getelementptr inbounds %struct.hlist_node, ptr %52, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  store volatile ptr %54, ptr %56, align 4
  %57 = icmp eq ptr %54, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.hlist_node, ptr %54, i32 0, i32 1
  store volatile ptr %56, ptr %59, align 4
  br label %60

60:                                               ; preds = %58, %51
  store ptr inttoptr (i32 256 to ptr), ptr %52, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %55, align 4
  %61 = call zeroext i1 @nfs4_put_deviceid_node(ptr noundef %53) #11
  %62 = load volatile ptr, ptr %2, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %51

64:                                               ; preds = %60, %48, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %65 = add nuw nsw i32 %8, 1
  %66 = icmp eq i32 %65, 32
  br i1 %66, label %67, label %7

67:                                               ; preds = %64, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_deviceid_mark_client_invalid(ptr noundef readnone %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  br label %2

2:                                                ; preds = %17, %1
  %3 = phi i32 [ 0, %1 ], [ %18, %17 ]
  %4 = getelementptr [32 x %struct.hlist_head], ptr @nfs4_deviceid_cache, i32 0, i32 %3
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %14, %2
  %8 = phi ptr [ %15, %14 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %8, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %13) #11
  br label %14

14:                                               ; preds = %12, %7
  %15 = load volatile ptr, ptr %8, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %7

17:                                               ; preds = %14, %2
  %18 = add nuw nsw i32 %3, 1
  %19 = icmp eq i32 %18, 32
  br i1 %19, label %20, label %2

20:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_getdeviceinfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_find_deviceid(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs4_deviceid_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

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
!8 = !{i64 2149064696}
!9 = !{i64 2148003339}
!10 = !{i64 501649, i64 2147991620, i64 2147991646, i64 2147991693, i64 2147991715, i64 2147991743, i64 2147991763}
!11 = !{i64 488218, i64 488243, i64 488265, i64 488281, i64 488293, i64 488313, i64 488337, i64 488353, i64 488365}
!12 = !{i64 2148003465}
!13 = !{i64 2149064913}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2157980628}
!16 = !{i64 2157980824}
!17 = !{i64 2148946341}
!18 = !{i64 2148942165}
!19 = !{i64 2148942240, i64 2148942267, i64 2148942314, i64 2148942336, i64 2148942364, i64 2148942384}
!20 = !{i64 2148969344}
!21 = !{i64 2148003832, i64 2148003858, i64 2148003887, i64 2148003921, i64 2148003952, i64 2148003975}
!22 = !{i64 2150494712}
!23 = !{i64 2148104487}
!24 = !{i64 2148006873, i64 2148006905, i64 2148006934, i64 2148006968, i64 2148006999, i64 2148007022}
!25 = !{i64 2148104690}
!26 = !{i64 2157941119}
!27 = !{i64 2157941293}
!28 = !{i64 2158206501}
!29 = !{i64 2158208164}
!30 = !{i64 2158208449}
!31 = !{i64 2158211293}
