; ModuleID = '/llk/IR/fs/lockd/svcsubs.c_pt.bc'
source_filename = "../fs/lockd/svcsubs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nlmsvc_unlock_all_by_sb:\09\09\09\09\09"
module asm "\09.asciz \09\22nlmsvc_unlock_all_by_sb\22\09\09\09\09\09"
module asm "__kstrtabns_nlmsvc_unlock_all_by_sb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nlmsvc_unlock_all_by_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22nlmsvc_unlock_all_by_ip\22\09\09\09\09\09"
module asm "__kstrtabns_nlmsvc_unlock_all_by_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_manager_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.133 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%union.anon.133 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.nlm_lock = type { ptr, i32, %struct.nfs_fh, %struct.xdr_netobj, i32, %struct.file_lock }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.xdr_netobj = type { i32, ptr }
%struct.nlm_file = type { %struct.hlist_node, %struct.nfs_fh, [2 x ptr], ptr, %struct.list_head, i32, i32, %struct.mutex }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.125, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.126, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.127, ptr, %struct.address_space, %struct.list_head, %union.anon.128, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.125 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.126 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.127 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.128 = type { ptr }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.nlmsvc_binding = type { ptr, ptr }
%struct.nlm_host = type { %struct.hlist_node, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, i32, i16, i8, %struct.wait_queue_head, %struct.rw_semaphore, i32, i32, i32, %struct.refcount_struct, %struct.mutex, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, [65 x i8], ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.134 }
%union.anon.134 = type { ptr, [124 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nlm_lockowner = type { %struct.list_head, %struct.refcount_struct, ptr, ptr, i32 }
%struct.nsm_handle = type { %struct.list_head, %struct.refcount_struct, ptr, ptr, %struct.__kernel_sockaddr_storage, i32, i8, %struct.nsm_private, [51 x i8] }
%struct.nsm_private = type { [16 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.62 }
%union.anon.62 = type { [4 x i32] }

@nlm_file_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nlm_file_mutex, i64 12), ptr getelementptr (i8, ptr @nlm_file_mutex, i64 12) } }, align 4
@nlm_files = internal global [128 x %struct.hlist_head] zeroinitializer, align 4
@nlm_lookup_file.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"&file->f_mutex\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"\014lockd: couldn't remove all locks held by %s\0A\00", align 1
@__kstrtab_nlmsvc_unlock_all_by_sb = external dso_local constant [0 x i8], align 1
@__kstrtabns_nlmsvc_unlock_all_by_sb = external dso_local constant [0 x i8], align 1
@__ksymtab_nlmsvc_unlock_all_by_sb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nlmsvc_unlock_all_by_sb to i32), ptr @__kstrtab_nlmsvc_unlock_all_by_sb, ptr @__kstrtabns_nlmsvc_unlock_all_by_sb }, section "___ksymtab_gpl+nlmsvc_unlock_all_by_sb", align 4
@__kstrtab_nlmsvc_unlock_all_by_ip = external dso_local constant [0 x i8], align 1
@__kstrtabns_nlmsvc_unlock_all_by_ip = external dso_local constant [0 x i8], align 1
@__ksymtab_nlmsvc_unlock_all_by_ip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nlmsvc_unlock_all_by_ip to i32), ptr @__kstrtab_nlmsvc_unlock_all_by_ip, ptr @__kstrtabns_nlmsvc_unlock_all_by_ip }, section "___ksymtab_gpl+nlmsvc_unlock_all_by_ip", align 4
@nlmsvc_ops = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nlmsvc_lock_operations = external dso_local constant %struct.lock_manager_operations, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"\014lockd: attempt to release unknown file!\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"\014lockd: unlock failure in %s:%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"fs/lockd/svcsubs.c\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_nlmsvc_unlock_all_by_ip, ptr @__ksymtab_nlmsvc_unlock_all_by_sb], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @lock_to_openmode(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 7
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nlm_lookup_file(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef readonly %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.nlm_lock, ptr %2, i32 0, i32 2
  %5 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = add nuw nsw i32 %10, %7
  %12 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = add nuw nsw i32 %11, %14
  %16 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = add nuw nsw i32 %15, %18
  %20 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 4
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = add nuw nsw i32 %19, %22
  %24 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 5
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = add nuw nsw i32 %23, %26
  %28 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 6
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = add nuw nsw i32 %27, %30
  %32 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 7
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = add nuw nsw i32 %31, %34
  %36 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 8
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = add nuw nsw i32 %35, %38
  %40 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 9
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = add nuw nsw i32 %39, %42
  %44 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 10
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = add nuw nsw i32 %43, %46
  %48 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 11
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = add nuw nsw i32 %47, %50
  %52 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 12
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = add nuw nsw i32 %51, %54
  %56 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 13
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = add nuw nsw i32 %55, %58
  %60 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 14
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = add nuw nsw i32 %59, %62
  %64 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 15
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = add nuw nsw i32 %63, %66
  %68 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 16
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = add nuw nsw i32 %67, %70
  %72 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 17
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = add nuw nsw i32 %71, %74
  %76 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 18
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = add nuw nsw i32 %75, %78
  %80 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 19
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = add nuw nsw i32 %79, %82
  %84 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 20
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = add nuw nsw i32 %83, %86
  %88 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 21
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = add nuw nsw i32 %87, %90
  %92 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 22
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  %95 = add nuw nsw i32 %91, %94
  %96 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 23
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = add nuw nsw i32 %95, %98
  %100 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 24
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = add nuw nsw i32 %99, %102
  %104 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 25
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = add nuw nsw i32 %103, %106
  %108 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 26
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = add nuw nsw i32 %107, %110
  %112 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 27
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = add nuw nsw i32 %111, %114
  %116 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 28
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = add nuw nsw i32 %115, %118
  %120 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 29
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  %123 = add nuw nsw i32 %119, %122
  %124 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 30
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i32
  %127 = add nuw nsw i32 %123, %126
  %128 = getelementptr %struct.nlm_lock, ptr %2, i32 0, i32 2, i32 1, i32 31
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = add nuw nsw i32 %127, %130
  %132 = and i32 %131, 127
  %133 = getelementptr inbounds %struct.nlm_lock, ptr %2, i32 0, i32 5, i32 7
  %134 = load i8, ptr %133, align 4
  %135 = icmp eq i8 %134, 1
  %136 = zext i1 %135 to i32
  tail call void @mutex_lock(ptr noundef nonnull @nlm_file_mutex) #13
  %137 = getelementptr [128 x %struct.hlist_head], ptr @nlm_files, i32 0, i32 %132
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %166, label %140

140:                                              ; preds = %3
  %141 = load i16, ptr %4, align 2
  %142 = zext i16 %141 to i32
  br label %143

143:                                              ; preds = %163, %140
  %144 = phi ptr [ %138, %140 ], [ %164, %163 ]
  %145 = getelementptr inbounds %struct.nlm_file, ptr %144, i32 0, i32 1
  %146 = load i16, ptr %145, align 2
  %147 = icmp eq i16 %146, %141
  br i1 %147, label %148, label %163

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.nlm_file, ptr %144, i32 0, i32 1, i32 1
  %150 = tail call i32 @bcmp(ptr %149, ptr %5, i32 %142) #13
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.nlm_file, ptr %144, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %153) #13
  %154 = getelementptr %struct.nlm_file, ptr %144, i32 0, i32 2, i32 %136
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load ptr, ptr @nlmsvc_ops, align 4
  %159 = load ptr, ptr %158, align 4
  %160 = tail call i32 %159(ptr noundef %0, ptr noundef %145, ptr noundef %154, i32 noundef %136) #13
  br label %161

