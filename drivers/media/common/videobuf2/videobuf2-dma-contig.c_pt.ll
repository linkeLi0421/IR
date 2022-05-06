; ModuleID = '/llk/IR/drivers/media/common/videobuf2/videobuf2-dma-contig.c_pt.bc'
source_filename = "../drivers/media/common/videobuf2/videobuf2-dma-contig.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vb2_dma_contig_memops:\09\09\09\09\09"
module asm "\09.asciz \09\22vb2_dma_contig_memops\22\09\09\09\09\09"
module asm "__kstrtabns_vb2_dma_contig_memops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vb2_dma_contig_set_max_seg_size:\09\09\09\09\09"
module asm "\09.asciz \09\22vb2_dma_contig_set_max_seg_size\22\09\09\09\09\09"
module asm "__kstrtabns_vb2_dma_contig_set_max_seg_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.dma_buf_export_info = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.dma_buf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vb2_dc_buf = type { ptr, ptr, i32, ptr, i32, i32, i32, ptr, ptr, %struct.vb2_vmarea_handler, %struct.refcount_struct, ptr, ptr, ptr, i8 }
%struct.vb2_vmarea_handler = type { ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.frame_vector = type { i32, i32, i8, i8, [0 x ptr] }
%struct.sg_table = type { ptr, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.63, i32 }
%union.anon.63 = type { i32 }
%struct.dma_buf_map = type { %union.anon.61, i8 }
%union.anon.61 = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.vb2_dc_attachment = type { %struct.sg_table, i32 }
%struct.dma_buf_attachment = type { ptr, ptr, %struct.list_head, ptr, i32, i8, ptr, ptr, ptr }

@vb2_dma_contig_memops = dso_local constant %struct.vb2_mem_ops { ptr @vb2_dc_alloc, ptr @vb2_dc_put, ptr @vb2_dc_get_dmabuf, ptr @vb2_dc_get_userptr, ptr @vb2_dc_put_userptr, ptr @vb2_dc_prepare, ptr @vb2_dc_finish, ptr @vb2_dc_attach_dmabuf, ptr @vb2_dc_detach_dmabuf, ptr @vb2_dc_map_dmabuf, ptr @vb2_dc_unmap_dmabuf, ptr @vb2_dc_vaddr, ptr @vb2_dc_cookie, ptr @vb2_dc_num_users, ptr @vb2_dc_mmap }, align 4
@__kstrtab_vb2_dma_contig_memops = external dso_local constant [0 x i8], align 1
@__kstrtabns_vb2_dma_contig_memops = external dso_local constant [0 x i8], align 1
@__ksymtab_vb2_dma_contig_memops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vb2_dma_contig_memops to i32), ptr @__kstrtab_vb2_dma_contig_memops, ptr @__kstrtabns_vb2_dma_contig_memops }, section "___ksymtab_gpl+vb2_dma_contig_memops", align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to set max_seg_size: dma_parms is NULL\0A\00", align 1
@__kstrtab_vb2_dma_contig_set_max_seg_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_vb2_dma_contig_set_max_seg_size = external dso_local constant [0 x i8], align 1
@__ksymtab_vb2_dma_contig_set_max_seg_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vb2_dma_contig_set_max_seg_size to i32), ptr @__kstrtab_vb2_dma_contig_set_max_seg_size, ptr @__kstrtabns_vb2_dma_contig_set_max_seg_size }, section "___ksymtab_gpl+vb2_dma_contig_set_max_seg_size", align 4
@__UNIQUE_ID_description240 = internal constant [62 x i8] c"description=DMA-contig memory handling routines for videobuf2\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [39 x i8] c"author=Pawel Osciak <pawel@osciak.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns243 = internal constant [18 x i8] c"import_ns=DMA_BUF\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"drivers/media/common/videobuf2/videobuf2-dma-contig.c\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"dma alloc of size %lu failed\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"videobuf2_dma_contig\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@__const.vb2_dc_get_dmabuf.exp_info = private unnamed_addr constant %struct.dma_buf_export_info { ptr @.str.3, ptr @__this_module, ptr null, i32 0, i32 0, ptr null, ptr null }, align 4
@vb2_dc_dmabuf_ops = internal constant %struct.dma_buf_ops { i8 0, ptr @vb2_dc_dmabuf_ops_attach, ptr @vb2_dc_dmabuf_ops_detach, ptr null, ptr null, ptr @vb2_dc_dmabuf_ops_map, ptr @vb2_dc_dmabuf_ops_unmap, ptr @vb2_dc_dmabuf_ops_release, ptr @vb2_dc_dmabuf_ops_begin_cpu_access, ptr @vb2_dc_dmabuf_ops_end_cpu_access, ptr @vb2_dc_dmabuf_ops_mmap, ptr @vb2_dc_dmabuf_ops_vmap, ptr null }, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"\013failed to map scatterlist\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to alloc sg table\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"failed to get scatterlist from DMA API\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"\013failed to allocate sg table\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"\013failed to initialize sg table\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"\013contiguous mapping is too small %lu/%lu\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"\013failed to attach dmabuf\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"\013trying to pin a non attached buffer\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"\013dmabuf buffer is already pinned\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"\013Error getting dmabuf scatterlist\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"\013contiguous chunk is too small %lu/%lu\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"\013trying to unpin a not attached buffer\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"\013dmabuf buffer is already unpinned\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"\013No buffer to map\0A\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"\013Remapping memory failed, error: %d\0A\00", align 1
@vb2_common_vm_ops = external dso_local constant %struct.vm_operations_struct, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_import_ns243, ptr @__UNIQUE_ID_license242, ptr @__ksymtab_vb2_dma_contig_memops, ptr @__ksymtab_vb2_dma_contig_set_max_seg_size], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vb2_dc_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 238, i32 noundef 9, ptr noundef null) #8
  br label %62

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 68) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %62, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.vb2_queue, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.vb2_dc_buf, ptr %8, i32 0, i32 5
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.vb2_queue, ptr %11, i32 0, i32 19
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.vb2_dc_buf, ptr %8, i32 0, i32 6
  store i32 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.vb2_dc_buf, ptr %8, i32 0, i32 13
  store ptr %0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.vb2_queue, ptr %11, i32 0, i32 4
  %20 = load i16, ptr %19, align 4
  %21 = getelementptr inbounds %struct.vb2_dc_buf, ptr %8, i32 0, i32 14
  %22 = lshr i16 %20, 10
  %23 = trunc i16 %22 to i8
  %24 = and i8 %23, 1
  store i8 %24, ptr %21, align 8
  %25 = getelementptr inbounds %struct.vb2_dc_buf, ptr %8, i32 0, i32 2
  store i32 %2, ptr %25, align 8
  %26 = tail call ptr @get_device(ptr noundef nonnull %1) #8
  store ptr %26, ptr %8, align 8
  %27 = icmp eq i8 %24, 0
  %28 = load ptr, ptr %0, align 8
  br i1 %27, label %41, label %29

