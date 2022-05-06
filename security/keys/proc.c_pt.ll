; ModuleID = '/llk/IR/security/keys/proc.c_pt.bc'
source_filename = "../security/keys/proc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.rb_root = type { ptr }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.29, %struct.rw_semaphore, ptr, ptr, %union.anon.30, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.31, %union.anon.36, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.29 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%union.anon.30 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.31 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.32, ptr, ptr, ptr }
%union.anon.32 = type { i32 }
%union.anon.36 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.key_user = type { %struct.rb_node, %struct.mutex, %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.kuid_t, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.keyring_search_context = type { %struct.keyring_index_key, ptr, %struct.key_match_data, i32, ptr, i32, i8, ptr, i64 }
%struct.key_match_data = type { ptr, ptr, ptr, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.lock_class_key = type {}

@__initcall__kmod_proc__212_58_key_proc_init6 = internal global ptr @key_proc_init, section ".initcall6.init", align 4
@.str = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@proc_keys_ops = internal constant %struct.seq_operations { ptr @proc_keys_start, ptr @proc_keys_stop, ptr @proc_keys_next, ptr @proc_keys_show }, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Cannot create /proc/keys\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"key-users\00", align 1
@proc_key_users_ops = internal constant %struct.seq_operations { ptr @proc_key_users_start, ptr @proc_key_users_stop, ptr @proc_key_users_next, ptr @proc_key_users_show }, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Cannot create /proc/key-users\0A\00", align 1
@key_serial_lock = external dso_local global %struct.spinlock, align 4
@key_serial_tree = external dso_local local_unnamed_addr global %struct.rb_root, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"perm\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"expd\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%llus\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%llum\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%lluh\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%llud\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%lluw\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"%08x %c%c%c%c%c%c%c %5d %4s %08x %5d %5d %-9.9s \00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@key_user_lock = external dso_local global %struct.spinlock, align 4
@key_user_tree = external dso_local global %struct.rb_root, align 4
@key_quota_root_maxkeys = external dso_local local_unnamed_addr global i32, align 4
@key_quota_maxkeys = external dso_local local_unnamed_addr global i32, align 4
@key_quota_root_maxbytes = external dso_local local_unnamed_addr global i32, align 4
@key_quota_maxbytes = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"%5u: %5d %d/%d %d/%d %d/%d\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_proc__212_58_key_proc_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @key_proc_init() #0 section ".init.text" {
  %1 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @proc_keys_ops, i32 noundef 0, ptr noundef null) #8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1) #9
  unreachable

4:                                                ; preds = %0
  %5 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.2, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @proc_key_users_ops, i32 noundef 0, ptr noundef null) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.3) #9
  unreachable

8:                                                ; preds = %4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_keys_start(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #4 {
  %3 = load i64, ptr %1, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @key_serial_lock) #8
  %4 = load i64, ptr %1, align 8
  %5 = icmp sgt i64 %4, 2147483647
  br i1 %5, label %65, label %6

6:                                                ; preds = %2
  %7 = trunc i64 %3 to i32
  %8 = load ptr, ptr @key_serial_tree, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %65, label %10

10:                                               ; preds = %31, %6
  %11 = phi ptr [ %34, %31 ], [ %8, %6 ]
  %12 = phi ptr [ %32, %31 ], [ null, %6 ]
  %13 = getelementptr i8, ptr %11, i32 -8
  %14 = getelementptr i8, ptr %11, i32 -4
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, %7
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = icmp eq ptr %12, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.key, ptr %12, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, %15
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %17
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi ptr [ %13, %23 ], [ %12, %19 ]
  %26 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 2
  br label %31

27:                                               ; preds = %10
  %28 = icmp slt i32 %15, %7
  br i1 %28, label %29, label %36

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 1
  br label %31

31:                                               ; preds = %29, %24
  %32 = phi ptr [ %25, %24 ], [ %12, %29 ]
  %33 = phi ptr [ %26, %24 ], [ %30, %29 ]
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %10

