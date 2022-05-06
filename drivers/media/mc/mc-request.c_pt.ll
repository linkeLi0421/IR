; ModuleID = '/llk/IR/drivers/media/mc/mc-request.c_pt.bc'
source_filename = "../drivers/media/mc/mc-request.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_media_request_put:\09\09\09\09\09"
module asm "\09.asciz \09\22media_request_put\22\09\09\09\09\09"
module asm "__kstrtabns_media_request_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_media_request_get_by_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22media_request_get_by_fd\22\09\09\09\09\09"
module asm "__kstrtabns_media_request_get_by_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_media_request_object_find:\09\09\09\09\09"
module asm "\09.asciz \09\22media_request_object_find\22\09\09\09\09\09"
module asm "__kstrtabns_media_request_object_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_media_request_object_put:\09\09\09\09\09"
module asm "\09.asciz \09\22media_request_object_put\22\09\09\09\09\09"
module asm "__kstrtabns_media_request_object_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_media_request_object_init:\09\09\09\09\09"
module asm "\09.asciz \09\22media_request_object_init\22\09\09\09\09\09"
module asm "__kstrtabns_media_request_object_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_media_request_object_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22media_request_object_bind\22\09\09\09\09\09"
module asm "__kstrtabns_media_request_object_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_media_request_object_unbind:\09\09\09\09\09"
module asm "\09.asciz \09\22media_request_object_unbind\22\09\09\09\09\09"
module asm "__kstrtabns_media_request_object_unbind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_media_request_object_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22media_request_object_complete\22\09\09\09\09\09"
module asm "__kstrtabns_media_request_object_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.media_request = type { ptr, %struct.kref, [27 x i8], i32, i32, i32, %struct.list_head, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.58], %struct.media_entity_enum, i32 }
%struct.anon.58 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.media_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.media_request_object_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.poll_table_struct = type { ptr, i32 }