29:                                               ; preds = %10
  %30 = getelementptr inbounds %struct.vb2_queue, ptr %28, i32 0, i32 14
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, 3264
  %33 = tail call ptr @dma_alloc_noncontiguous(ptr noundef %26, i32 noundef %2, i32 noundef %16, i32 noundef %32, i32 noundef %13) #8
  %34 = getelementptr inbounds %struct.vb2_dc_buf, ptr %8, i32 0, i32 7
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %56, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr %33, align 4
  %38 = getelementptr inbounds %struct.scatterlist, ptr %37, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.vb2_dc_buf, ptr %8, i32 0, i32 4
  store i32 %39, ptr %40, align 8
  br label %57

41:                                               ; preds = %10
  %42 = getelementptr inbounds %struct.vb2_dc_buf, ptr %8, i32 0, i32 4
  %43 = getelementptr inbounds %struct.vb2_queue, ptr %28, i32 0, i32 14
  %44 = load i32, ptr %43, align 4
  %45 = or i32 %44, 3264
  %46 = tail call ptr @dma_alloc_attrs(ptr noundef %26, i32 noundef %2, ptr noundef %42, i32 noundef %45, i32 noundef %13) #8
  %47 = getelementptr inbounds %struct.vb2_dc_buf, ptr %8, i32 0, i32 3
  store ptr %46, ptr %47, align 4
  %48 = icmp eq ptr %46, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.vb2_queue, ptr %28, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.vb2_dc_buf, ptr %8, i32 0, i32 1
  store ptr %46, ptr %55, align 4
  br label %57

56:                                               ; preds = %41, %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, i32 noundef %2) #10
  tail call void @kfree(ptr noundef nonnull %8) #8
  br label %62

57:                                               ; preds = %54, %49, %36
  %58 = getelementptr inbounds %struct.vb2_dc_buf, ptr %8, i32 0, i32 10
  %59 = getelementptr inbounds %struct.vb2_dc_buf, ptr %8, i32 0, i32 9
  store ptr %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.vb2_dc_buf, ptr %8, i32 0, i32 9, i32 1
  store ptr @vb2_dc_put, ptr %60, align 8
  %61 = getelementptr inbounds %struct.vb2_dc_buf, ptr %8, i32 0, i32 9, i32 2
  store ptr %8, ptr %61, align 4
  store volatile i32 1, ptr %58, align 8
  br label %62