36:                                               ; preds = %31, %27
  %37 = phi ptr [ %32, %31 ], [ %13, %27 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %65, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.key, ptr %37, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.key_user, ptr %41, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %52, label %59

45:                                               ; preds = %52
  %46 = getelementptr i8, ptr %55, i32 -8
  %47 = getelementptr i8, ptr %55, i32 36
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.key_user, ptr %48, i32 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %57

52:                                               ; preds = %45, %39
  %53 = phi ptr [ %46, %45 ], [ %37, %39 ]
  %54 = getelementptr inbounds %struct.key, ptr %53, i32 0, i32 2
  %55 = tail call ptr @rb_next(ptr noundef %54) #8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %65, label %45

57:                                               ; preds = %45
  %58 = icmp eq ptr %46, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %57, %39
  %60 = phi ptr [ %46, %57 ], [ %37, %39 ]
  %61 = getelementptr inbounds %struct.key, ptr %60, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, ptr %1, align 8
  %64 = getelementptr inbounds %struct.key, ptr %60, i32 0, i32 2
  br label %65

65:                                               ; preds = %59, %57, %52, %36, %6, %2
  %66 = phi ptr [ %64, %59 ], [ null, %2 ], [ null, %57 ], [ null, %36 ], [ null, %6 ], [ null, %52 ]
  ret ptr %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @proc_keys_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #4 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %3 = load i16, ptr @key_serial_lock, align 4
  %4 = add i16 %3, 1
  store i16 %4, ptr @key_serial_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_keys_next(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #4 {
  %4 = tail call ptr @rb_next(ptr noundef %1) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %13, %3
  %7 = phi ptr [ %14, %13 ], [ %4, %3 ]
  %8 = getelementptr i8, ptr %7, i32 36
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.key_user, ptr %9, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = tail call ptr @rb_next(ptr noundef nonnull %7) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %6

16:                                               ; preds = %6
  %17 = getelementptr i8, ptr %7, i32 -4
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %18 to i64
  br label %23

20:                                               ; preds = %13, %3
  %21 = load i64, ptr %2, align 8
  %22 = add i64 %21, 1
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi ptr [ null, %20 ], [ %7, %16 ]
  %25 = phi i64 [ %22, %20 ], [ %19, %16 ]
  store i64 %25, ptr %2, align 8
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_keys_show(ptr noundef %0, ptr noundef %1) #4 {
  %3 = alloca [16 x i8], align 1
  %4 = alloca %struct.keyring_search_context, align 8
  %5 = getelementptr i8, ptr %1, i32 -8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #8
  %6 = getelementptr i8, ptr %1, i32 88
  %7 = getelementptr inbounds i8, ptr %4, i32 52
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %7, i8 0, i32 12, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef align 8 dereferenceable(20) %6, i32 20, i1 false)
  %8 = getelementptr inbounds %struct.keyring_search_context, ptr %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 12
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %8, align 4
  %13 = getelementptr inbounds %struct.keyring_search_context, ptr %4, i32 0, i32 2
  store ptr @lookup_user_key_possessed, ptr %13, align 8
  %14 = getelementptr inbounds %struct.keyring_search_context, ptr %4, i32 0, i32 2, i32 1
  store ptr %5, ptr %14, align 4
  %15 = getelementptr inbounds %struct.keyring_search_context, ptr %4, i32 0, i32 2, i32 2
  store ptr null, ptr %15, align 8
  %16 = getelementptr inbounds %struct.keyring_search_context, ptr %4, i32 0, i32 2, i32 3
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.keyring_search_context, ptr %4, i32 0, i32 3
  store i32 65, ptr %17, align 8
  %18 = getelementptr inbounds %struct.keyring_search_context, ptr %4, i32 0, i32 4
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.keyring_search_context, ptr %4, i32 0, i32 5
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.keyring_search_context, ptr %4, i32 0, i32 7
  store ptr null, ptr %20, align 8
  %21 = getelementptr inbounds %struct.keyring_search_context, ptr %4, i32 0, i32 8
  store i64 0, ptr %21, align 8
  %22 = getelementptr i8, ptr %1, i32 72
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 16777216
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %27 = call ptr @search_cred_keyrings_rcu(ptr noundef nonnull %4) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = ptrtoint ptr %27 to i32
  %31 = and i32 %30, -2
  %32 = inttoptr i32 %31 to ptr
  call void @key_put(ptr noundef %32) #8
  %33 = ptrtoint ptr %5 to i32
  %34 = or i32 %33, 1
  %35 = inttoptr i32 %34 to ptr
  br label %36

36:                                               ; preds = %29, %26, %2
  %37 = phi ptr [ %5, %26 ], [ %35, %29 ], [ %5, %2 ]
  %38 = load ptr, ptr %8, align 4
  %39 = call i32 @key_task_permission(ptr noundef %37, ptr noundef %38, i32 noundef 1) #8
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %134, label %41

41:                                               ; preds = %36
  %42 = call i64 @ktime_get_real_seconds() #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %43 = getelementptr i8, ptr %1, i32 48
  %44 = load volatile i64, ptr %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %3, ptr noundef nonnull align 1 dereferenceable(5) @.str.4, i32 5, i1 false)
  br label %87

