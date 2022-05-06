; ModuleID = '/llk/IR/drivers/media/common/videobuf2/videobuf2-dma-sg.c_pt.bc'
source_filename = "../drivers/media/common/videobuf2/videobuf2-dma-sg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vb2_dma_sg_memops:\09\09\09\09\09"
module asm "\09.asciz \09\22vb2_dma_sg_memops\22\09\09\09\09\09"
module asm "__kstrtabns_vb2_dma_sg_memops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dma_buf_export_info = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.dma_buf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_dma_sg_buf = type { ptr, ptr, ptr, ptr, i32, i32, %struct.sg_table, ptr, i32, i32, %struct.refcount_struct, %struct.vb2_vmarea_handler, ptr, ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.vb2_vmarea_handler = type { ptr, ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }
%struct.frame_vector = type { i32, i32, i8, i8, [0 x ptr] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.67, i32 }
%union.anon.67 = type { i32 }
%struct.dma_buf_map = type { %union.anon.65, i8 }
%union.anon.65 = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.vb2_dma_sg_attachment = type { %struct.sg_table, i32 }
%struct.dma_buf_attachment = type { ptr, ptr, %struct.list_head, ptr, i32, i8, ptr, ptr, ptr }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.60 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype228 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@vb2_dma_sg_memops = dso_local constant %struct.vb2_mem_ops { ptr @vb2_dma_sg_alloc, ptr @vb2_dma_sg_put, ptr @vb2_dma_sg_get_dmabuf, ptr @vb2_dma_sg_get_userptr, ptr @vb2_dma_sg_put_userptr, ptr @vb2_dma_sg_prepare, ptr @vb2_dma_sg_finish, ptr @vb2_dma_sg_attach_dmabuf, ptr @vb2_dma_sg_detach_dmabuf, ptr @vb2_dma_sg_map_dmabuf, ptr @vb2_dma_sg_unmap_dmabuf, ptr @vb2_dma_sg_vaddr, ptr @vb2_dma_sg_cookie, ptr @vb2_dma_sg_num_users, ptr @vb2_dma_sg_mmap }, align 4
@__kstrtab_vb2_dma_sg_memops = external dso_local constant [0 x i8], align 1
@__kstrtabns_vb2_dma_sg_memops = external dso_local constant [0 x i8], align 1
@__ksymtab_vb2_dma_sg_memops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vb2_dma_sg_memops to i32), ptr @__kstrtab_vb2_dma_sg_memops, ptr @__kstrtabns_vb2_dma_sg_memops }, section "___ksymtab_gpl+vb2_dma_sg_memops", align 4
@__UNIQUE_ID_description229 = internal constant [70 x i8] c"description=dma scatter/gather memory handling routines for videobuf2\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [29 x i8] c"author=Andrzej Pietrasiewicz\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns232 = internal constant [18 x i8] c"import_ns=DMA_BUF\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [50 x i8] c"drivers/media/common/videobuf2/videobuf2-dma-sg.c\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"\017vb2-dma-sg: %s: Allocated buffer of %d pages\0A\00", align 1
@__func__.vb2_dma_sg_alloc = private unnamed_addr constant [17 x i8] c"vb2_dma_sg_alloc\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"\017vb2-dma-sg: %s: Freeing buffer of %d pages\0A\00", align 1
@__func__.vb2_dma_sg_put = private unnamed_addr constant [15 x i8] c"vb2_dma_sg_put\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"videobuf2_dma_sg\00", align 1
@__const.vb2_dma_sg_get_dmabuf.exp_info = private unnamed_addr constant %struct.dma_buf_export_info { ptr @.str.3, ptr @__this_module, ptr null, i32 0, i32 0, ptr null, ptr null }, align 4
@vb2_dma_sg_dmabuf_ops = internal constant %struct.dma_buf_ops { i8 0, ptr @vb2_dma_sg_dmabuf_ops_attach, ptr @vb2_dma_sg_dmabuf_ops_detach, ptr null, ptr null, ptr @vb2_dma_sg_dmabuf_ops_map, ptr @vb2_dma_sg_dmabuf_ops_unmap, ptr @vb2_dma_sg_dmabuf_ops_release, ptr @vb2_dma_sg_dmabuf_ops_begin_cpu_access, ptr @vb2_dma_sg_dmabuf_ops_end_cpu_access, ptr @vb2_dma_sg_dmabuf_ops_mmap, ptr @vb2_dma_sg_dmabuf_ops_vmap, ptr null }, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"\013failed to map scatterlist\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"\017vb2-dma-sg: %s: Releasing userspace buffer of %d pages\0A\00", align 1
@__func__.vb2_dma_sg_put_userptr = private unnamed_addr constant [23 x i8] c"vb2_dma_sg_put_userptr\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"\013failed to attach dmabuf\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"\013trying to pin a non attached buffer\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"\013dmabuf buffer is already pinned\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"\013Error getting dmabuf scatterlist\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"\013trying to unpin a not attached buffer\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"\013dmabuf buffer is already unpinned\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"\013No memory to map\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"\013Remapping memory, error: %d\0A\00", align 1
@vb2_common_vm_ops = external dso_local constant %struct.vm_operations_struct, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_debugtype228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_import_ns232, ptr @__UNIQUE_ID_license231, ptr @__ksymtab_vb2_dma_sg_memops, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vb2_dma_sg_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 9, ptr noundef null) #12
  br label %128