62:                                               ; preds = %57, %56, %6, %5
  %63 = phi ptr [ inttoptr (i32 -22 to ptr), %5 ], [ inttoptr (i32 -12 to ptr), %56 ], [ %8, %57 ], [ inttoptr (i32 -12 to ptr), %6 ]
  ret ptr %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_dc_put(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #8, !srcloc !10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #8, !srcloc !11
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %45, label %8, !prof !12

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #8
  br label %45

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %10 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 14
  %11 = load i8, ptr %10, align 4, !range !14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 4
  tail call void @dma_vunmap_noncontiguous(ptr noundef %18, ptr noundef nonnull %15) #8
  br label %19

19:                                               ; preds = %17, %13
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  tail call void @dma_free_noncontiguous(ptr noundef %20, i32 noundef %22, ptr noundef %24, i32 noundef %26) #8
  br label %43

27:                                               ; preds = %9
  %28 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 11
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  tail call void @sg_free_table(ptr noundef nonnull %29) #8
  %32 = load ptr, ptr %28, align 4
  tail call void @kfree(ptr noundef %32) #8
  br label %33

33:                                               ; preds = %31, %27
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  tail call void @dma_free_attrs(ptr noundef %34, i32 noundef %36, ptr noundef %38, i32 noundef %40, i32 noundef %42) #8
  br label %43

43:                                               ; preds = %33, %19
  %44 = load ptr, ptr %0, align 4
  tail call void @put_device(ptr noundef %44) #8
  tail call void @kfree(ptr noundef %0) #8
  br label %45

45:                                               ; preds = %43, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vb2_dc_get_dmabuf(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.dma_buf_export_info, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) @__const.vb2_dc_get_dmabuf.exp_info, i32 24, i1 false)
  %5 = getelementptr inbounds %struct.dma_buf_export_info, ptr %4, i32 0, i32 2
  store ptr @vb2_dc_dmabuf_ops, ptr %5, align 4
  %6 = getelementptr inbounds %struct.vb2_dc_buf, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dma_buf_export_info, ptr %4, i32 0, i32 3
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dma_buf_export_info, ptr %4, i32 0, i32 4
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dma_buf_export_info, ptr %4, i32 0, i32 6
  store ptr %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.vb2_dc_buf, ptr %1, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %43

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.vb2_dc_buf, ptr %1, i32 0, i32 14
  %16 = load i8, ptr %15, align 4, !range !14
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 12) #9
  %21 = icmp eq ptr %20, null
  %22 = load ptr, ptr %1, align 4
  br i1 %21, label %23, label %24

23:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.5) #10
  br label %37

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.vb2_dc_buf, ptr %1, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.vb2_dc_buf, ptr %1, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %6, align 4
  %30 = getelementptr inbounds %struct.vb2_dc_buf, ptr %1, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @dma_get_sgtable_attrs(ptr noundef %22, ptr noundef nonnull %20, ptr noundef %26, i32 noundef %28, i32 noundef %29, i32 noundef %31) #8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  store ptr %20, ptr %11, align 4
  br label %43

35:                                               ; preds = %24
  %36 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.6) #10
  tail call void @kfree(ptr noundef nonnull %20) #8
  br label %37

37:                                               ; preds = %35, %23
  store ptr null, ptr %11, align 4
  br label %42

38:                                               ; preds = %14
  %39 = getelementptr inbounds %struct.vb2_dc_buf, ptr %1, i32 0, i32 7
  %40 = load ptr, ptr %39, align 4
  store ptr %40, ptr %11, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43, !prof !8

42:                                               ; preds = %38, %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 523, i32 noundef 9, ptr noundef null) #8
  br label %57

43:                                               ; preds = %38, %34, %3
  %44 = call ptr @dma_buf_export(ptr noundef nonnull %4) #8
  %45 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %57, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.vb2_dc_buf, ptr %1, i32 0, i32 10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #8, !srcloc !10
  %48 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #8, !srcloc !15
  %49 = extractvalue { i32, i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51, !prof !8

51:                                               ; preds = %46
  %52 = add i32 %49, 1
  %53 = or i32 %52, %49
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %57, label %55, !prof !12

55:                                               ; preds = %51, %46
  %56 = phi i32 [ 2, %46 ], [ 1, %51 ]
  call void @refcount_warn_saturate(ptr noundef %47, i32 noundef %56) #8
  br label %57

57:                                               ; preds = %55, %51, %43, %42
  %58 = phi ptr [ null, %42 ], [ null, %43 ], [ %44, %51 ], [ %44, %55 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #8
  ret ptr %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vb2_dc_get_userptr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = or i32 %3, %2
  %6 = and i32 %5, 63
  %7 = icmp ne i32 %6, 0
  %8 = icmp eq i32 %3, 0
  %9 = or i1 %8, %7
  br i1 %9, label %137, label %10

10:                                               ; preds = %4
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 594, i32 noundef 9, ptr noundef null) #8
  br label %137

13:                                               ; preds = %10
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 68) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %137, label %17