47:                                               ; preds = %41
  %48 = icmp sgt i64 %44, %42
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %3, ptr noundef nonnull align 1 dereferenceable(5) @.str.5, i32 5, i1 false)
  br label %87

50:                                               ; preds = %47
  %51 = sub i64 %44, %42
  %52 = icmp ult i64 %51, 60
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.6, i64 noundef %51)
  br label %87

55:                                               ; preds = %50
  %56 = icmp ult i64 %51, 3600
  br i1 %56, label %57, label %64

57:                                               ; preds = %55
  %58 = trunc i64 %51 to i16
  %59 = lshr i16 %58, 2
  %60 = zext i16 %59 to i64
  %61 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 1229782938247303441, i64 %60, i64 1229782938247303441) #10, !srcloc !15
  %62 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 1229782938247303441, i64 %60, i64 %61) #10, !srcloc !16
  %63 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.7, i64 noundef %62)
  br label %87

64:                                               ; preds = %55
  %65 = icmp ult i64 %51, 86400
  br i1 %65, label %66, label %74

66:                                               ; preds = %64
  %67 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -7952596333999228919, i64 %51, i32 0) #10, !srcloc !17
  %68 = extractvalue { i64, i32 } %67, 0
  %69 = extractvalue { i64, i32 } %67, 1
  %70 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -7952596333999228919, i64 %51, i64 %68, i32 %69) #10, !srcloc !18
  %71 = extractvalue { i64, i32 } %70, 0
  %72 = lshr i64 %71, 11
  %73 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.8, i64 noundef %72)
  br label %87

74:                                               ; preds = %64
  %75 = icmp ult i64 %51, 604800
  br i1 %75, label %76, label %82

76:                                               ; preds = %74
  %77 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -4454547087429121353, i64 %51) #10, !srcloc !19
  %78 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -4454547087429121353, i64 %51, i64 %77, i32 0) #10, !srcloc !18
  %79 = extractvalue { i64, i32 } %78, 0
  %80 = lshr i64 %79, 16
  %81 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.9, i64 noundef %80)
  br label %87

82:                                               ; preds = %74
  %83 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3997770567508694361, i64 %51) #10, !srcloc !19
  %84 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3997770567508694361, i64 %51, i64 %83) #10, !srcloc !16
  %85 = lshr i64 %84, 17
  %86 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, i64 noundef %85)
  br label %87

87:                                               ; preds = %82, %76, %66, %57, %53, %49, %46
  %88 = getelementptr i8, ptr %1, i32 80
  %89 = load volatile i16, ptr %88, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  %90 = getelementptr i8, ptr %1, i32 84
  %91 = load volatile i32, ptr %90, align 4
  %92 = getelementptr i8, ptr %1, i32 -4
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i16 %89, 0
  %95 = select i1 %94, i32 45, i32 73
  %96 = and i32 %91, 2
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, i32 45, i32 82
  %99 = and i32 %91, 1
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, i32 45, i32 68
  %102 = and i32 %91, 4
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %103, i32 45, i32 81
  %105 = and i32 %91, 8
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, i32 45, i32 85
  %108 = icmp slt i16 %89, 0
  %109 = select i1 %108, i32 78, i32 45
  %110 = and i32 %91, 32
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %111, i32 45, i32 105
  %113 = load volatile i32, ptr %5, align 4
  %114 = load i32, ptr %22, align 8
  %115 = getelementptr i8, ptr %1, i32 64
  %116 = load i32, ptr %115, align 8
  %117 = icmp eq i32 %116, -1
  %118 = load i32, ptr @overflowuid, align 4
  %119 = select i1 %117, i32 %118, i32 %116
  %120 = getelementptr i8, ptr %1, i32 68
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, -1
  %123 = load i32, ptr @overflowgid, align 4
  %124 = select i1 %122, i32 %123, i32 %121
  %125 = getelementptr i8, ptr %1, i32 96
  %126 = load ptr, ptr %125, align 8
  %127 = load ptr, ptr %126, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %93, i32 noundef %95, i32 noundef %98, i32 noundef %101, i32 noundef %104, i32 noundef %107, i32 noundef %109, i32 noundef %112, i32 noundef %113, ptr noundef nonnull %3, i32 noundef %114, i32 noundef %119, i32 noundef %124, ptr noundef %127) #8
  %128 = load ptr, ptr %125, align 8
  %129 = getelementptr inbounds %struct.key_type, ptr %128, i32 0, i32 12
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %87
  call void %130(ptr noundef %5, ptr noundef %0) #8
  br label %133