6:                                                ; preds = %3
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 9, ptr noundef null) #12
  br label %128

9:                                                ; preds = %6
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 72) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %128, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %11, i32 0, i32 1
  store ptr null, ptr %14, align 4
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.vb2_queue, ptr %15, i32 0, i32 19
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %11, i32 0, i32 5
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %11, i32 0, i32 4
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %11, i32 0, i32 8
  store i32 %2, ptr %20, align 8
  %21 = lshr i32 %2, 12
  %22 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %11, i32 0, i32 9
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %11, i32 0, i32 6
  %24 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %11, i32 0, i32 7
  store ptr %23, ptr %24, align 4
  %25 = shl nuw nsw i32 %21, 2
  %26 = tail call noalias ptr @kvmalloc_node(i32 noundef %25, i32 noundef 3520, i32 noundef -1) #14
  %27 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %11, i32 0, i32 2
  store ptr %26, ptr %27, align 8
  %28 = icmp eq ptr %26, null
  br i1 %28, label %127, label %29

29:                                               ; preds = %13
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr inbounds %struct.vb2_queue, ptr %30, i32 0, i32 14
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %20, align 8
  %34 = or i32 %32, 11712
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %90, label %36

36:                                               ; preds = %83, %29
  %37 = phi i32 [ %86, %83 ], [ %33, %29 ]
  %38 = phi i32 [ %84, %83 ], [ 0, %29 ]
  %39 = add i32 %37, -1
  %40 = icmp ult i32 %39, 4096
  %41 = lshr i32 %39, 12
  %42 = tail call i32 @llvm.ctlz.i32(i32 %41, i1 false) #12, !range !9
  %43 = sub nuw nsw i32 32, %42
  %44 = select i1 %40, i32 0, i32 %43
  %45 = shl i32 4096, %44
  %46 = icmp ugt i32 %45, %37
  %47 = sext i1 %46 to i32
  %48 = add nsw i32 %44, %47
  %49 = tail call ptr @__alloc_pages(i32 noundef %34, i32 noundef %48, i32 noundef 0, ptr noundef null) #12
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %67