17:                                               ; preds = %13
  store ptr %1, ptr %15, align 8
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.vb2_queue, ptr %18, i32 0, i32 19
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.vb2_dc_buf, ptr %15, i32 0, i32 6
  store i32 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.vb2_dc_buf, ptr %15, i32 0, i32 13
  store ptr %0, ptr %22, align 4
  %23 = and i32 %2, 4095
  %24 = tail call ptr @vb2_create_framevec(i32 noundef %2, i32 noundef %3) #8
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = ptrtoint ptr %24 to i32
  br label %134

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.vb2_dc_buf, ptr %15, i32 0, i32 8
  store ptr %24, ptr %29, align 8
  %30 = getelementptr inbounds %struct.frame_vector, ptr %24, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @frame_vector_to_pages(ptr noundef %24) #8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.frame_vector, ptr %24, i32 0, i32 3
  %36 = load i8, ptr %35, align 1, !range !14
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  tail call void @frame_vector_to_pfns(ptr noundef %24) #8
  br label %39

39:                                               ; preds = %38, %34
  %40 = getelementptr inbounds %struct.frame_vector, ptr %24, i32 0, i32 4
  %41 = icmp sgt i32 %31, 1
  %42 = load i32, ptr %40, align 4
  br i1 %41, label %46, label %53

43:                                               ; preds = %46
  %44 = add nuw nsw i32 %48, 1
  %45 = icmp eq i32 %44, %31
  br i1 %45, label %53, label %46

46:                                               ; preds = %43, %39
  %47 = phi i32 [ %49, %43 ], [ %42, %39 ]
  %48 = phi i32 [ %44, %43 ], [ 1, %39 ]
  %49 = add i32 %47, 1
  %50 = getelementptr i32, ptr %40, i32 %48
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %43, label %132

53:                                               ; preds = %43, %39
  %54 = shl i32 %42, 12
  %55 = tail call i32 @dma_map_resource(ptr noundef nonnull %1, i32 noundef %54, i32 noundef %3, i32 noundef %20, i32 noundef 0) #8
  %56 = getelementptr inbounds %struct.vb2_dc_buf, ptr %15, i32 0, i32 4
  store i32 %55, ptr %56, align 8
  %57 = icmp eq i32 %55, -1
  br i1 %57, label %132, label %126

58:                                               ; preds = %28
  %59 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %60 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 3520, i32 noundef 12) #9
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %132

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.frame_vector, ptr %24, i32 0, i32 3
  %66 = load i8, ptr %65, align 1, !range !14
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = tail call i32 @frame_vector_to_pages(ptr noundef %24) #8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = inttoptr i32 %69 to ptr
  br label %75

73:                                               ; preds = %68, %64
  %74 = getelementptr inbounds %struct.frame_vector, ptr %24, i32 0, i32 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi ptr [ %72, %71 ], [ %74, %73 ]
  %77 = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef nonnull %60, ptr noundef %76, i32 noundef %31, i32 noundef %23, i32 noundef %3, i32 noundef -1, i32 noundef 3264) #8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %130

81:                                               ; preds = %75
  %82 = tail call i32 @dma_map_sgtable(ptr noundef nonnull %1, ptr noundef nonnull %60, i32 noundef %20, i32 noundef 32) #8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %128

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.sg_table, ptr %60, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %111, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %60, align 8
  %92 = getelementptr inbounds %struct.scatterlist, ptr %91, i32 0, i32 3
  %93 = load i32, ptr %92, align 4
  br label %94

94:                                               ; preds = %106, %90
  %95 = phi ptr [ %91, %90 ], [ %103, %106 ]
  %96 = phi i32 [ 0, %90 ], [ %102, %106 ]
  %97 = phi i32 [ 0, %90 ], [ %101, %106 ]
  %98 = phi i32 [ %93, %90 ], [ %107, %106 ]
  %99 = getelementptr inbounds %struct.scatterlist, ptr %95, i32 0, i32 4
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, %97
  %102 = add nuw i32 %96, 1
  %103 = tail call ptr @sg_next(ptr noundef %95) #8
  %104 = load i32, ptr %87, align 4
  %105 = icmp ult i32 %102, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %94
  %107 = add i32 %100, %98
  %108 = getelementptr inbounds %struct.scatterlist, ptr %103, i32 0, i32 3
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, %107
  br i1 %110, label %94, label %111

111:                                              ; preds = %106, %94, %86
  %112 = phi i32 [ 0, %86 ], [ %101, %94 ], [ %101, %106 ]
  %113 = icmp ult i32 %112, %3
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %112, i32 noundef %3) #10
  %116 = load ptr, ptr %60, align 8
  %117 = getelementptr inbounds %struct.sg_table, ptr %60, i32 0, i32 2
  %118 = load i32, ptr %117, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef nonnull %1, ptr noundef %116, i32 noundef %118, i32 noundef %20, i32 noundef 32) #8
  br label %128