161:                                              ; preds = %157, %152
  %162 = phi i32 [ %160, %157 ], [ 0, %152 ]
  tail call void @mutex_unlock(ptr noundef %153) #13
  br label %190

163:                                              ; preds = %148, %143
  %164 = load ptr, ptr %144, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %143

166:                                              ; preds = %163, %3
  %167 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %168 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %167, i32 noundef 3520, i32 noundef 188) #14
  %169 = icmp eq ptr %168, null
  br i1 %169, label %198, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.nlm_file, ptr %168, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(130) %171, ptr noundef align 8 dereferenceable(130) %4, i32 130, i1 false)
  %172 = getelementptr inbounds %struct.nlm_file, ptr %168, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %172, ptr noundef nonnull @.str.2, ptr noundef nonnull @nlm_lookup_file.__key) #13
  store ptr null, ptr %168, align 8
  %173 = getelementptr inbounds %struct.hlist_node, ptr %168, i32 0, i32 1
  store ptr null, ptr %173, align 4
  %174 = getelementptr inbounds %struct.nlm_file, ptr %168, i32 0, i32 4
  store volatile ptr %174, ptr %174, align 8
  %175 = getelementptr inbounds %struct.nlm_file, ptr %168, i32 0, i32 4, i32 1
  store ptr %174, ptr %175, align 4
  %176 = getelementptr %struct.nlm_file, ptr %168, i32 0, i32 2, i32 %136
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %184

