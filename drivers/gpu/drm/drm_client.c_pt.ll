; ModuleID = '/llk/IR/drivers/gpu/drm/drm_client.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_client.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_client_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_client_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_client_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_client_register:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_client_register\22\09\09\09\09\09"
module asm "__kstrtabns_drm_client_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_client_release:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_client_release\22\09\09\09\09\09"
module asm "__kstrtabns_drm_client_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_client_dev_hotplug:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_client_dev_hotplug\22\09\09\09\09\09"
module asm "__kstrtabns_drm_client_dev_hotplug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_client_buffer_vmap:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_client_buffer_vmap\22\09\09\09\09\09"
module asm "__kstrtabns_drm_client_buffer_vmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_client_buffer_vunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_client_buffer_vunmap\22\09\09\09\09\09"
module asm "__kstrtabns_drm_client_buffer_vunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_client_framebuffer_create:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_client_framebuffer_create\22\09\09\09\09\09"
module asm "__kstrtabns_drm_client_framebuffer_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_client_framebuffer_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_client_framebuffer_delete\22\09\09\09\09\09"
module asm "__kstrtabns_drm_client_framebuffer_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_client_framebuffer_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_client_framebuffer_flush\22\09\09\09\09\09"
module asm "__kstrtabns_drm_client_framebuffer_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.73 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_client_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_client_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_client_buffer = type { ptr, i32, i32, ptr, %struct.dma_buf_map, ptr }
%struct.dma_buf_map = type { %union.anon.67, i8 }
%union.anon.67 = type { ptr }
%struct.drm_mode_fb_cmd = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.72, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.72 = type { [4 x i8] }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.drm_framebuffer_funcs = type { ptr, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__kstrtab_drm_client_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_client_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_client_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_client_init to i32), ptr @__kstrtab_drm_client_init, ptr @__kstrtabns_drm_client_init }, section "___ksymtab+drm_client_init", align 4
@__kstrtab_drm_client_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_client_register = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_client_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_client_register to i32), ptr @__kstrtab_drm_client_register, ptr @__kstrtabns_drm_client_register }, section "___ksymtab+drm_client_register", align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__kstrtab_drm_client_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_client_release = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_client_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_client_release to i32), ptr @__kstrtab_drm_client_release, ptr @__kstrtabns_drm_client_release }, section "___ksymtab+drm_client_release", align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%s: ret=%d\0A\00", align 1
@__kstrtab_drm_client_dev_hotplug = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_client_dev_hotplug = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_client_dev_hotplug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_client_dev_hotplug to i32), ptr @__kstrtab_drm_client_dev_hotplug, ptr @__kstrtabns_drm_client_dev_hotplug }, section "___ksymtab+drm_client_dev_hotplug", align 4
@__kstrtab_drm_client_buffer_vmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_client_buffer_vmap = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_client_buffer_vmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_client_buffer_vmap to i32), ptr @__kstrtab_drm_client_buffer_vmap, ptr @__kstrtabns_drm_client_buffer_vmap }, section "___ksymtab+drm_client_buffer_vmap", align 4
@__kstrtab_drm_client_buffer_vunmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_client_buffer_vunmap = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_client_buffer_vunmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_client_buffer_vunmap to i32), ptr @__kstrtab_drm_client_buffer_vunmap, ptr @__kstrtabns_drm_client_buffer_vunmap }, section "___ksymtab+drm_client_buffer_vunmap", align 4
@__kstrtab_drm_client_framebuffer_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_client_framebuffer_create = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_client_framebuffer_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_client_framebuffer_create to i32), ptr @__kstrtab_drm_client_framebuffer_create, ptr @__kstrtabns_drm_client_framebuffer_create }, section "___ksymtab+drm_client_framebuffer_create", align 4
@__kstrtab_drm_client_framebuffer_delete = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_client_framebuffer_delete = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_client_framebuffer_delete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_client_framebuffer_delete to i32), ptr @__kstrtab_drm_client_framebuffer_delete, ptr @__kstrtabns_drm_client_framebuffer_delete }, section "___ksymtab+drm_client_framebuffer_delete", align 4
@__kstrtab_drm_client_framebuffer_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_client_framebuffer_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_client_framebuffer_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_client_framebuffer_flush to i32), ptr @__kstrtab_drm_client_framebuffer_flush, ptr @__kstrtabns_drm_client_framebuffer_flush }, section "___ksymtab+drm_client_framebuffer_flush", align 4
@drm_client_debugfs_list = internal constant [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.4, ptr @drm_client_debugfs_internal_clients, i32 0, ptr null }], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"drivers/gpu/drm/drm_client.c\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"[drm] *ERROR* Error removing FB:%u (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"internal_clients\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_drm_client_buffer_vmap, ptr @__ksymtab_drm_client_buffer_vunmap, ptr @__ksymtab_drm_client_dev_hotplug, ptr @__ksymtab_drm_client_framebuffer_create, ptr @__ksymtab_drm_client_framebuffer_delete, ptr @__ksymtab_drm_client_framebuffer_flush, ptr @__ksymtab_drm_client_init, ptr @__ksymtab_drm_client_register, ptr @__ksymtab_drm_client_release], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_client_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %8, 2
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 15
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %48, label %18

18:                                               ; preds = %14
  %19 = icmp eq ptr %3, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %3, align 4
  %22 = tail call zeroext i1 @try_module_get(ptr noundef %21) #6
  br i1 %22, label %23, label %48

23:                                               ; preds = %20, %18
  store ptr %0, ptr %1, align 4
  %24 = getelementptr inbounds %struct.drm_client_dev, ptr %1, i32 0, i32 1
  store ptr %2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.drm_client_dev, ptr %1, i32 0, i32 3
  store ptr %3, ptr %25, align 4
  %26 = tail call i32 @drm_client_modeset_create(ptr noundef %1) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load ptr, ptr %1, align 4
  %30 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = tail call ptr @drm_file_alloc(ptr noundef %31) #6
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %42, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %35) #6
  %36 = getelementptr inbounds %struct.drm_file, ptr %32, i32 0, i32 12
  %37 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 19
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %36, ptr %39, align 4
  store ptr %38, ptr %36, align 4
  %40 = getelementptr inbounds %struct.drm_file, ptr %32, i32 0, i32 12, i32 1
  store ptr %37, ptr %40, align 4
  store volatile ptr %36, ptr %37, align 4
  tail call void @mutex_unlock(ptr noundef %35) #6
  %41 = getelementptr inbounds %struct.drm_client_dev, ptr %1, i32 0, i32 4
  store ptr %32, ptr %41, align 4
  tail call void @drm_dev_get(ptr noundef %0) #6
  br label %48