51:                                               ; preds = %63, %36
  %52 = phi i32 [ %64, %63 ], [ %48, %36 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = icmp eq i32 %38, 0
  br i1 %55, label %125, label %56

56:                                               ; preds = %56, %54
  %57 = phi i32 [ %58, %56 ], [ %38, %54 ]
  %58 = add i32 %57, -1
  %59 = load ptr, ptr %27, align 8
  %60 = getelementptr ptr, ptr %59, i32 %58
  %61 = load ptr, ptr %60, align 4
  tail call void @__free_pages(ptr noundef %61, i32 noundef 0) #12
  %62 = icmp eq i32 %58, 0
  br i1 %62, label %125, label %56

63:                                               ; preds = %51
  %64 = add i32 %52, -1
  %65 = tail call ptr @__alloc_pages(i32 noundef %34, i32 noundef %64, i32 noundef 0, ptr noundef null) #12
  %66 = icmp eq ptr %65, null
  br i1 %66, label %51, label %67

67:                                               ; preds = %63, %36
  %68 = phi i32 [ %48, %36 ], [ %64, %63 ]
  %69 = phi ptr [ %49, %36 ], [ %65, %63 ]
  tail call void @split_page(ptr noundef nonnull %69, i32 noundef %68) #12
  %70 = icmp eq i32 %68, 31
  br i1 %70, label %83, label %71

71:                                               ; preds = %67
  %72 = shl nuw nsw i32 1, %68
  %73 = tail call i32 @llvm.smax.i32(i32 %72, i32 1) #12
  br label %74

74:                                               ; preds = %74, %71
  %75 = phi i32 [ %81, %74 ], [ 0, %71 ]
  %76 = phi i32 [ %79, %74 ], [ %38, %71 ]
  %77 = getelementptr %struct.page, ptr %69, i32 %75
  %78 = load ptr, ptr %27, align 8
  %79 = add i32 %76, 1
  %80 = getelementptr ptr, ptr %78, i32 %76
  store ptr %77, ptr %80, align 4
  %81 = add nuw nsw i32 %75, 1
  %82 = icmp eq i32 %81, %73
  br i1 %82, label %83, label %74

83:                                               ; preds = %74, %67
  %84 = phi i32 [ %38, %67 ], [ %79, %74 ]
  %85 = shl i32 -4096, %68
  %86 = add i32 %85, %37
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %36

88:                                               ; preds = %83
  %89 = load ptr, ptr %27, align 8
  br label %90

90:                                               ; preds = %88, %29
  %91 = phi ptr [ %89, %88 ], [ %26, %29 ]
  %92 = load ptr, ptr %24, align 4
  %93 = load i32, ptr %22, align 4
  %94 = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef %92, ptr noundef %91, i32 noundef %93, i32 noundef 0, i32 noundef %2, i32 noundef -1, i32 noundef 3264) #12
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %90
  %97 = tail call ptr @get_device(ptr noundef nonnull %1) #12
  store ptr %97, ptr %11, align 8
  %98 = load i32, ptr %18, align 4
  %99 = tail call i32 @dma_map_sgtable(ptr noundef %97, ptr noundef %23, i32 noundef %98, i32 noundef 32) #12
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %11, i32 0, i32 10
  %103 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %11, i32 0, i32 11
  store ptr %102, ptr %103, align 4
  %104 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %11, i32 0, i32 11, i32 1
  store ptr @vb2_dma_sg_put, ptr %104, align 8
  %105 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %11, i32 0, i32 11, i32 2
  store ptr %11, ptr %105, align 4
  %106 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %11, i32 0, i32 13
  store ptr %0, ptr %106, align 4
  store volatile i32 1, ptr %102, align 8
  %107 = load i32, ptr @debug, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %101
  %110 = load i32, ptr %22, align 4
  %111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.vb2_dma_sg_alloc, i32 noundef %110) #15
  br label %128

112:                                              ; preds = %96
  %113 = load ptr, ptr %11, align 8
  tail call void @put_device(ptr noundef %113) #12
  %114 = load ptr, ptr %24, align 4
  tail call void @sg_free_table(ptr noundef %114) #12
  br label %115

115:                                              ; preds = %112, %90
  %116 = load i32, ptr %22, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %118, %115
  %119 = phi i32 [ %120, %118 ], [ %116, %115 ]
  %120 = add i32 %119, -1
  %121 = load ptr, ptr %27, align 8
  %122 = getelementptr ptr, ptr %121, i32 %120
  %123 = load ptr, ptr %122, align 4
  tail call void @__free_pages(ptr noundef %123, i32 noundef 0) #12
  %124 = icmp eq i32 %120, 0
  br i1 %124, label %125, label %118

125:                                              ; preds = %118, %115, %56, %54
  %126 = load ptr, ptr %27, align 8
  tail call void @kvfree(ptr noundef %126) #12
  br label %127

127:                                              ; preds = %125, %13
  tail call void @kfree(ptr noundef nonnull %11) #12
  br label %128

128:                                              ; preds = %127, %109, %101, %9, %8, %5
  %129 = phi ptr [ inttoptr (i32 -12 to ptr), %127 ], [ %11, %109 ], [ %11, %101 ], [ inttoptr (i32 -22 to ptr), %8 ], [ inttoptr (i32 -22 to ptr), %5 ], [ inttoptr (i32 -12 to ptr), %9 ]
  ret ptr %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_dma_sg_put(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #12, !srcloc !11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #12, !srcloc !12
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %48, label %11, !prof !13

11:                                               ; preds = %9
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef 3) #12
  br label %48

12:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %13 = load i32, ptr @debug, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, ptr %3, align 4
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.vb2_dma_sg_put, i32 noundef %16) #15
  br label %18