119:                                              ; preds = %111
  %120 = load ptr, ptr %60, align 8
  %121 = getelementptr inbounds %struct.scatterlist, ptr %120, i32 0, i32 3
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr inbounds %struct.vb2_dc_buf, ptr %15, i32 0, i32 4
  store i32 %122, ptr %123, align 8
  %124 = getelementptr inbounds %struct.vb2_dc_buf, ptr %15, i32 0, i32 7
  store ptr %60, ptr %124, align 4
  %125 = getelementptr inbounds %struct.vb2_dc_buf, ptr %15, i32 0, i32 14
  store i8 1, ptr %125, align 8
  br label %126

126:                                              ; preds = %119, %53
  %127 = getelementptr inbounds %struct.vb2_dc_buf, ptr %15, i32 0, i32 2
  store i32 %3, ptr %127, align 8
  br label %137

128:                                              ; preds = %114, %84
  %129 = phi i32 [ -5, %84 ], [ -14, %114 ]
  tail call void @sg_free_table(ptr noundef nonnull %60) #8
  br label %130

130:                                              ; preds = %128, %79
  %131 = phi i32 [ %77, %79 ], [ %129, %128 ]
  tail call void @kfree(ptr noundef nonnull %60) #8
  br label %132

132:                                              ; preds = %130, %62, %53, %46
  %133 = phi i32 [ -12, %53 ], [ %131, %130 ], [ -12, %62 ], [ %32, %46 ]
  tail call void @vb2_destroy_framevec(ptr noundef %24) #8
  br label %134

134:                                              ; preds = %132, %26
  %135 = phi i32 [ %27, %26 ], [ %133, %132 ]
  tail call void @kfree(ptr noundef nonnull %15) #8
  %136 = inttoptr i32 %135 to ptr
  br label %137

137:                                              ; preds = %134, %126, %13, %12, %4
  %138 = phi ptr [ inttoptr (i32 -22 to ptr), %12 ], [ %136, %134 ], [ %15, %126 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -12 to ptr), %13 ]
  ret ptr %138
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_dc_put_userptr(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = load ptr, ptr %0, align 4
  br i1 %4, label %46, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.sg_table, ptr %3, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %5, ptr noundef %9, i32 noundef %11, i32 noundef %8, i32 noundef 32) #8
  %12 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.frame_vector, ptr %13, i32 0, i32 3
  %15 = load i8, ptr %14, align 1, !range !14
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %6
  %18 = tail call i32 @frame_vector_to_pages(ptr noundef %13) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = inttoptr i32 %18 to ptr
  br label %24

22:                                               ; preds = %17, %6
  %23 = getelementptr inbounds %struct.frame_vector, ptr %13, i32 0, i32 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi ptr [ %21, %20 ], [ %23, %22 ]
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %28, !prof !8

27:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/common/videobuf2/videobuf2-dma-contig.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 556, 0\0A.popsection", ""() #8, !srcloc !16
  unreachable

28:                                               ; preds = %24
  %29 = load i32, ptr %7, align 4
  switch i32 %29, label %45 [
    i32 2, label %30
    i32 0, label %30
  ]

30:                                               ; preds = %28, %28
  %31 = load ptr, ptr %12, align 4
  %32 = getelementptr inbounds %struct.frame_vector, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %35, %30
  %36 = phi i32 [ %40, %35 ], [ 0, %30 ]
  %37 = getelementptr ptr, ptr %25, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @set_page_dirty_lock(ptr noundef %38) #8
  %40 = add nuw i32 %36, 1
  %41 = load ptr, ptr %12, align 4
  %42 = getelementptr inbounds %struct.frame_vector, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %35, label %45

45:                                               ; preds = %35, %30, %28
  tail call void @sg_free_table(ptr noundef nonnull %3) #8
  tail call void @kfree(ptr noundef nonnull %3) #8
  br label %53

46:                                               ; preds = %1
  %47 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 6
  %52 = load i32, ptr %51, align 4
  tail call void @dma_unmap_resource(ptr noundef %5, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef 0) #8
  br label %53

53:                                               ; preds = %46, %45
  %54 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  tail call void @vb2_destroy_framevec(ptr noundef %55) #8
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_dc_prepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vb2_buffer, ptr %5, i32 0, i32 9
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 14
  %12 = load i8, ptr %11, align 4, !range !14
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.sg_table, ptr %3, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %15, ptr noundef %18, i32 noundef %20, i32 noundef %17) #8
  br label %21

21:                                               ; preds = %14, %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_dc_finish(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vb2_buffer, ptr %5, i32 0, i32 9
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 14
  %12 = load i8, ptr %11, align 4, !range !14
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.sg_table, ptr %3, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %15, ptr noundef %18, i32 noundef %20, i32 noundef %17) #8
  br label %21

21:                                               ; preds = %14, %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vb2_dc_attach_dmabuf(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load i32, ptr %2, align 4
  %6 = icmp ult i32 %5, %3
  br i1 %6, label %27, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 784, i32 noundef 9, ptr noundef null) #8
  br label %27