42:                                               ; preds = %28
  %43 = ptrtoint ptr %32 to i32
  tail call void @drm_client_modeset_free(ptr noundef %1) #6
  br label %44

44:                                               ; preds = %42, %23
  %45 = phi i32 [ %26, %23 ], [ %43, %42 ]
  br i1 %19, label %48, label %46

46:                                               ; preds = %44
  %47 = load ptr, ptr %3, align 4
  tail call void @module_put(ptr noundef %47) #6
  br label %48

48:                                               ; preds = %46, %44, %34, %20, %14, %4
  %49 = phi i32 [ 0, %34 ], [ -95, %14 ], [ -95, %4 ], [ -19, %20 ], [ %45, %46 ], [ %45, %44 ]
  ret i32 %49
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_client_modeset_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_client_modeset_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_client_register(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.drm_client_dev, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 21
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %4, ptr %7, align 4
  store ptr %6, ptr %4, align 4
  %8 = getelementptr inbounds %struct.drm_client_dev, ptr %0, i32 0, i32 2, i32 1
  store ptr %5, ptr %8, align 4
  store volatile ptr %4, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_client_release(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  %9 = getelementptr inbounds %struct.drm_client_dev, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %8, i32 noundef 4, ptr noundef nonnull @.str, ptr noundef %10) #6
  tail call void @drm_client_modeset_free(ptr noundef %0) #6
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %12) #6
  %13 = getelementptr inbounds %struct.drm_client_dev, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_file, ptr %14, i32 0, i32 12
  %16 = getelementptr inbounds %struct.drm_file, ptr %14, i32 0, i32 12, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  tail call void @mutex_unlock(ptr noundef %12) #6
  %20 = load ptr, ptr %13, align 4
  tail call void @drm_file_free(ptr noundef %20) #6
  tail call void @drm_dev_put(ptr noundef %2) #6
  %21 = getelementptr inbounds %struct.drm_client_dev, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %7
  %25 = load ptr, ptr %22, align 4
  tail call void @module_put(ptr noundef %25) #6
  br label %26