@__kstrtab_media_request_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_media_request_put = external dso_local constant [0 x i8], align 1
@__ksymtab_media_request_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @media_request_put to i32), ptr @__kstrtab_media_request_put, ptr @__kstrtabns_media_request_put }, section "___ksymtab_gpl+media_request_put", align 4
@request_fops = internal constant %struct.file_operations { ptr @__this_module, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @media_request_poll, ptr @media_request_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @media_request_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_media_request_get_by_fd = external dso_local constant [0 x i8], align 1
@__kstrtabns_media_request_get_by_fd = external dso_local constant [0 x i8], align 1
@__ksymtab_media_request_get_by_fd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @media_request_get_by_fd to i32), ptr @__kstrtab_media_request_get_by_fd, ptr @__kstrtabns_media_request_get_by_fd }, section "___ksymtab_gpl+media_request_get_by_fd", align 4
@.str = private unnamed_addr constant [30 x i8] c"drivers/media/mc/mc-request.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"request\00", align 1
@media_request_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"&req->poll_wait\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%u:%d\00", align 1
@__kstrtab_media_request_object_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_media_request_object_find = external dso_local constant [0 x i8], align 1
@__ksymtab_media_request_object_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @media_request_object_find to i32), ptr @__kstrtab_media_request_object_find, ptr @__kstrtabns_media_request_object_find }, section "___ksymtab_gpl+media_request_object_find", align 4
@__kstrtab_media_request_object_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_media_request_object_put = external dso_local constant [0 x i8], align 1
@__ksymtab_media_request_object_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @media_request_object_put to i32), ptr @__kstrtab_media_request_object_put, ptr @__kstrtabns_media_request_object_put }, section "___ksymtab_gpl+media_request_object_put", align 4
@__kstrtab_media_request_object_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_media_request_object_init = external dso_local constant [0 x i8], align 1
@__ksymtab_media_request_object_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @media_request_object_init to i32), ptr @__kstrtab_media_request_object_init, ptr @__kstrtabns_media_request_object_init }, section "___ksymtab_gpl+media_request_object_init", align 4
@__kstrtab_media_request_object_bind = external dso_local constant [0 x i8], align 1
@__kstrtabns_media_request_object_bind = external dso_local constant [0 x i8], align 1
@__ksymtab_media_request_object_bind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @media_request_object_bind to i32), ptr @__kstrtab_media_request_object_bind, ptr @__kstrtabns_media_request_object_bind }, section "___ksymtab_gpl+media_request_object_bind", align 4
@__kstrtab_media_request_object_unbind = external dso_local constant [0 x i8], align 1
@__kstrtabns_media_request_object_unbind = external dso_local constant [0 x i8], align 1
@__ksymtab_media_request_object_unbind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @media_request_object_unbind to i32), ptr @__kstrtab_media_request_object_unbind, ptr @__kstrtabns_media_request_object_unbind }, section "___ksymtab_gpl+media_request_object_unbind", align 4
@__kstrtab_media_request_object_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_media_request_object_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_media_request_object_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @media_request_object_complete to i32), ptr @__kstrtab_media_request_object_complete, ptr @__kstrtabns_media_request_object_complete }, section "___ksymtab_gpl+media_request_object_complete", align 4
@__this_module = external dso_local global %struct.module, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_media_request_get_by_fd, ptr @__ksymtab_media_request_object_bind, ptr @__ksymtab_media_request_object_complete, ptr @__ksymtab_media_request_object_find, ptr @__ksymtab_media_request_object_init, ptr @__ksymtab_media_request_object_put, ptr @__ksymtab_media_request_object_unbind, ptr @__ksymtab_media_request_put], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @media_request_put(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.media_request, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #6, !srcloc !9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #6, !srcloc !10
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %19, label %8, !prof !11

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #6
  br label %19

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr %struct.media_request, ptr %0, i32 0, i32 3
  store i32 4, ptr %11, align 4
  tail call fastcc void @media_request_clean(ptr noundef %0) #6
  %12 = getelementptr inbounds %struct.media_device, ptr %10, i32 0, i32 21
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.media_device_ops, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  tail call void %15(ptr noundef %0) #6
  br label %19

18:                                               ; preds = %9
  tail call void @kfree(ptr noundef %0) #6
  br label %19

19:                                               ; preds = %18, %17, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @media_request_get_by_fd(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 21
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.media_device_ops, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.media_device_ops, ptr %6, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %38, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @__fdget(i32 noundef %1) #6, !noalias !13
  %18 = and i32 %17, -4
  %19 = inttoptr i32 %18 to ptr
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, @request_fops
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 15
  %27 = load ptr, ptr %26, align 8
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  tail call fastcc void @media_request_get(ptr noundef %27)
  %31 = and i32 %17, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %36

33:                                               ; preds = %25, %21
  %34 = and i32 %17, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33, %30
  %37 = phi ptr [ %27, %30 ], [ inttoptr (i32 -22 to ptr), %33 ]
  tail call void @fput(ptr noundef nonnull %19) #6
  br label %38

38:                                               ; preds = %36, %33, %30, %16, %12, %8, %4, %2
  %39 = phi ptr [ inttoptr (i32 -53 to ptr), %12 ], [ inttoptr (i32 -53 to ptr), %8 ], [ inttoptr (i32 -53 to ptr), %4 ], [ inttoptr (i32 -53 to ptr), %2 ], [ %27, %30 ], [ inttoptr (i32 -22 to ptr), %33 ], [ inttoptr (i32 -22 to ptr), %16 ], [ %37, %36 ]
  ret ptr %39
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @media_request_get(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.media_request, ptr %0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #6, !srcloc !9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #6, !srcloc !16
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !17

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !11

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 2, %1 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #6
  br label %12

12:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @media_request_alloc(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 21
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.media_device_ops, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct.media_device_ops, ptr %4, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = xor i1 %7, %10
  br i1 %11, label %12, label %13, !prof !17

12:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 296, i32 noundef 9, ptr noundef null) #6
  br label %54

13:                                               ; preds = %2
  br i1 %7, label %16, label %14

14:                                               ; preds = %13
  %15 = tail call ptr %6(ptr noundef %0) #6
  br label %19

16:                                               ; preds = %13
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 76) #7
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi ptr [ %15, %14 ], [ %18, %16 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %54, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #6
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %22
  %26 = tail call ptr @anon_inode_getfile(ptr noundef nonnull @.str.1, ptr noundef nonnull @request_fops, ptr noundef null, i32 noundef 524288) #6
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = ptrtoint ptr %26 to i32
  tail call void @put_unused_fd(i32 noundef %23) #6
  br label %46

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.file, ptr %26, i32 0, i32 15
  store ptr %20, ptr %31, align 8
  store ptr %0, ptr %20, align 4
  %32 = getelementptr inbounds %struct.media_request, ptr %20, i32 0, i32 3
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.media_request, ptr %20, i32 0, i32 7
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.media_request, ptr %20, i32 0, i32 1
  store volatile i32 1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.media_request, ptr %20, i32 0, i32 6
  store volatile ptr %35, ptr %35, align 4
  %36 = getelementptr inbounds %struct.media_request, ptr %20, i32 0, i32 6, i32 1
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.media_request, ptr %20, i32 0, i32 9
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.media_request, ptr %20, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %38, ptr noundef nonnull @.str.2, ptr noundef nonnull @media_request_alloc.__key) #6
  %39 = getelementptr inbounds %struct.media_request, ptr %20, i32 0, i32 4
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.media_request, ptr %20, i32 0, i32 5
  store i32 0, ptr %40, align 4
  store i32 %23, ptr %1, align 4
  %41 = getelementptr inbounds %struct.media_request, ptr %20, i32 0, i32 2
  %42 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #6, !srcloc !9
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 1, ptr elementtype(i32) %42) #6, !srcloc !19
  %44 = extractvalue { i32, i32 } %43, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  %45 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %41, i32 noundef 27, ptr noundef nonnull @.str.3, i32 noundef %44, i32 noundef %23)
  tail call void @fd_install(i32 noundef %23, ptr noundef %26) #6
  br label %54