10:                                               ; preds = %7
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 68) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  store ptr %1, ptr %12, align 8
  %15 = getelementptr inbounds %struct.vb2_dc_buf, ptr %12, i32 0, i32 13
  store ptr %0, ptr %15, align 4
  %16 = tail call ptr @dma_buf_attach(ptr noundef %2, ptr noundef nonnull %1) #8
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  tail call void @kfree(ptr noundef nonnull %12) #8
  br label %27

20:                                               ; preds = %14
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds %struct.vb2_queue, ptr %21, i32 0, i32 19
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.vb2_dc_buf, ptr %12, i32 0, i32 6
  store i32 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.vb2_dc_buf, ptr %12, i32 0, i32 2
  store i32 %3, ptr %25, align 8
  %26 = getelementptr inbounds %struct.vb2_dc_buf, ptr %12, i32 0, i32 12
  store ptr %16, ptr %26, align 8
  br label %27

27:                                               ; preds = %20, %18, %10, %9, %4
  %28 = phi ptr [ inttoptr (i32 -22 to ptr), %9 ], [ %16, %18 ], [ %12, %20 ], [ inttoptr (i32 -14 to ptr), %4 ], [ inttoptr (i32 -12 to ptr), %10 ]
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_dc_detach_dmabuf(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !12

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 767, i32 noundef 9, ptr noundef null) #8
  tail call void @vb2_dc_unmap_dmabuf(ptr noundef %0)
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  tail call void @dma_buf_detach(ptr noundef %9, ptr noundef %8) #8
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vb2_dc_map_dmabuf(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 703, i32 noundef 9, ptr noundef null) #8
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  br label %60

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !12

11:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 708, i32 noundef 9, ptr noundef null) #8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %60

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @dma_buf_map_attachment(ptr noundef nonnull %3, i32 noundef %15) #8
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  br label %60

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.sg_table, ptr %16, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %16, align 4
  %26 = getelementptr inbounds %struct.scatterlist, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %40, %24
  %29 = phi ptr [ %25, %24 ], [ %37, %40 ]
  %30 = phi i32 [ 0, %24 ], [ %36, %40 ]
  %31 = phi i32 [ 0, %24 ], [ %35, %40 ]
  %32 = phi i32 [ %27, %24 ], [ %41, %40 ]
  %33 = getelementptr inbounds %struct.scatterlist, ptr %29, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %31
  %36 = add nuw i32 %30, 1
  %37 = tail call ptr @sg_next(ptr noundef %29) #8
  %38 = load i32, ptr %21, align 4
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = add i32 %34, %32
  %42 = getelementptr inbounds %struct.scatterlist, ptr %37, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, %41
  br i1 %44, label %28, label %45

45:                                               ; preds = %40, %28, %20
  %46 = phi i32 [ 0, %20 ], [ %35, %28 ], [ %35, %40 ]
  %47 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %46, i32 noundef %48) #10
  %52 = load ptr, ptr %2, align 4
  %53 = load i32, ptr %14, align 4
  tail call void @dma_buf_unmap_attachment(ptr noundef %52, ptr noundef %16, i32 noundef %53) #8
  br label %60

54:                                               ; preds = %45
  %55 = load ptr, ptr %16, align 4
  %56 = getelementptr inbounds %struct.scatterlist, ptr %55, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 4
  store i32 %57, ptr %58, align 4
  store ptr %16, ptr %8, align 4
  %59 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 1
  store ptr null, ptr %59, align 4
  br label %60

60:                                               ; preds = %54, %50, %18, %11, %5
  %61 = phi i32 [ -22, %5 ], [ 0, %11 ], [ -22, %18 ], [ -14, %50 ], [ 0, %54 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_dc_unmap_dmabuf(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.dma_buf_map, align 8
  %3 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8, !annotation !17
  %5 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  store ptr %6, ptr %2, align 8
  %7 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12, !prof !8

10:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 742, i32 noundef 9, ptr noundef null) #8
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %26

12:                                               ; preds = %1
  %13 = icmp eq ptr %4, null
  br i1 %13, label %14, label %16, !prof !8

14:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 747, i32 noundef 9, ptr noundef null) #8
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  br label %26

16:                                               ; preds = %12
  %17 = icmp eq ptr %6, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %8, align 4
  call void @dma_buf_vunmap(ptr noundef %19, ptr noundef nonnull %2) #8
  store ptr null, ptr %5, align 4
  %20 = load ptr, ptr %7, align 4
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi ptr [ %20, %18 ], [ %8, %16 ]
  %23 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  call void @dma_buf_unmap_attachment(ptr noundef %22, ptr noundef nonnull %4, i32 noundef %24) #8
  %25 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 4
  store i32 0, ptr %25, align 4
  store ptr null, ptr %3, align 4
  br label %26