26:                                               ; preds = %24, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_client_dev_unregister(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %5, 2
  %9 = and i32 %8, %7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #6
  %13 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 21
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %34, label %16

16:                                               ; preds = %32, %11
  %17 = phi ptr [ %19, %32 ], [ %14, %11 ]
  %18 = getelementptr i8, ptr %17, i32 -8
  %19 = load ptr, ptr %17, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  store volatile ptr %19, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  %23 = getelementptr i8, ptr %17, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.drm_client_funcs, ptr %24, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void %28(ptr noundef %18) #6
  br label %32

31:                                               ; preds = %26, %16
  tail call void @drm_client_release(ptr noundef %18)
  tail call void @kfree(ptr noundef %18) #6
  br label %32

32:                                               ; preds = %31, %30
  %33 = icmp eq ptr %19, %13
  br i1 %33, label %34, label %16

34:                                               ; preds = %32, %11
  tail call void @mutex_unlock(ptr noundef %12) #6
  br label %35

35:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_client_dev_hotplug(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %5, 2
  %9 = and i32 %8, %7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #6
  %13 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 21
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %40, label %16

16:                                               ; preds = %11
  %17 = icmp eq ptr %0, null
  %18 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  br label %19

19:                                               ; preds = %37, %16
  %20 = phi ptr [ %14, %16 ], [ %38, %37 ]
  %21 = getelementptr i8, ptr %20, i32 -8
  %22 = getelementptr i8, ptr %20, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.drm_client_funcs, ptr %23, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = tail call i32 %27(ptr noundef %21) #6
  br i1 %17, label %33, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr %18, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi ptr [ %32, %31 ], [ null, %29 ]
  %35 = getelementptr i8, ptr %20, i32 -4
  %36 = load ptr, ptr %35, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %34, i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef %36, i32 noundef %30) #6
  br label %37

37:                                               ; preds = %33, %25, %19
  %38 = load ptr, ptr %20, align 4
  %39 = icmp eq ptr %38, %13
  br i1 %39, label %40, label %19

40:                                               ; preds = %37, %11
  tail call void @mutex_unlock(ptr noundef %12) #6
  br label %41

41:                                               ; preds = %40, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_client_dev_restore(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %5, 2
  %9 = and i32 %8, %7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %42, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #6
  %13 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 21
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %41, label %16

16:                                               ; preds = %11
  %17 = icmp eq ptr %0, null
  %18 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  br label %19

19:                                               ; preds = %38, %16
  %20 = phi ptr [ %14, %16 ], [ %39, %38 ]
  %21 = getelementptr i8, ptr %20, i32 -8
  %22 = getelementptr i8, ptr %20, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.drm_client_funcs, ptr %23, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = tail call i32 %27(ptr noundef %21) #6
  br i1 %17, label %33, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr %18, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi ptr [ %32, %31 ], [ null, %29 ]
  %35 = getelementptr i8, ptr %20, i32 -4
  %36 = load ptr, ptr %35, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %34, i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef %36, i32 noundef %30) #6
  %37 = icmp eq i32 %30, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %25, %19
  %39 = load ptr, ptr %20, align 4
  %40 = icmp eq ptr %39, %13
  br i1 %40, label %41, label %19

41:                                               ; preds = %38, %33, %11
  tail call void @mutex_unlock(ptr noundef %12) #6
  br label %42

42:                                               ; preds = %41, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_client_buffer_vmap(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_client_buffer, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.drm_client_buffer, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @drm_gem_vmap(ptr noundef %5, ptr noundef %3) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i64, ptr %3, align 4
  store i64 %9, ptr %1, align 4
  br label %10

10:                                               ; preds = %8, %2
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_vmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_client_buffer_vunmap(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_client_buffer, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.drm_client_buffer, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  tail call void @drm_gem_vunmap(ptr noundef %4, ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_client_framebuffer_create(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.drm_mode_fb_cmd, align 4
  %6 = alloca %struct.drm_mode_create_dumb, align 8
  %7 = tail call ptr @drm_format_info(i32 noundef %3) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #6
  %8 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i32 24, i1 false) #6
  %9 = load ptr, ptr %0, align 4
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 28) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #6
  br label %87

14:                                               ; preds = %4
  store ptr %0, ptr %11, align 8
  %15 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %6, i32 0, i32 1
  store i32 %1, ptr %15, align 4
  store i32 %2, ptr %6, align 8
  %16 = getelementptr inbounds %struct.drm_format_info, ptr %7, i32 0, i32 3
  %17 = load i8, ptr %16, align 2
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 3
  store i32 %19, ptr %8, align 8
  %20 = getelementptr inbounds %struct.drm_client_dev, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @drm_mode_create_dumb(ptr noundef %9, ptr noundef nonnull %6, ptr noundef %21) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %6, i32 0, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.drm_client_buffer, ptr %11, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %6, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.drm_client_buffer, ptr %11, i32 0, i32 2
  store i32 %29, ptr %30, align 8
  %31 = load ptr, ptr %20, align 4
  %32 = call ptr @drm_gem_object_lookup(ptr noundef %31, i32 noundef %26) #6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.drm_client_buffer, ptr %11, i32 0, i32 3
  store ptr %32, ptr %35, align 4
  br label %39

36:                                               ; preds = %24, %14
  %37 = phi i32 [ %22, %14 ], [ -2, %24 ]
  call fastcc void @drm_client_buffer_delete(ptr noundef nonnull %11) #6
  %38 = inttoptr i32 %37 to ptr
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi ptr [ %38, %36 ], [ %11, %34 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #6
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %87, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4
  %44 = call ptr @drm_format_info(i32 noundef %3) #6
  %45 = getelementptr inbounds %struct.drm_format_info, ptr %44, i32 0, i32 3
  %46 = load i8, ptr %45, align 2
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 3
  %49 = getelementptr inbounds %struct.drm_mode_fb_cmd, ptr %5, i32 0, i32 4
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.drm_format_info, ptr %44, i32 0, i32 1
  %51 = load i8, ptr %50, align 4
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds %struct.drm_mode_fb_cmd, ptr %5, i32 0, i32 5
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.drm_mode_fb_cmd, ptr %5, i32 0, i32 1
  store i32 %1, ptr %54, align 4
  %55 = getelementptr inbounds %struct.drm_mode_fb_cmd, ptr %5, i32 0, i32 2
  store i32 %2, ptr %55, align 4
  %56 = getelementptr inbounds %struct.drm_client_buffer, ptr %40, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.drm_mode_fb_cmd, ptr %5, i32 0, i32 6
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.drm_client_buffer, ptr %40, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.drm_mode_fb_cmd, ptr %5, i32 0, i32 3
  store i32 %60, ptr %61, align 4
  %62 = load ptr, ptr %43, align 4
  %63 = getelementptr inbounds %struct.drm_client_dev, ptr %43, i32 0, i32 4
  %64 = load ptr, ptr %63, align 4
  %65 = call i32 @drm_mode_addfb(ptr noundef %62, ptr noundef nonnull %5, ptr noundef %64) #6
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %42
  %68 = load ptr, ptr %43, align 4
  %69 = load ptr, ptr %40, align 4
  %70 = getelementptr inbounds %struct.drm_client_dev, ptr %69, i32 0, i32 4
  %71 = load ptr, ptr %70, align 4
  %72 = load i32, ptr %5, align 4
  %73 = call ptr @drm_framebuffer_lookup(ptr noundef %68, ptr noundef %71, i32 noundef %72) #6
  %74 = getelementptr inbounds %struct.drm_client_buffer, ptr %40, i32 0, i32 5
  store ptr %73, ptr %74, align 4
  %75 = icmp eq ptr %73, null
  br i1 %75, label %76, label %77, !prof !8

76:                                               ; preds = %67
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 387, i32 noundef 9, ptr noundef null) #6
  br label %84

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.drm_framebuffer, ptr %73, i32 0, i32 2
  call void @drm_mode_object_put(ptr noundef %78) #6
  %79 = load ptr, ptr %74, align 4
  %80 = getelementptr inbounds %struct.drm_framebuffer, ptr %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.drm_client_dev, ptr %43, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = call i32 @strscpy(ptr noundef %80, ptr noundef %82, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #6
  br label %87

84:                                               ; preds = %76, %42
  %85 = phi i32 [ %65, %42 ], [ -2, %76 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #6
  call fastcc void @drm_client_buffer_delete(ptr noundef %40)
  %86 = inttoptr i32 %85 to ptr
  br label %87

87:                                               ; preds = %84, %77, %39, %13
  %88 = phi ptr [ %86, %84 ], [ %40, %39 ], [ %40, %77 ], [ inttoptr (i32 -12 to ptr), %13 ]
  ret ptr %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drm_client_buffer_delete(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_client_buffer, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_client_buffer, ptr %0, i32 0, i32 4
  tail call void @drm_gem_vunmap(ptr noundef %5, ptr noundef %6) #6
  %7 = load ptr, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %7) #6, !srcloc !10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #6, !srcloc !11
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %17, label %15, !prof !12

15:                                               ; preds = %13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 3) #6
  br label %17

16:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  tail call void @drm_gem_object_free(ptr noundef nonnull %7) #6
  br label %17

17:                                               ; preds = %16, %15, %13, %1
  %18 = getelementptr inbounds %struct.drm_client_buffer, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.drm_client_dev, ptr %22, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @drm_mode_destroy_dumb(ptr noundef %3, i32 noundef %19, ptr noundef %24) #6
  br label %26

26:                                               ; preds = %21, %17
  tail call void @kfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_client_framebuffer_delete(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.drm_client_buffer, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_client_dev, ptr %8, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @drm_mode_rmfb(ptr noundef %9, i32 noundef %11, ptr noundef %13) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %7
  %17 = load ptr, ptr %0, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr inbounds %struct.drm_framebuffer, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.3, i32 noundef %23, i32 noundef %14) #8
  br label %24

24:                                               ; preds = %16, %7
  store ptr null, ptr %4, align 4
  br label %25

25:                                               ; preds = %24, %3
  tail call fastcc void @drm_client_buffer_delete(ptr noundef nonnull %0)
  br label %26

26:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_client_framebuffer_flush(ptr noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.drm_clip_rect, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.drm_client_buffer, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_framebuffer_funcs, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %41, label %15

15:                                               ; preds = %9
  %16 = icmp eq ptr %1, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %18 = load i32, ptr %1, align 4
  %19 = trunc i32 %18 to i16
  store i16 %19, ptr %3, align 8
  %20 = getelementptr inbounds %struct.drm_clip_rect, ptr %3, i32 0, i32 1
  %21 = getelementptr inbounds %struct.drm_rect, ptr %1, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = trunc i32 %22 to i16
  store i16 %23, ptr %20, align 2
  %24 = getelementptr inbounds %struct.drm_clip_rect, ptr %3, i32 0, i32 2
  %25 = getelementptr inbounds %struct.drm_rect, ptr %1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = trunc i32 %26 to i16
  store i16 %27, ptr %24, align 4
  %28 = getelementptr inbounds %struct.drm_clip_rect, ptr %3, i32 0, i32 3
  %29 = getelementptr inbounds %struct.drm_rect, ptr %1, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = trunc i32 %30 to i16
  store i16 %31, ptr %28, align 2
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr inbounds %struct.drm_client_dev, ptr %32, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 %13(ptr noundef nonnull %7, ptr noundef %34, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br label %41

36:                                               ; preds = %15
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr inbounds %struct.drm_client_dev, ptr %37, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 %13(ptr noundef nonnull %7, ptr noundef %39, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  br label %41

41:                                               ; preds = %36, %17, %9, %5, %2
  %42 = phi i32 [ %35, %17 ], [ %40, %36 ], [ 0, %9 ], [ 0, %5 ], [ 0, %2 ]
  ret i32 %42
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_client_debugfs_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @drm_client_debugfs_list, i32 noundef 1, ptr noundef %3, ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_file_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_file_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_create_dumb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_addfb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_framebuffer_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_destroy_dumb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_rmfb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_client_debugfs_internal_clients(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.drm_printer, align 4
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_minor, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  store ptr @__drm_printfn_seq_file, ptr %3, align 4, !alias.scope !14
  %9 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 1
  store ptr @__drm_puts_seq_file, ptr %9, align 4, !alias.scope !14
  %10 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 2
  store ptr %0, ptr %10, align 4, !alias.scope !14
  %11 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 3
  store ptr null, ptr %11, align 4, !alias.scope !14
  %12 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #6
  %13 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 21
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %22, label %16

16:                                               ; preds = %16, %2
  %17 = phi ptr [ %20, %16 ], [ %14, %2 ]
  %18 = getelementptr i8, ptr %17, i32 -4
  %19 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str, ptr noundef %19) #6
  %20 = load ptr, ptr %17, align 4
  %21 = icmp eq ptr %20, %13
  br i1 %21, label %22, label %16

22:                                               ; preds = %16, %2
  call void @mutex_unlock(ptr noundef %12) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

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
!9 = !{i64 2148218876}
!10 = !{i64 615834, i64 2148105805, i64 2148105831, i64 2148105878, i64 2148105900, i64 2148105928, i64 2148105948}
!11 = !{i64 2148121035, i64 2148121067, i64 2148121096, i64 2148121130, i64 2148121161, i64 2148121184}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149176533}
!14 = !{!15}
!15 = distinct !{!15, !16, !"drm_seq_file_printer: argument 0"}
!16 = distinct !{!16, !"drm_seq_file_printer"}