46:                                               ; preds = %28, %22
  %47 = phi i32 [ %29, %28 ], [ %23, %22 ]
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds %struct.media_device_ops, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  tail call void %50(ptr noundef nonnull %20) #6
  br label %54

53:                                               ; preds = %46
  tail call void @kfree(ptr noundef nonnull %20) #6
  br label %54

54:                                               ; preds = %53, %52, %30, %19, %12
  %55 = phi i32 [ -12, %12 ], [ 0, %30 ], [ -12, %19 ], [ %47, %53 ], [ %47, %52 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_inode_getfile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @media_request_object_find(ptr noundef %0, ptr noundef readnone %1, ptr noundef readnone %2) #0 {
  %4 = icmp eq ptr %1, null
  %5 = icmp eq ptr %2, null
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %8, !prof !17

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 371, i32 noundef 9, ptr noundef null) #6
  br label %40

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.media_request, ptr %0, i32 0, i32 9
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #6
  %11 = getelementptr inbounds %struct.media_request, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %38, label %14

14:                                               ; preds = %35, %8
  %15 = phi ptr [ %36, %35 ], [ %12, %8 ]
  %16 = getelementptr i8, ptr %15, i32 -12
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %15, i32 -8
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %15, i32 -12
  %25 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #6, !srcloc !9
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #6, !srcloc !16
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29, !prof !17

29:                                               ; preds = %23
  %30 = add i32 %27, 1
  %31 = or i32 %30, %27
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %38, label %33, !prof !11

33:                                               ; preds = %29, %23
  %34 = phi i32 [ 2, %23 ], [ 1, %29 ]
  tail call void @refcount_warn_saturate(ptr noundef %25, i32 noundef %34) #6
  br label %38

35:                                               ; preds = %19, %14
  %36 = load ptr, ptr %15, align 4
  %37 = icmp eq ptr %36, %11
  br i1 %37, label %38, label %14