18:                                               ; preds = %15, %12
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 6, i32 2
  %24 = load i32, ptr %23, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %19, ptr noundef %22, i32 noundef %24, i32 noundef %21, i32 noundef 32) #12
  %25 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %18
  %29 = load i32, ptr %3, align 4
  tail call void @vm_unmap_ram(ptr noundef nonnull %26, i32 noundef %29) #12
  br label %30

30:                                               ; preds = %28, %18
  %31 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  tail call void @sg_free_table(ptr noundef %32) #12
  %33 = add i32 %4, -1
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 2
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi i32 [ %33, %35 ], [ %42, %37 ]
  %39 = load ptr, ptr %36, align 4
  %40 = getelementptr ptr, ptr %39, i32 %38
  %41 = load ptr, ptr %40, align 4
  tail call void @__free_pages(ptr noundef %41, i32 noundef 0) #12
  %42 = add nsw i32 %38, -1
  %43 = icmp sgt i32 %38, 0
  br i1 %43, label %37, label %44

44:                                               ; preds = %37, %30
  %45 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  tail call void @kvfree(ptr noundef %46) #12
  %47 = load ptr, ptr %0, align 4
  tail call void @put_device(ptr noundef %47) #12
  tail call void @kfree(ptr noundef %0) #12
  br label %48

48:                                               ; preds = %44, %11, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vb2_dma_sg_get_dmabuf(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.dma_buf_export_info, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) @__const.vb2_dma_sg_get_dmabuf.exp_info, i32 24, i1 false)
  %5 = getelementptr inbounds %struct.dma_buf_export_info, ptr %4, i32 0, i32 2
  store ptr @vb2_dma_sg_dmabuf_ops, ptr %5, align 4
  %6 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %1, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dma_buf_export_info, ptr %4, i32 0, i32 3
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dma_buf_export_info, ptr %4, i32 0, i32 4
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dma_buf_export_info, ptr %4, i32 0, i32 6
  store ptr %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %1, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 535, i32 noundef 9, ptr noundef null) #12
  br label %29

15:                                               ; preds = %3
  %16 = call ptr @dma_buf_export(ptr noundef nonnull %4) #12
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %29, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %1, i32 0, i32 10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #12, !srcloc !11
  %20 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #12, !srcloc !15
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23, !prof !8

23:                                               ; preds = %18
  %24 = add i32 %21, 1
  %25 = or i32 %24, %21
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %29, label %27, !prof !13

27:                                               ; preds = %23, %18
  %28 = phi i32 [ 2, %18 ], [ 1, %23 ]
  call void @refcount_warn_saturate(ptr noundef %19, i32 noundef %28) #12
  br label %29

29:                                               ; preds = %27, %23, %15, %14
  %30 = phi ptr [ null, %14 ], [ null, %15 ], [ %16, %23 ], [ %16, %27 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret ptr %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vb2_dma_sg_get_userptr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef null) #12
  br label %57

7:                                                ; preds = %4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 72) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %57, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %9, i32 0, i32 1
  store ptr null, ptr %12, align 4
  store ptr %1, ptr %9, align 8
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.vb2_queue, ptr %13, i32 0, i32 19
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %9, i32 0, i32 5
  store i32 %15, ptr %16, align 4
  %17 = and i32 %2, 4095
  %18 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %9, i32 0, i32 4
  store i32 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %9, i32 0, i32 8
  store i32 %3, ptr %19, align 8
  %20 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %9, i32 0, i32 6
  %21 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %9, i32 0, i32 7
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %9, i32 0, i32 13
  store ptr %0, ptr %22, align 4
  %23 = tail call ptr @vb2_create_framevec(i32 noundef %2, i32 noundef %3) #12
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %56, label %25

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %9, i32 0, i32 3
  store ptr %23, ptr %26, align 4
  %27 = getelementptr inbounds %struct.frame_vector, ptr %23, i32 0, i32 3
  %28 = load i8, ptr %27, align 1, !range !16
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = tail call i32 @frame_vector_to_pages(ptr noundef %23) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = inttoptr i32 %31 to ptr
  br label %37