179:                                              ; preds = %170
  %180 = load ptr, ptr @nlmsvc_ops, align 4
  %181 = load ptr, ptr %180, align 4
  %182 = tail call i32 %181(ptr noundef %0, ptr noundef %171, ptr noundef %176, i32 noundef %136) #13
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %196

184:                                              ; preds = %179, %170
  %185 = load ptr, ptr %137, align 4
  store volatile ptr %185, ptr %168, align 8
  %186 = icmp eq ptr %185, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.hlist_node, ptr %185, i32 0, i32 1
  store volatile ptr %168, ptr %188, align 4
  br label %189

189:                                              ; preds = %187, %184
  store volatile ptr %168, ptr %137, align 4
  store volatile ptr %137, ptr %173, align 4
  br label %190

190:                                              ; preds = %189, %161
  %191 = phi i32 [ %162, %161 ], [ 0, %189 ]
  %192 = phi ptr [ %144, %161 ], [ %168, %189 ]
  store ptr %192, ptr %1, align 4
  %193 = getelementptr inbounds %struct.nlm_file, ptr %192, i32 0, i32 6
  %194 = load i32, ptr %193, align 4
  %195 = add i32 %194, 1
  store i32 %195, ptr %193, align 4
  br label %196

196:                                              ; preds = %198, %190, %179
  %197 = phi i32 [ %191, %190 ], [ %182, %179 ], [ 33554432, %198 ]
  tail call void @mutex_unlock(ptr noundef nonnull @nlm_file_mutex) #13
  ret i32 %197

198:                                              ; preds = %166
  tail call void @kfree(ptr noundef null) #13
  br label %196
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nlm_release_file(ptr noundef %0) local_unnamed_addr #1 {
  tail call void @mutex_lock(ptr noundef nonnull @nlm_file_mutex) #13
  %2 = getelementptr inbounds %struct.nlm_file, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -1
  store i32 %4, ptr %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %79

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nlm_file, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr %struct.nlm_file, ptr %0, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %12, %10 ], [ %8, %6 ]
  %15 = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 40
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nlm_file, ptr %0, i32 0, i32 4
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %22, label %79

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.nlm_file, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %79

26:                                               ; preds = %22
  %27 = icmp eq ptr %18, null
  br i1 %27, label %51, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.file_lock_context, ptr %18, i32 0, i32 2
  %30 = load volatile ptr, ptr %29, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.file_lock_context, ptr %18, i32 0, i32 2, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %29
  br i1 %35, label %51, label %36