38:                                               ; preds = %35, %33, %29, %8
  %39 = phi ptr [ %24, %29 ], [ %24, %33 ], [ null, %8 ], [ null, %35 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #6
  br label %40

40:                                               ; preds = %38, %7
  %41 = phi ptr [ null, %7 ], [ %39, %38 ]
  ret ptr %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @media_request_object_put(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.media_request_object, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #6, !srcloc !9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #6, !srcloc !10
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %18, label %8, !prof !11

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #6
  br label %18

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %10 = getelementptr %struct.media_request_object, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !11

13:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 357, i32 noundef 9, ptr noundef null) #6
  tail call void @media_request_object_unbind(ptr noundef %0) #6
  br label %14

14:                                               ; preds = %13, %9
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.media_request_object_ops, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void %17(ptr noundef %0) #6
  br label %18

18:                                               ; preds = %14, %8, %6
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @media_request_object_init(ptr noundef %0) #4 {
  store ptr null, ptr %0, align 4
  %2 = getelementptr inbounds %struct.media_request_object, ptr %0, i32 0, i32 2
  store ptr null, ptr %2, align 4
  %3 = getelementptr inbounds %struct.media_request_object, ptr %0, i32 0, i32 1
  store ptr null, ptr %3, align 4
  %4 = getelementptr inbounds %struct.media_request_object, ptr %0, i32 0, i32 5
  store i8 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.media_request_object, ptr %0, i32 0, i32 3
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.media_request_object, ptr %0, i32 0, i32 3, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.media_request_object, ptr %0, i32 0, i32 4
  store volatile i32 1, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @media_request_object_bind(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.media_request_object_ops, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !17

9:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 412, i32 noundef 9, ptr noundef null) #6
  br label %37

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.media_request, ptr %0, i32 0, i32 9
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #6
  %13 = getelementptr inbounds %struct.media_request, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %15 [
    i32 5, label %16
    i32 2, label %16
  ]

15:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 418, i32 noundef 9, ptr noundef null) #6
  br label %35

16:                                               ; preds = %10, %10
  %17 = getelementptr inbounds %struct.media_request_object, ptr %4, i32 0, i32 2
  store ptr %0, ptr %17, align 4
  store ptr %1, ptr %4, align 4
  %18 = getelementptr inbounds %struct.media_request_object, ptr %4, i32 0, i32 1
  store ptr %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.media_request_object, ptr %4, i32 0, i32 3
  %20 = getelementptr inbounds %struct.media_request, ptr %0, i32 0, i32 6
  br i1 %3, label %21, label %24

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.media_request, ptr %0, i32 0, i32 6, i32 1
  %23 = load ptr, ptr %22, align 4
  br label %27

24:                                               ; preds = %16
  %25 = load ptr, ptr %20, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi ptr [ %26, %24 ], [ %22, %21 ]
  %29 = phi ptr [ %25, %24 ], [ %20, %21 ]
  %30 = phi ptr [ %20, %24 ], [ %23, %21 ]
  store ptr %19, ptr %28, align 4
  store ptr %29, ptr %19, align 4
  %31 = getelementptr inbounds %struct.media_request_object, ptr %4, i32 0, i32 3, i32 1
  store ptr %30, ptr %31, align 4
  store volatile ptr %19, ptr %30, align 4
  %32 = getelementptr inbounds %struct.media_request, ptr %0, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  br label %35

35:                                               ; preds = %27, %15
  %36 = phi i32 [ 0, %27 ], [ -16, %15 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #6
  br label %37

37:                                               ; preds = %35, %9
  %38 = phi i32 [ -53, %9 ], [ %36, %35 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @media_request_object_unbind(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.media_request_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !17

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 444, i32 noundef 9, ptr noundef null) #6
  br label %62

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.media_request, ptr %3, i32 0, i32 9
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #6
  %9 = getelementptr inbounds %struct.media_request_object, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.media_request_object, ptr %0, i32 0, i32 3, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  store ptr null, ptr %2, align 4
  %14 = getelementptr inbounds %struct.media_request, ptr %3, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %25 [
    i32 3, label %37
    i32 1, label %16
    i32 4, label %17
  ], !prof !21

16:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 454, i32 noundef 9, ptr noundef null) #6
  br label %37

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.media_request_object, ptr %0, i32 0, i32 5
  %19 = load i8, ptr %18, align 4, !range !22
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.media_request, ptr %3, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -1
  store i32 %24, ptr %22, align 4
  br label %37

25:                                               ; preds = %6
  %26 = getelementptr inbounds %struct.media_request, ptr %3, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30, !prof !17

29:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 463, i32 noundef 9, ptr noundef null) #6
  br label %37

30:                                               ; preds = %25
  %31 = add i32 %27, -1
  store i32 %31, ptr %26, align 4
  %32 = icmp eq i32 %15, 2
  %33 = icmp eq i32 %31, 0
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  store i32 3, ptr %14, align 4
  %36 = getelementptr inbounds %struct.media_request, ptr %3, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %36, i32 noundef 1, i32 noundef 0, ptr noundef null) #6
  br label %37