35:                                               ; preds = %30, %25
  %36 = getelementptr inbounds %struct.frame_vector, ptr %23, i32 0, i32 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi ptr [ %34, %33 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %9, i32 0, i32 2
  store ptr %38, ptr %39, align 8
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %55, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.frame_vector, ptr %23, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %9, i32 0, i32 9
  store i32 %43, ptr %44, align 4
  %45 = load ptr, ptr %21, align 4
  %46 = load i32, ptr %18, align 8
  %47 = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef %45, ptr noundef %38, i32 noundef %43, i32 noundef %46, i32 noundef %3, i32 noundef -1, i32 noundef 0) #12
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load ptr, ptr %9, align 8
  %51 = load i32, ptr %16, align 4
  %52 = tail call i32 @dma_map_sgtable(ptr noundef %50, ptr noundef %20, i32 noundef %51, i32 noundef 32) #12
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  tail call void @sg_free_table(ptr noundef %20) #12
  br label %55

55:                                               ; preds = %54, %41, %37
  tail call void @vb2_destroy_framevec(ptr noundef %23) #12
  br label %56

56:                                               ; preds = %55, %11
  tail call void @kfree(ptr noundef nonnull %9) #12
  br label %57

57:                                               ; preds = %56, %49, %7, %6
  %58 = phi ptr [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -12 to ptr), %56 ], [ %9, %49 ], [ inttoptr (i32 -12 to ptr), %7 ]
  ret ptr %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_dma_sg_put_userptr(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.vb2_dma_sg_put_userptr, i32 noundef %4) #15
  br label %9

9:                                                ; preds = %7, %1
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 6, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %10, ptr noundef %13, i32 noundef %15, i32 noundef %12, i32 noundef 32) #12
  %16 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %9
  %20 = load i32, ptr %3, align 4
  tail call void @vm_unmap_ram(ptr noundef nonnull %17, i32 noundef %20) #12
  br label %21

21:                                               ; preds = %19, %9
  %22 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  tail call void @sg_free_table(ptr noundef %23) #12
  %24 = load i32, ptr %11, align 4
  switch i32 %24, label %38 [
    i32 2, label %25
    i32 0, label %25
  ]

25:                                               ; preds = %21, %21
  %26 = add i32 %4, -1
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 2
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi i32 [ %26, %28 ], [ %36, %30 ]
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr ptr, ptr %32, i32 %31
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @set_page_dirty_lock(ptr noundef %34) #12
  %36 = add nsw i32 %31, -1
  %37 = icmp sgt i32 %31, 0
  br i1 %37, label %30, label %38

38:                                               ; preds = %30, %25, %21
  %39 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  tail call void @vb2_destroy_framevec(ptr noundef %40) #12
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_dma_sg_prepare(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vb2_buffer, ptr %3, i32 0, i32 9
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr inbounds %struct.sg_table, ptr %10, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %11, ptr noundef %14, i32 noundef %16, i32 noundef %13) #12
  br label %17

17:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_dma_sg_finish(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vb2_buffer, ptr %3, i32 0, i32 9
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr inbounds %struct.sg_table, ptr %10, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %11, ptr noundef %14, i32 noundef %16, i32 noundef %13) #12
  br label %17

17:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vb2_dma_sg_attach_dmabuf(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 624, i32 noundef 9, ptr noundef null) #12
  br label %27

7:                                                ; preds = %4
  %8 = load i32, ptr %2, align 4
  %9 = icmp ult i32 %8, %3
  br i1 %9, label %27, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 72) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  store ptr %1, ptr %12, align 8
  %15 = tail call ptr @dma_buf_attach(ptr noundef %2, ptr noundef nonnull %1) #12
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  tail call void @kfree(ptr noundef nonnull %12) #12
  br label %27

19:                                               ; preds = %14
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds %struct.vb2_queue, ptr %20, i32 0, i32 19
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %12, i32 0, i32 5
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %12, i32 0, i32 8
  store i32 %3, ptr %24, align 8
  %25 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %12, i32 0, i32 12
  store ptr %15, ptr %25, align 8
  %26 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %12, i32 0, i32 13
  store ptr %0, ptr %26, align 4
  br label %27

27:                                               ; preds = %19, %17, %10, %7, %6
  %28 = phi ptr [ inttoptr (i32 -22 to ptr), %6 ], [ %15, %17 ], [ %12, %19 ], [ inttoptr (i32 -14 to ptr), %7 ], [ inttoptr (i32 -12 to ptr), %10 ]
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_dma_sg_detach_dmabuf(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !13

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 610, i32 noundef 9, ptr noundef null) #12
  tail call void @vb2_dma_sg_unmap_dmabuf(ptr noundef %0)
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  tail call void @dma_buf_detach(ptr noundef %9, ptr noundef %8) #12
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vb2_dma_sg_map_dmabuf(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 557, i32 noundef 9, ptr noundef null) #12
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #15
  br label %22

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !13

11:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 562, i32 noundef 9, ptr noundef null) #12
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #15
  br label %22

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @dma_buf_map_attachment(ptr noundef nonnull %3, i32 noundef %15) #12
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #15
  br label %22

20:                                               ; preds = %13
  store ptr %16, ptr %8, align 4
  %21 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 1
  store ptr null, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %18, %11, %5
  %23 = phi i32 [ -22, %5 ], [ 0, %11 ], [ -22, %18 ], [ 0, %20 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_dma_sg_unmap_dmabuf(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.dma_buf_map, align 8
  %3 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 0, ptr %2, align 8, !annotation !17
  %5 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  store ptr %6, ptr %2, align 8
  %7 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12, !prof !8

10:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 586, i32 noundef 9, ptr noundef null) #12
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #15
  br label %25

12:                                               ; preds = %1
  %13 = icmp eq ptr %4, null
  br i1 %13, label %14, label %16, !prof !8

14:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 591, i32 noundef 9, ptr noundef null) #12
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #15
  br label %25

16:                                               ; preds = %12
  %17 = icmp eq ptr %6, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %8, align 4
  call void @dma_buf_vunmap(ptr noundef %19, ptr noundef nonnull %2) #12
  store ptr null, ptr %5, align 4
  %20 = load ptr, ptr %7, align 4
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi ptr [ %20, %18 ], [ %8, %16 ]
  %23 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  call void @dma_buf_unmap_attachment(ptr noundef %22, ptr noundef nonnull %4, i32 noundef %24) #12
  store ptr null, ptr %3, align 4
  br label %25