36:                                               ; preds = %32, %28
  tail call void @_raw_spin_lock(ptr noundef nonnull %18) #13
  br label %37

37:                                               ; preds = %41, %36
  %38 = phi ptr [ %29, %36 ], [ %39, %41 ]
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %29
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = getelementptr i8, ptr %39, i32 100
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, @nlmsvc_lock_operations
  br i1 %44, label %45, label %37

45:                                               ; preds = %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %46 = load i16, ptr %18, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %79

48:                                               ; preds = %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %49 = load i16, ptr %18, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %51

51:                                               ; preds = %48, %32, %26
  %52 = getelementptr inbounds %struct.nlm_file, ptr %0, i32 0, i32 5
  store i32 0, ptr %52, align 4
  %53 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %77, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %0, align 4
  store volatile ptr %57, ptr %54, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.hlist_node, ptr %57, i32 0, i32 1
  store volatile ptr %54, ptr %60, align 4
  br label %61

61:                                               ; preds = %59, %56
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %53, align 4
  %62 = load ptr, ptr %7, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr @nlmsvc_ops, align 4
  %66 = getelementptr inbounds %struct.nlmsvc_binding, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  tail call void %67(ptr noundef nonnull %62) #13
  br label %68

68:                                               ; preds = %64, %61
  %69 = getelementptr %struct.nlm_file, ptr %0, i32 0, i32 2, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr @nlmsvc_ops, align 4
  %74 = getelementptr inbounds %struct.nlmsvc_binding, ptr %73, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  tail call void %75(ptr noundef nonnull %70) #13
  br label %76

76:                                               ; preds = %72, %68
  tail call void @kfree(ptr noundef %0) #13
  br label %79

77:                                               ; preds = %51
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #15
  br label %79