133:                                              ; preds = %132, %87
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %134

134:                                              ; preds = %133, %36
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lookup_user_key_possessed(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @search_cred_keyrings_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_task_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_key_users_start(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load i64, ptr %1, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @key_user_lock) #8
  %4 = tail call ptr @rb_first(ptr noundef nonnull @key_user_tree) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %11, %2
  %7 = phi ptr [ %12, %11 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.key_user, ptr %7, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = tail call ptr @rb_next(ptr noundef nonnull %7) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %6

14:                                               ; preds = %6
  %15 = icmp sgt i64 %3, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %30, %14
  %17 = phi i64 [ %19, %30 ], [ %3, %14 ]
  %18 = phi ptr [ %23, %30 ], [ %7, %14 ]
  %19 = add nsw i64 %17, -1
  %20 = tail call ptr @rb_next(ptr noundef nonnull %18) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %27, %16
  %23 = phi ptr [ %28, %27 ], [ %20, %16 ]
  %24 = getelementptr inbounds %struct.key_user, ptr %23, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = tail call ptr @rb_next(ptr noundef nonnull %23) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %22

30:                                               ; preds = %22
  %31 = icmp sgt i64 %17, 1
  br i1 %31, label %16, label %32

32:                                               ; preds = %30, %27, %16, %14, %11, %2
  %33 = phi ptr [ %7, %14 ], [ null, %2 ], [ null, %27 ], [ null, %16 ], [ %23, %30 ], [ null, %11 ]
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @proc_key_users_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #4 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %3 = load i16, ptr @key_user_lock, align 4
  %4 = add i16 %3, 1
  store i16 %4, ptr @key_user_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_key_users_next(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #4 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  %6 = tail call ptr @rb_next(ptr noundef %1) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %13, %3
  %9 = phi ptr [ %14, %13 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.key_user, ptr %9, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = tail call ptr @rb_next(ptr noundef nonnull %9) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %13, %8, %3
  %17 = phi ptr [ null, %3 ], [ %9, %8 ], [ null, %13 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_key_users_show(ptr noundef %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.key_user, ptr %1, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  %6 = load i32, ptr @key_quota_root_maxkeys, align 4
  %7 = load i32, ptr @key_quota_maxkeys, align 4
  %8 = select i1 %5, i32 %6, i32 %7
  %9 = load i32, ptr @key_quota_root_maxbytes, align 4
  %10 = load i32, ptr @key_quota_maxbytes, align 4
  %11 = select i1 %5, i32 %9, i32 %10
  %12 = icmp eq i32 %4, -1
  %13 = load i32, ptr @overflowuid, align 4
  %14 = select i1 %12, i32 %13, i32 %4
  %15 = getelementptr inbounds %struct.key_user, ptr %1, i32 0, i32 3
  %16 = load volatile i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.key_user, ptr %1, i32 0, i32 4
  %18 = load volatile i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.key_user, ptr %1, i32 0, i32 5
  %20 = load volatile i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.key_user, ptr %1, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.key_user, ptr %1, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %8, i32 noundef %24, i32 noundef %11) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { nounwind readnone }

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
!8 = !{i64 2149170921}
!9 = !{i64 2149166745}
!10 = !{i64 2149166820, i64 2149166847, i64 2149166894, i64 2149166916, i64 2149166944, i64 2149166964}
!11 = !{i64 2149193924}
!12 = !{!"auto-init"}
!13 = !{i64 2148944722}
!14 = !{i64 2148944939}
!15 = !{i64 1093370, i64 1093397}
!16 = !{i64 1093710, i64 1093737, i64 1093771, i64 1093792}
!17 = !{i64 1093487, i64 1093514, i64 1093536, i64 1093564}
!18 = !{i64 1093895, i64 1093922, i64 1093955, i64 1093976, i64 1094003, i64 1094029}
!19 = !{i64 1093200, i64 1093227}
!20 = !{i64 2151053731}