26:                                               ; preds = %21, %14, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vb2_dc_vaddr(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.dma_buf_map, align 8
  %4 = getelementptr inbounds %struct.vb2_dc_buf, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.vb2_dc_buf, ptr %1, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store i64 0, ptr %3, align 8, !annotation !17
  %12 = load ptr, ptr %9, align 4
  %13 = call i32 @dma_buf_vmap(ptr noundef %12, ptr noundef nonnull %3) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %4, align 4
  br label %19

17:                                               ; preds = %11
  %18 = load ptr, ptr %3, align 8
  store ptr %18, ptr %4, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %16, %15 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  br label %32

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.vb2_dc_buf, ptr %1, i32 0, i32 14
  %23 = load i8, ptr %22, align 4, !range !14
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %1, align 4
  %27 = getelementptr inbounds %struct.vb2_dc_buf, ptr %1, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.vb2_dc_buf, ptr %1, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = tail call ptr @dma_vmap_noncontiguous(ptr noundef %26, i32 noundef %28, ptr noundef %30) #8
  store ptr %31, ptr %4, align 4
  br label %32

32:                                               ; preds = %25, %21, %19, %2
  %33 = phi ptr [ %20, %19 ], [ %5, %2 ], [ %31, %25 ], [ null, %21 ]
  ret ptr %33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @vb2_dc_cookie(ptr nocapture noundef readnone %0, ptr noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.vb2_dc_buf, ptr %1, i32 0, i32 4
  ret ptr %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @vb2_dc_num_users(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 10
  %3 = load volatile i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vb2_dc_mmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  br label %40

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 14
  %8 = load i8, ptr %7, align 4, !range !14
  %9 = icmp eq i8 %8, 0
  %10 = load ptr, ptr %0, align 4
  br i1 %9, label %17, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @dma_mmap_noncontiguous(ptr noundef %10, ptr noundef %1, i32 noundef %13, ptr noundef %15) #8
  br label %27

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @dma_mmap_attrs(ptr noundef %10, ptr noundef %1, ptr noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25) #8
  br label %27

27:                                               ; preds = %17, %11
  %28 = phi i32 [ %16, %11 ], [ %26, %17 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %28) #10
  br label %40

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, 67371008
  store i32 %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.vb2_dc_buf, ptr %0, i32 0, i32 9
  %37 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr @vb2_common_vm_ops, ptr %38, align 4
  %39 = load ptr, ptr @vb2_common_vm_ops, align 4
  tail call void %39(ptr noundef %1) #8
  br label %40

40:                                               ; preds = %32, %30, %4
  %41 = phi i32 [ %28, %30 ], [ 0, %32 ], [ -22, %4 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str) #10
  br label %13

7:                                                ; preds = %2
  %8 = load i32, ptr %4, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 65536, i32 %8
  %11 = icmp ult i32 %10, %1
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 %1, ptr %4, align 4
  br label %13

13:                                               ; preds = %12, %7, %6
  %14 = phi i32 [ 0, %12 ], [ -19, %6 ], [ 0, %7 ]
  ret i32 %14
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_noncontiguous(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_vunmap_noncontiguous(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_noncontiguous(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_export(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vb2_dc_dmabuf_ops_attach(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 16) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.vb2_dc_buf, ptr %4, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sg_table, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @sg_alloc_table(ptr noundef nonnull %6, i32 noundef %12, i32 noundef 3264) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #8
  br label %47

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.sg_table, ptr %6, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %6, align 8
  %22 = load ptr, ptr %9, align 4
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %24, %20
  %25 = phi ptr [ %40, %24 ], [ %21, %20 ]
  %26 = phi ptr [ %39, %24 ], [ %23, %20 ]
  %27 = phi i32 [ %41, %24 ], [ 0, %20 ]
  %28 = load i32, ptr %26, align 4
  %29 = and i32 %28, -4
  %30 = getelementptr inbounds %struct.scatterlist, ptr %26, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.scatterlist, ptr %26, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %25, align 4
  %35 = and i32 %34, 3
  %36 = or i32 %35, %29
  store i32 %36, ptr %25, align 4
  %37 = getelementptr inbounds %struct.scatterlist, ptr %25, i32 0, i32 1
  store i32 %33, ptr %37, align 4
  %38 = getelementptr inbounds %struct.scatterlist, ptr %25, i32 0, i32 2
  store i32 %31, ptr %38, align 4
  %39 = tail call ptr @sg_next(ptr noundef %26) #8
  %40 = tail call ptr @sg_next(ptr noundef %25) #8
  %41 = add nuw i32 %27, 1
  %42 = load i32, ptr %17, align 8
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %24, label %44

44:                                               ; preds = %24, %16
  %45 = getelementptr inbounds %struct.vb2_dc_attachment, ptr %6, i32 0, i32 1
  store i32 3, ptr %45, align 4
  %46 = getelementptr inbounds %struct.dma_buf_attachment, ptr %1, i32 0, i32 8
  store ptr %6, ptr %46, align 4
  br label %47

47:                                               ; preds = %44, %15, %2
  %48 = phi i32 [ -12, %15 ], [ 0, %44 ], [ -12, %2 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_dc_dmabuf_ops_detach(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf_attachment, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vb2_dc_attachment, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dma_buf_attachment, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.sg_table, ptr %4, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %12, ptr noundef %13, i32 noundef %15, i32 noundef %8, i32 noundef 32) #8
  br label %16

16:                                               ; preds = %10, %6
  tail call void @sg_free_table(ptr noundef nonnull %4) #8
  tail call void @kfree(ptr noundef nonnull %4) #8
  store ptr null, ptr %3, align 4
  br label %17

17:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vb2_dc_dmabuf_ops_map(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf_attachment, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.dma_buf, ptr %5, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.vb2_dc_attachment, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  %11 = icmp eq i32 %8, 3
  br i1 %11, label %18, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.dma_buf_attachment, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.sg_table, ptr %4, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %14, ptr noundef %15, i32 noundef %17, i32 noundef %8, i32 noundef 32) #8
  store i32 3, ptr %7, align 4
  br label %18

18:                                               ; preds = %12, %10
  %19 = getelementptr inbounds %struct.dma_buf_attachment, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @dma_map_sgtable(ptr noundef %20, ptr noundef %4, i32 noundef %1, i32 noundef 32) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %26

25:                                               ; preds = %18
  store i32 %1, ptr %7, align 4
  br label %26

26:                                               ; preds = %25, %23, %2
  %27 = phi ptr [ inttoptr (i32 -5 to ptr), %23 ], [ %4, %25 ], [ %4, %2 ]
  tail call void @mutex_unlock(ptr noundef %6) #8
  ret ptr %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @vb2_dc_dmabuf_ops_unmap(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) #1 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_dc_dmabuf_ops_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  tail call void @vb2_dc_put(ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @vb2_dc_dmabuf_ops_begin_cpu_access(ptr nocapture noundef readnone %0, i32 noundef %1) #1 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @vb2_dc_dmabuf_ops_end_cpu_access(ptr nocapture noundef readnone %0, i32 noundef %1) #1 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vb2_dc_dmabuf_ops_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @vb2_dc_mmap(ptr noundef %4, ptr noundef %1)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vb2_dc_dmabuf_ops_vmap(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.dma_buf_map, align 8
  %4 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vb2_dc_buf, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %37

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.vb2_dc_buf, ptr %5, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store i64 0, ptr %3, align 8, !annotation !17
  %14 = load ptr, ptr %11, align 4
  %15 = call i32 @dma_buf_vmap(ptr noundef %14, ptr noundef nonnull %3) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %6, align 4
  br label %21

19:                                               ; preds = %13
  %20 = load ptr, ptr %3, align 8
  store ptr %20, ptr %6, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  br label %34

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.vb2_dc_buf, ptr %5, i32 0, i32 14
  %25 = load i8, ptr %24, align 4, !range !14
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr inbounds %struct.vb2_dc_buf, ptr %5, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.vb2_dc_buf, ptr %5, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = tail call ptr @dma_vmap_noncontiguous(ptr noundef %28, i32 noundef %30, ptr noundef %32) #8
  store ptr %33, ptr %6, align 4
  br label %34

34:                                               ; preds = %27, %21
  %35 = phi ptr [ %22, %21 ], [ %33, %27 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34, %2
  %38 = phi ptr [ %35, %34 ], [ %7, %2 ]
  store ptr %38, ptr %1, align 4
  %39 = getelementptr inbounds %struct.dma_buf_map, ptr %1, i32 0, i32 1
  store i8 0, ptr %39, align 4
  br label %40

40:                                               ; preds = %37, %34, %23
  %41 = phi i32 [ 0, %37 ], [ -22, %34 ], [ -22, %23 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_sgtable_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_create_framevec(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @frame_vector_to_pages(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_destroy_framevec(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @frame_vector_to_pfns(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_attach(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_detach(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_map_attachment(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_unmap_attachment(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_buf_vmap(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_vmap_noncontiguous(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_noncontiguous(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2148247805}
!10 = !{i64 644763, i64 2148134734, i64 2148134760, i64 2148134807, i64 2148134829, i64 2148134857, i64 2148134877}
!11 = !{i64 2148149964, i64 2148149996, i64 2148150025, i64 2148150059, i64 2148150090, i64 2148150113}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149589680}
!14 = !{i8 0, i8 2}
!15 = !{i64 2148147607, i64 2148147639, i64 2148147668, i64 2148147702, i64 2148147733, i64 2148147756}
!16 = !{i64 2153272566, i64 2153273084, i64 2153272603, i64 2153272659, i64 2153272693, i64 2153272717, i64 2153272758, i64 2153272779, i64 2153272807, i64 2153272841}
!17 = !{!"auto-init"}