79:                                               ; preds = %77, %76, %45, %22, %13, %1
  tail call void @mutex_unlock(ptr noundef nonnull @nlm_file_mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nlmsvc_mark_resources(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.nlm_host, align 4
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(484) %2, i8 0, i32 484, i1 false), !annotation !13
  %3 = getelementptr inbounds %struct.nlm_host, ptr %2, i32 0, i32 25
  store ptr %0, ptr %3, align 4
  %4 = call fastcc i32 @nlm_traverse_files(ptr noundef nonnull %2, ptr noundef nonnull @nlmsvc_mark_host, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %2) #13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nlm_traverse_files(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #1 {
  %4 = alloca %struct.file_lock, align 8
  tail call void @mutex_lock(ptr noundef nonnull @nlm_file_mutex) #13
  %5 = icmp eq ptr %2, null
  %6 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 7
  %7 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 12
  %8 = getelementptr inbounds %struct.file_lock, ptr %4, i32 0, i32 13
  br label %9

9:                                                ; preds = %140, %3
  %10 = phi i32 [ 0, %3 ], [ %142, %140 ]
  %11 = phi i32 [ 0, %3 ], [ %141, %140 ]
  %12 = getelementptr [128 x %struct.hlist_head], ptr @nlm_files, i32 0, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %140, label %15

15:                                               ; preds = %137, %9
  %16 = phi ptr [ %18, %137 ], [ %13, %9 ]
  %17 = phi i32 [ %138, %137 ], [ %11, %9 ]
  %18 = load ptr, ptr %16, align 4
  br i1 %5, label %22, label %19

19:                                               ; preds = %15
  %20 = call i32 %2(ptr noundef %0, ptr noundef nonnull %16) #13, !callees !14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %137, label %22

22:                                               ; preds = %19, %15
  %23 = getelementptr inbounds %struct.nlm_file, ptr %16, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  call void @mutex_unlock(ptr noundef nonnull @nlm_file_mutex) #13
  call void @nlmsvc_traverse_blocks(ptr noundef %0, ptr noundef nonnull %16, ptr noundef %1) #13
  call void @nlmsvc_traverse_shares(ptr noundef %0, ptr noundef nonnull %16, ptr noundef %1) #13
  %26 = getelementptr inbounds %struct.nlm_file, ptr %16, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = getelementptr %struct.nlm_file, ptr %16, i32 0, i32 2, i32 1
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %22
  %33 = phi ptr [ %31, %29 ], [ %27, %22 ]
  %34 = getelementptr inbounds %struct.file, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 40
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %94, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.file_lock_context, ptr %37, i32 0, i32 2
  %41 = load volatile ptr, ptr %40, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.file_lock_context, ptr %37, i32 0, i32 2, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %40
  br i1 %46, label %94, label %47

47:                                               ; preds = %43, %39
  %48 = getelementptr inbounds %struct.nlm_file, ptr %16, i32 0, i32 5
  store i32 0, ptr %48, align 4
  call void @_raw_spin_lock(ptr noundef nonnull %37) #13
  %49 = load ptr, ptr %40, align 4
  %50 = icmp eq ptr %49, %40
  br i1 %50, label %89, label %51

51:                                               ; preds = %47
  %52 = getelementptr %struct.nlm_file, ptr %16, i32 0, i32 2, i32 1
  br label %53

53:                                               ; preds = %87, %51
  %54 = phi ptr [ %49, %51 ], [ %88, %87 ]
  %55 = getelementptr i8, ptr %54, i32 100
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, @nlmsvc_lock_operations
  br i1 %57, label %58, label %84

58:                                               ; preds = %53
  %59 = load i32, ptr %48, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %48, align 4
  %61 = getelementptr i8, ptr %54, i32 32
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.nlm_lockowner, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = call i32 %1(ptr noundef %64, ptr noundef %0) #13
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %58
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %68 = load i16, ptr %37, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %37, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i32 128, i1 false) #13, !annotation !13
  call void @locks_init_lock(ptr noundef nonnull %4) #13
  store i8 2, ptr %6, align 4
  store i64 0, ptr %7, align 8
  store i64 9223372036854775807, ptr %8, align 8
  %70 = load ptr, ptr %26, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = call i32 @vfs_lock_file(ptr noundef nonnull %70, i32 noundef 6, ptr noundef nonnull %4, ptr noundef null) #13
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %72, %67
  %76 = load ptr, ptr %52, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = call i32 @vfs_lock_file(ptr noundef nonnull %76, i32 noundef 6, ptr noundef nonnull %4, ptr noundef null) #13
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %78, %75
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #13
  store i32 0, ptr %48, align 4
  call void @_raw_spin_lock(ptr noundef nonnull %37) #13
  %82 = load ptr, ptr %40, align 4
  %83 = icmp eq ptr %82, %40
  br i1 %83, label %89, label %87

84:                                               ; preds = %58, %53
  %85 = load ptr, ptr %54, align 4
  %86 = icmp eq ptr %85, %40
  br i1 %86, label %89, label %87

87:                                               ; preds = %84, %81
  %88 = phi ptr [ %85, %84 ], [ %82, %81 ]
  br label %53

89:                                               ; preds = %84, %81, %47
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %90 = load i16, ptr %37, align 4
  %91 = add i16 %90, 1
  store i16 %91, ptr %37, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  br label %94

92:                                               ; preds = %78, %72
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 195) #15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #13
  br label %94

94:                                               ; preds = %92, %89, %43, %32
  %95 = phi i32 [ 1, %92 ], [ %17, %89 ], [ %17, %43 ], [ %17, %32 ]
  call void @mutex_lock(ptr noundef nonnull @nlm_file_mutex) #13
  %96 = load i32, ptr %23, align 4
  %97 = add i32 %96, -1
  store i32 %97, ptr %23, align 4
  %98 = getelementptr inbounds %struct.nlm_file, ptr %16, i32 0, i32 4
  %99 = load volatile ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, %98
  br i1 %100, label %101, label %137

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.nlm_file, ptr %16, i32 0, i32 5
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %137

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.nlm_file, ptr %16, i32 0, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  %109 = icmp eq i32 %97, 0
  %110 = select i1 %108, i1 %109, i1 false
  br i1 %110, label %111, label %137