37:                                               ; preds = %35, %30, %29, %21, %17, %16, %6
  %38 = phi i1 [ false, %6 ], [ false, %17 ], [ false, %21 ], [ true, %35 ], [ false, %30 ], [ false, %16 ], [ false, %29 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #6
  %39 = load ptr, ptr %0, align 4
  %40 = getelementptr inbounds %struct.media_request_object_ops, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  tail call void %41(ptr noundef %0) #6
  br label %44

44:                                               ; preds = %43, %37
  br i1 %38, label %45, label %62

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.media_request, ptr %3, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #6, !srcloc !9
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #6, !srcloc !10
  %48 = extractvalue { i32, i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = icmp sgt i32 %48, 0
  br i1 %51, label %62, label %52, !prof !11

52:                                               ; preds = %50
  tail call void @refcount_warn_saturate(ptr noundef %46, i32 noundef 3) #6
  br label %62

53:                                               ; preds = %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %54 = load ptr, ptr %3, align 4
  store i32 4, ptr %14, align 4
  tail call fastcc void @media_request_clean(ptr noundef nonnull %3) #6
  %55 = getelementptr inbounds %struct.media_device, ptr %54, i32 0, i32 21
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.media_device_ops, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  tail call void %58(ptr noundef nonnull %3) #6
  br label %62

61:                                               ; preds = %53
  tail call void @kfree(ptr noundef nonnull %3) #6
  br label %62

62:                                               ; preds = %61, %60, %52, %50, %44, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @media_request_object_complete(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.media_request_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.media_request, ptr %3, i32 0, i32 9
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #6
  %6 = getelementptr inbounds %struct.media_request_object, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 4, !range !22
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %1
  store i8 1, ptr %6, align 4
  %10 = getelementptr inbounds %struct.media_request, ptr %3, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %38, label %13, !prof !17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.media_request, ptr %3, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %38, !prof !11

17:                                               ; preds = %13
  %18 = add i32 %11, -1
  store i32 %18, ptr %10, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  store i32 3, ptr %14, align 4
  %21 = getelementptr inbounds %struct.media_request, ptr %3, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %21, i32 noundef 1, i32 noundef 0, ptr noundef null) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #6
  %22 = getelementptr inbounds %struct.media_request, ptr %3, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #6, !srcloc !9
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #6, !srcloc !10
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = icmp sgt i32 %24, 0
  br i1 %27, label %42, label %28, !prof !11

28:                                               ; preds = %26
  tail call void @refcount_warn_saturate(ptr noundef %22, i32 noundef 3) #6
  br label %42

29:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %30 = load ptr, ptr %3, align 4
  store i32 4, ptr %14, align 4
  tail call fastcc void @media_request_clean(ptr noundef %3) #6
  %31 = getelementptr inbounds %struct.media_device, ptr %30, i32 0, i32 21
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.media_device_ops, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  tail call void %34(ptr noundef %3) #6
  br label %42

37:                                               ; preds = %29
  tail call void @kfree(ptr noundef %3) #6
  br label %42

38:                                               ; preds = %13, %9
  %39 = phi i32 [ 493, %9 ], [ 494, %13 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %39, i32 noundef 9, ptr noundef null) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #6
  br label %42

40:                                               ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #6
  br label %42

41:                                               ; preds = %17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #6
  br label %42

42:                                               ; preds = %41, %40, %38, %37, %36, %28, %26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @media_request_clean(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.media_request, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %6, label %5, !prof !11

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef null) #6
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.media_request, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !11

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef null) #6
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.media_request, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15, !prof !11

15:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef null) #6
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.media_request, ptr %0, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %42, label %20

20:                                               ; preds = %40, %16
  %21 = phi ptr [ %23, %40 ], [ %18, %16 ]
  %22 = getelementptr i8, ptr %21, i32 -12
  %23 = load ptr, ptr %21, align 4
  tail call void @media_request_object_unbind(ptr noundef %22)
  %24 = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #6, !srcloc !9
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #6, !srcloc !10
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = icmp sgt i32 %26, 0
  br i1 %29, label %40, label %30, !prof !11