25:                                               ; preds = %21, %14, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vb2_dma_sg_vaddr(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = alloca %struct.dma_buf_map, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 0, ptr %3, align 8, !annotation !17
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/common/videobuf2/videobuf2-dma-sg.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 309, 0\0A.popsection", ""() #12, !srcloc !18
  unreachable

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %1, i32 0, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 4
  %16 = call i32 @dma_buf_vmap(ptr noundef %15, ptr noundef nonnull %3) #12
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %3, align 8
  br i1 %17, label %26, label %19

19:                                               ; preds = %14
  store ptr null, ptr %7, align 4
  br label %34

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %1, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %1, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = tail call ptr @vm_map_ram(ptr noundef %22, i32 noundef %24, i32 noundef -1) #12
  br label %26

26:                                               ; preds = %20, %14
  %27 = phi ptr [ %25, %20 ], [ %18, %14 ]
  store ptr %27, ptr %7, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %26, %6
  %30 = phi ptr [ %27, %26 ], [ %8, %6 ]
  %31 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %1, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i8, ptr %30, i32 %32
  br label %34

34:                                               ; preds = %29, %26, %19
  %35 = phi ptr [ %33, %29 ], [ null, %26 ], [ null, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret ptr %35
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @vb2_dma_sg_cookie(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %1, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  ret ptr %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @vb2_dma_sg_num_users(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 10
  %3 = load volatile i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vb2_dma_sg_mmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #15
  br label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @vm_map_pages(ptr noundef %1, ptr noundef %8, i32 noundef %10) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %11) #15
  br label %20

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %0, i32 0, i32 11
  %17 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr @vb2_common_vm_ops, ptr %18, align 4
  %19 = load ptr, ptr @vb2_common_vm_ops, align 4
  tail call void %19(ptr noundef %1) #12
  br label %20

20:                                               ; preds = %15, %13, %4
  %21 = phi i32 [ %11, %13 ], [ 0, %15 ], [ -22, %4 ]
  ret i32 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @split_page(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_unmap_ram(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_export(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vb2_dma_sg_dmabuf_ops_attach(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 16) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %4, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sg_table, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @sg_alloc_table(ptr noundef nonnull %6, i32 noundef %12, i32 noundef 3264) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #12
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
  %39 = tail call ptr @sg_next(ptr noundef %26) #12
  %40 = tail call ptr @sg_next(ptr noundef %25) #12
  %41 = add nuw i32 %27, 1
  %42 = load i32, ptr %17, align 8
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %24, label %44

44:                                               ; preds = %24, %16
  %45 = getelementptr inbounds %struct.vb2_dma_sg_attachment, ptr %6, i32 0, i32 1
  store i32 3, ptr %45, align 4
  %46 = getelementptr inbounds %struct.dma_buf_attachment, ptr %1, i32 0, i32 8
  store ptr %6, ptr %46, align 4
  br label %47

47:                                               ; preds = %44, %15, %2
  %48 = phi i32 [ -12, %15 ], [ 0, %44 ], [ -12, %2 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_dma_sg_dmabuf_ops_detach(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf_attachment, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vb2_dma_sg_attachment, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dma_buf_attachment, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.sg_table, ptr %4, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %12, ptr noundef %13, i32 noundef %15, i32 noundef %8, i32 noundef 0) #12
  br label %16

16:                                               ; preds = %10, %6
  tail call void @sg_free_table(ptr noundef nonnull %4) #12
  tail call void @kfree(ptr noundef nonnull %4) #12
  store ptr null, ptr %3, align 4
  br label %17

17:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vb2_dma_sg_dmabuf_ops_map(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf_attachment, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.dma_buf, ptr %5, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.vb2_dma_sg_attachment, ptr %4, i32 0, i32 1
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
  tail call void @dma_unmap_sg_attrs(ptr noundef %14, ptr noundef %15, i32 noundef %17, i32 noundef %8, i32 noundef 0) #12
  store i32 3, ptr %7, align 4
  br label %18

18:                                               ; preds = %12, %10
  %19 = getelementptr inbounds %struct.dma_buf_attachment, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @dma_map_sgtable(ptr noundef %20, ptr noundef %4, i32 noundef %1, i32 noundef 0) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #15
  br label %26

25:                                               ; preds = %18
  store i32 %1, ptr %7, align 4
  br label %26

26:                                               ; preds = %25, %23, %2
  %27 = phi ptr [ inttoptr (i32 -5 to ptr), %23 ], [ %4, %25 ], [ %4, %2 ]
  tail call void @mutex_unlock(ptr noundef %6) #12
  ret ptr %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @vb2_dma_sg_dmabuf_ops_unmap(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) #10 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_dma_sg_dmabuf_ops_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  tail call void @vb2_dma_sg_put(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vb2_dma_sg_dmabuf_ops_begin_cpu_access(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.sg_table, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %4, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %7, ptr noundef %8, i32 noundef %10, i32 noundef %12) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vb2_dma_sg_dmabuf_ops_end_cpu_access(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.sg_table, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %4, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %7, ptr noundef %8, i32 noundef %10, i32 noundef %12) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vb2_dma_sg_dmabuf_ops_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #15
  br label %22

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %4, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @vm_map_pages(ptr noundef %1, ptr noundef %10, i32 noundef %12) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %13) #15
  br label %22

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %4, i32 0, i32 11
  %19 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr @vb2_common_vm_ops, ptr %20, align 4
  %21 = load ptr, ptr @vb2_common_vm_ops, align 4
  tail call void %21(ptr noundef %1) #12
  br label %22

22:                                               ; preds = %17, %15, %6
  %23 = phi i32 [ %13, %15 ], [ 0, %17 ], [ -22, %6 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @vb2_dma_sg_dmabuf_ops_vmap(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vb2_dma_sg_buf, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  store ptr %6, ptr %1, align 4
  %7 = getelementptr inbounds %struct.dma_buf_map, ptr %1, i32 0, i32 1
  store i8 0, ptr %7, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_create_framevec(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_destroy_framevec(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @frame_vector_to_pages(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_attach(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_detach(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_map_attachment(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_unmap_attachment(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_buf_vmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_map_ram(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_map_pages(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i32 0, i32 33}
!10 = !{i64 2148159158}
!11 = !{i64 556092, i64 2148046063, i64 2148046089, i64 2148046136, i64 2148046158, i64 2148046186, i64 2148046206}
!12 = !{i64 2148061293, i64 2148061325, i64 2148061354, i64 2148061388, i64 2148061419, i64 2148061442}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2149008221}
!15 = !{i64 2148058936, i64 2148058968, i64 2148058997, i64 2148059031, i64 2148059062, i64 2148059085}
!16 = !{i8 0, i8 2}
!17 = !{!"auto-init"}
!18 = !{i64 2153058987, i64 2153059501, i64 2153059024, i64 2153059080, i64 2153059114, i64 2153059138, i64 2153059179, i64 2153059200, i64 2153059228, i64 2153059262}