111:                                              ; preds = %105
  %112 = load ptr, ptr %16, align 4
  %113 = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  store volatile ptr %112, ptr %114, align 4
  %115 = icmp eq ptr %112, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.hlist_node, ptr %112, i32 0, i32 1
  store volatile ptr %114, ptr %117, align 4
  br label %118

118:                                              ; preds = %116, %111
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %113, align 4
  %119 = load ptr, ptr %26, align 4
  %120 = getelementptr %struct.nlm_file, ptr %16, i32 0, i32 2, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = icmp ugt ptr %119, %121
  br i1 %122, label %136, label %123

123:                                              ; preds = %132, %118
  %124 = phi ptr [ %133, %132 ], [ %121, %118 ]
  %125 = phi ptr [ %134, %132 ], [ %119, %118 ]
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr @nlmsvc_ops, align 4
  %129 = getelementptr inbounds %struct.nlmsvc_binding, ptr %128, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  call void %130(ptr noundef nonnull %125) #13
  %131 = load ptr, ptr %120, align 4
  br label %132

132:                                              ; preds = %127, %123
  %133 = phi ptr [ %124, %123 ], [ %131, %127 ]
  %134 = getelementptr %struct.file, ptr %125, i32 1
  %135 = icmp ugt ptr %134, %133
  br i1 %135, label %136, label %123

136:                                              ; preds = %132, %118
  call void @kfree(ptr noundef nonnull %16) #13
  br label %137

137:                                              ; preds = %136, %105, %101, %94, %19
  %138 = phi i32 [ %95, %101 ], [ %95, %105 ], [ %95, %136 ], [ %95, %94 ], [ %17, %19 ]
  %139 = icmp eq ptr %18, null
  br i1 %139, label %140, label %15

140:                                              ; preds = %137, %9
  %141 = phi i32 [ %11, %9 ], [ %138, %137 ]
  %142 = add nuw nsw i32 %10, 1
  %143 = icmp eq i32 %142, 128
  br i1 %143, label %144, label %9