30:                                               ; preds = %28
  tail call void @refcount_warn_saturate(ptr noundef %24, i32 noundef 3) #6
  br label %40

31:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %32 = getelementptr i8, ptr %21, i32 -4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35, !prof !11

35:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 357, i32 noundef 9, ptr noundef null) #6
  tail call void @media_request_object_unbind(ptr noundef %22) #6
  br label %36

36:                                               ; preds = %35, %31
  %37 = load ptr, ptr %22, align 4
  %38 = getelementptr inbounds %struct.media_request_object_ops, ptr %37, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  tail call void %39(ptr noundef %22) #6
  br label %40

40:                                               ; preds = %36, %30, %28
  %41 = icmp eq ptr %23, %17
  br i1 %41, label %42, label %20

42:                                               ; preds = %40, %16
  store i32 0, ptr %7, align 4
  store i32 0, ptr %12, align 4
  %43 = getelementptr inbounds %struct.media_request, ptr %0, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46, !prof !11

46:                                               ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 55, i32 noundef 9, ptr noundef null) #6
  br label %47

47:                                               ; preds = %46, %42
  store i32 0, ptr %43, align 4
  %48 = getelementptr inbounds %struct.media_request, ptr %0, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %48, i32 noundef 1, i32 noundef 0, ptr noundef null) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @media_request_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.poll_table_struct, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.media_request, ptr %4, i32 0, i32 8
  %13 = load ptr, ptr %1, align 4
  %14 = icmp ne ptr %13, null
  %15 = icmp ne ptr %12, null
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  tail call void %13(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %1) #6
  br label %18

18:                                               ; preds = %17, %11, %2
  %19 = getelementptr inbounds %struct.media_request, ptr %4, i32 0, i32 9
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #6
  %21 = getelementptr inbounds %struct.media_request, ptr %4, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 2
  %24 = select i1 %23, i32 0, i32 8
  %25 = icmp eq i32 %22, 3
  %26 = select i1 %25, i32 2, i32 %24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #6
  br label %27

27:                                               ; preds = %18, %6
  %28 = phi i32 [ %26, %18 ], [ 0, %6 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @media_request_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  switch i32 %1, label %88 [
    i32 31872, label %6
    i32 31873, label %74
  ]

6:                                                ; preds = %3
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr inbounds %struct.media_device, ptr %7, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %8) #6
  %9 = getelementptr inbounds %struct.media_request, ptr %5, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #6, !srcloc !9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #6, !srcloc !16
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !17

13:                                               ; preds = %6
  %14 = add i32 %11, 1
  %15 = or i32 %14, %11
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %19, label %17, !prof !11

17:                                               ; preds = %13, %6
  %18 = phi i32 [ 2, %6 ], [ 1, %13 ]
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef %18) #6
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.media_request, ptr %5, i32 0, i32 9
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #6
  %22 = getelementptr inbounds %struct.media_request, ptr %5, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, ptr %22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #6
  br label %45

26:                                               ; preds = %19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #6
  %27 = icmp eq i32 %23, 1
  br i1 %27, label %45, label %28

28:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #6, !srcloc !9
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #6, !srcloc !10
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = icmp sgt i32 %30, 0
  br i1 %33, label %44, label %34, !prof !11

34:                                               ; preds = %32
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 3) #6
  br label %44

35:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %36 = load ptr, ptr %5, align 4
  store i32 4, ptr %22, align 4
  tail call fastcc void @media_request_clean(ptr noundef %5) #6
  %37 = getelementptr inbounds %struct.media_device, ptr %36, i32 0, i32 21
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.media_device_ops, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  tail call void %40(ptr noundef %5) #6
  br label %44

43:                                               ; preds = %35
  tail call void @kfree(ptr noundef %5) #6
  br label %44

44:                                               ; preds = %43, %42, %34, %32
  tail call void @mutex_unlock(ptr noundef %8) #6
  br label %88

45:                                               ; preds = %26, %25
  %46 = getelementptr inbounds %struct.media_device, ptr %7, i32 0, i32 21
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.media_device_ops, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 %49(ptr noundef %5) #6
  %51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #6
  %52 = icmp eq i32 %50, 0
  %53 = select i1 %52, i32 2, i32 0
  store i32 %53, ptr %22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %51) #6
  br i1 %52, label %54, label %58