144:                                              ; preds = %140
  call void @mutex_unlock(ptr noundef nonnull @nlm_file_mutex) #13
  ret i32 %141
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nlmsvc_mark_host(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.nlm_host, ptr %1, i32 0, i32 25
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %4
  br i1 %9, label %10, label %14

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 9
  %12 = load i8, ptr %11, align 2
  %13 = or i8 %12, 8
  store i8 %13, ptr %11, align 2
  br label %14

14:                                               ; preds = %10, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nlmsvc_free_host_resources(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call fastcc i32 @nlm_traverse_files(ptr noundef %0, ptr noundef nonnull @nlmsvc_same_host, ptr noundef null)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %6) #15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/lockd/svcsubs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #13, !srcloc !15
  unreachable

8:                                                ; preds = %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nlmsvc_same_host(ptr noundef readnone %0, ptr noundef readnone %1) #7 {
  %3 = icmp eq ptr %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nlmsvc_invalidate_all() local_unnamed_addr #1 {
  %1 = tail call fastcc i32 @nlm_traverse_files(ptr noundef null, ptr noundef nonnull @nlmsvc_is_client, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nlmsvc_is_client(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #9 {
  %3 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 9
  %4 = load i8, ptr %3, align 2
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nlm_host, ptr %0, i32 0, i32 23
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nsm_handle, ptr %9, i32 0, i32 6
  %13 = load i8, ptr %12, align 4
  %14 = or i8 %13, 2
  store i8 %14, ptr %12, align 4
  br label %15

15:                                               ; preds = %11, %7, %2
  %16 = phi i32 [ 1, %11 ], [ 1, %7 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nlmsvc_unlock_all_by_sb(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @nlm_traverse_files(ptr noundef %0, ptr noundef nonnull @nlmsvc_always_match, ptr noundef nonnull @nlmsvc_match_sb)
  %3 = icmp eq i32 %2, 0
  %4 = select i1 %3, i32 0, i32 -5
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nlmsvc_always_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #7 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @nlmsvc_match_sb(ptr noundef readnone %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.nlm_file, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr %struct.nlm_file, ptr %1, i32 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  %16 = zext i1 %15 to i32
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nlmsvc_unlock_all_by_ip(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @nlm_traverse_files(ptr noundef %0, ptr noundef nonnull @nlmsvc_match_ip, ptr noundef null)
  %3 = icmp eq i32 %2, 0
  %4 = select i1 %3, i32 0, i32 -5
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nlmsvc_match_ip(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.nlm_host, ptr %1, i32 0, i32 3
  %4 = load i16, ptr %3, align 2
  %5 = load i16, ptr %0, align 2
  %6 = icmp eq i16 %4, %5
  br i1 %6, label %7, label %50

7:                                                ; preds = %2
  switch i16 %4, label %50 [
    i16 2, label %8
    i16 10, label %11
  ]

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.nlm_host, ptr %1, i32 0, i32 3, i32 0, i32 1
  %10 = getelementptr inbounds %struct.sockaddr_in, ptr %0, i32 0, i32 2
  br label %43

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nlm_host, ptr %1, i32 0, i32 3, i32 0, i32 1, i32 4
  %13 = getelementptr inbounds %struct.sockaddr_in6, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %12, align 4
  %15 = load i32, ptr %13, align 4
  %16 = xor i32 %15, %14
  %17 = getelementptr %struct.nlm_host, ptr %1, i32 0, i32 3, i32 0, i32 1, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr %struct.sockaddr_in6, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = xor i32 %20, %18
  %22 = or i32 %21, %16
  %23 = getelementptr %struct.nlm_host, ptr %1, i32 0, i32 3, i32 0, i32 1, i32 12
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr %struct.sockaddr_in6, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = xor i32 %26, %24
  %28 = or i32 %22, %27
  %29 = getelementptr %struct.nlm_host, ptr %1, i32 0, i32 3, i32 0, i32 1, i32 16
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr %struct.sockaddr_in6, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = xor i32 %32, %30
  %34 = or i32 %28, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %11
  %37 = tail call i32 @__ipv6_addr_type(ptr noundef %12) #13
  %38 = and i32 %37, 32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.nlm_host, ptr %1, i32 0, i32 3, i32 0, i32 1, i32 20
  %42 = getelementptr inbounds %struct.sockaddr_in6, ptr %0, i32 0, i32 4
  br label %43

43:                                               ; preds = %40, %8
  %44 = phi ptr [ %42, %40 ], [ %10, %8 ]
  %45 = phi ptr [ %41, %40 ], [ %9, %8 ]
  %46 = load i32, ptr %45, align 4
  %47 = load i32, ptr %44, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  br label %50

50:                                               ; preds = %43, %36, %11, %7, %2
  %51 = phi i32 [ 0, %7 ], [ 0, %2 ], [ 0, %11 ], [ 1, %36 ], [ %49, %43 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_traverse_blocks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_traverse_shares(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_init_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_lock_file(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

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
!8 = !{i64 2148830066}
!9 = !{i64 2148946935}
!10 = !{i64 2148942759}
!11 = !{i64 2148942834, i64 2148942861, i64 2148942908, i64 2148942930, i64 2148942958, i64 2148942978}
!12 = !{i64 2148969938}
!13 = !{!"auto-init"}
!14 = !{ptr @nlmsvc_match_sb}
!15 = !{i64 2155807436, i64 2155807919, i64 2155807473, i64 2155807529, i64 2155807563, i64 2155807587, i64 2155807628, i64 2155807649, i64 2155807677, i64 2155807711}