54:                                               ; preds = %45
  %55 = load ptr, ptr %46, align 8
  %56 = getelementptr inbounds %struct.media_device_ops, ptr %55, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  tail call void %57(ptr noundef %5) #6
  tail call void @mutex_unlock(ptr noundef %8) #6
  br label %88

58:                                               ; preds = %45
  tail call void @mutex_unlock(ptr noundef %8) #6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #6, !srcloc !9
  %59 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #6, !srcloc !10
  %60 = extractvalue { i32, i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = icmp sgt i32 %60, 0
  br i1 %63, label %88, label %64, !prof !11

64:                                               ; preds = %62
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 3) #6
  br label %88

65:                                               ; preds = %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %66 = load ptr, ptr %5, align 4
  store i32 4, ptr %22, align 4
  tail call fastcc void @media_request_clean(ptr noundef %5) #6
  %67 = getelementptr inbounds %struct.media_device, ptr %66, i32 0, i32 21
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.media_device_ops, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  tail call void %70(ptr noundef %5) #6
  br label %88

73:                                               ; preds = %65
  tail call void @kfree(ptr noundef %5) #6
  br label %88

74:                                               ; preds = %3
  %75 = getelementptr inbounds %struct.media_request, ptr %5, i32 0, i32 9
  %76 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %75) #6
  %77 = getelementptr inbounds %struct.media_request, ptr %5, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  switch i32 %78, label %85 [
    i32 0, label %79
    i32 3, label %79
  ]

79:                                               ; preds = %74, %74
  %80 = getelementptr inbounds %struct.media_request, ptr %5, i32 0, i32 5
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  store i32 4, ptr %77, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %75, i32 noundef %76) #6
  tail call fastcc void @media_request_clean(ptr noundef %5) #6
  %84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %75) #6
  store i32 0, ptr %77, align 4
  br label %85

85:                                               ; preds = %83, %79, %74
  %86 = phi i32 [ %84, %83 ], [ %76, %74 ], [ %76, %79 ]
  %87 = phi i32 [ 0, %83 ], [ -16, %74 ], [ -16, %79 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %75, i32 noundef %86) #6
  br label %88

88:                                               ; preds = %85, %73, %72, %64, %62, %54, %44, %3
  %89 = phi i32 [ %87, %85 ], [ -515, %3 ], [ -16, %44 ], [ 0, %54 ], [ %50, %62 ], [ %50, %64 ], [ %50, %72 ], [ %50, %73 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @media_request_close(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.media_request, ptr %4, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #6, !srcloc !9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #6, !srcloc !10
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %22, label %11, !prof !11

11:                                               ; preds = %9
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef 3) #6
  br label %22

12:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr %struct.media_request, ptr %4, i32 0, i32 3
  store i32 4, ptr %14, align 4
  tail call fastcc void @media_request_clean(ptr noundef %4) #6
  %15 = getelementptr inbounds %struct.media_device, ptr %13, i32 0, i32 21
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.media_device_ops, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  tail call void %18(ptr noundef %4) #6
  br label %22

21:                                               ; preds = %12
  tail call void @kfree(ptr noundef %4) #6
  br label %22

22:                                               ; preds = %21, %20, %11, %9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
!8 = !{i64 2147960712}
!9 = !{i64 283789, i64 2147785355, i64 2147785381, i64 2147785428, i64 2147785450, i64 2147785478, i64 2147785498}
!10 = !{i64 2147862871, i64 2147862903, i64 2147862932, i64 2147862966, i64 2147862997, i64 2147863020}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148312205}
!13 = !{!14}
!14 = distinct !{!14, !15, !"fdget: argument 0"}
!15 = distinct !{!15, !"fdget"}
!16 = !{i64 2147860514, i64 2147860546, i64 2147860575, i64 2147860609, i64 2147860640, i64 2147860663}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2147956878}
!19 = !{i64 2147859740, i64 2147859772, i64 2147859801, i64 2147859835, i64 2147859866, i64 2147859889}
!20 = !{i64 2147957081}
!21 = !{!"branch_weights", i32 2000, i32 4002, i32 2, i32 2000}
!22 = !{i8 0, i8 2}
