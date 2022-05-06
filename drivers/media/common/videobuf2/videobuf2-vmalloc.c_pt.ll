; ModuleID = '/llk/IR/drivers/media/common/videobuf2/videobuf2-vmalloc.c_pt.bc'
source_filename = "../drivers/media/common/videobuf2/videobuf2-vmalloc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vb2_vmalloc_memops:\09\09\09\09\09"
module asm "\09.asciz \09\22vb2_vmalloc_memops\22\09\09\09\09\09"
module asm "__kstrtabns_vb2_vmalloc_memops:\09\09\09\09\09"
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
%struct.vb2_vmalloc_buf = type { ptr, ptr, i32, i32, %struct.refcount_struct, %struct.vb2_vmarea_handler, ptr }
%struct.vb2_vmarea_handler = type { ptr, ptr, ptr }
%struct.frame_vector = type { i32, i32, i8, i8, [0 x ptr] }
%struct.dma_buf_map = type { %union.anon.61, i8 }
%union.anon.61 = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.vb2_vmalloc_attachment = type { %struct.sg_table, i32 }
%struct.dma_buf_attachment = type { ptr, ptr, %struct.list_head, ptr, i32, i8, ptr, ptr, ptr }

@vb2_vmalloc_memops = dso_local constant %struct.vb2_mem_ops { ptr @vb2_vmalloc_alloc, ptr @vb2_vmalloc_put, ptr @vb2_vmalloc_get_dmabuf, ptr @vb2_vmalloc_get_userptr, ptr @vb2_vmalloc_put_userptr, ptr null, ptr null, ptr @vb2_vmalloc_attach_dmabuf, ptr @vb2_vmalloc_detach_dmabuf, ptr @vb2_vmalloc_map_dmabuf, ptr @vb2_vmalloc_unmap_dmabuf, ptr @vb2_vmalloc_vaddr, ptr null, ptr @vb2_vmalloc_num_users, ptr @vb2_vmalloc_mmap }, align 4
@__kstrtab_vb2_vmalloc_memops = external dso_local constant [0 x i8], align 1
@__kstrtabns_vb2_vmalloc_memops = external dso_local constant [0 x i8], align 1
@__ksymtab_vb2_vmalloc_memops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vb2_vmalloc_memops to i32), ptr @__kstrtab_vb2_vmalloc_memops, ptr @__kstrtabns_vb2_vmalloc_memops }, section "___ksymtab_gpl+vb2_vmalloc_memops", align 4
@__UNIQUE_ID_description228 = internal constant [59 x i8] c"description=vmalloc memory handling routines for videobuf2\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [39 x i8] c"author=Pawel Osciak <pawel@osciak.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns231 = internal constant [18 x i8] c"import_ns=DMA_BUF\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [18 x i8] c"videobuf2_vmalloc\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@__const.vb2_vmalloc_get_dmabuf.exp_info = private unnamed_addr constant %struct.dma_buf_export_info { ptr @.str, ptr @__this_module, ptr null, i32 0, i32 0, ptr null, ptr null }, align 4
@vb2_vmalloc_dmabuf_ops = internal constant %struct.dma_buf_ops { i8 0, ptr @vb2_vmalloc_dmabuf_ops_attach, ptr @vb2_vmalloc_dmabuf_ops_detach, ptr null, ptr null, ptr @vb2_vmalloc_dmabuf_ops_map, ptr @vb2_vmalloc_dmabuf_ops_unmap, ptr @vb2_vmalloc_dmabuf_ops_release, ptr null, ptr null, ptr @vb2_vmalloc_dmabuf_ops_mmap, ptr @vb2_vmalloc_dmabuf_ops_vmap, ptr null }, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"drivers/media/common/videobuf2/videobuf2-vmalloc.c\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\013failed to map scatterlist\0A\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"\013Address of an unallocated plane requested or cannot map user pointer\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"\013No memory to map\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"\013Remapping vmalloc memory, error: %d\0A\00", align 1
@vb2_common_vm_ops = external dso_local constant %struct.vm_operations_struct, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_import_ns231, ptr @__UNIQUE_ID_license230, ptr @__ksymtab_vb2_vmalloc_memops], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vb2_vmalloc_alloc(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.vb2_queue, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 3520
  %8 = and i32 %6, 17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !8

10:                                               ; preds = %3
  %11 = and i32 %6, 1
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 1, i32 2
  br label %14

14:                                               ; preds = %10, %3
  %15 = phi i32 [ 0, %3 ], [ %13, %10 ]
  %16 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %15, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef %7, i32 noundef 36) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %18, i32 0, i32 3
  store i32 %2, ptr %21, align 4
  %22 = tail call noalias ptr @vmalloc_user(i32 noundef %2) #11
  store ptr %22, ptr %18, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void @kfree(ptr noundef nonnull %18) #12
  br label %34

25:                                               ; preds = %20
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr inbounds %struct.vb2_queue, ptr %26, i32 0, i32 19
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %18, i32 0, i32 2
  store i32 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %18, i32 0, i32 4
  %31 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %18, i32 0, i32 5
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %18, i32 0, i32 5, i32 1
  store ptr @vb2_vmalloc_put, ptr %32, align 8
  %33 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %18, i32 0, i32 5, i32 2
  store ptr %18, ptr %33, align 4
  store volatile i32 1, ptr %30, align 8
  br label %34

34:                                               ; preds = %25, %24, %14
  %35 = phi ptr [ %18, %25 ], [ inttoptr (i32 -12 to ptr), %24 ], [ inttoptr (i32 -12 to ptr), %14 ]
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_vmalloc_put(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #12, !srcloc !10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #12, !srcloc !11
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %11, label %8, !prof !8

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #12
  br label %11

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %10 = load ptr, ptr %0, align 4
  tail call void @vfree(ptr noundef %10) #12
  tail call void @kfree(ptr noundef %0) #12
  br label %11

11:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vb2_vmalloc_get_dmabuf(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.dma_buf_export_info, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) @__const.vb2_vmalloc_get_dmabuf.exp_info, i32 24, i1 false)
  %5 = getelementptr inbounds %struct.dma_buf_export_info, ptr %4, i32 0, i32 2
  store ptr @vb2_vmalloc_dmabuf_ops, ptr %5, align 4
  %6 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dma_buf_export_info, ptr %4, i32 0, i32 3
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dma_buf_export_info, ptr %4, i32 0, i32 4
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dma_buf_export_info, ptr %4, i32 0, i32 6
  store ptr %1, ptr %10, align 4
  %11 = load ptr, ptr %1, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !13

13:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 353, i32 noundef 9, ptr noundef null) #12
  br label %28

14:                                               ; preds = %3
  %15 = call ptr @dma_buf_export(ptr noundef nonnull %4) #12
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %28, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %1, i32 0, i32 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #12, !srcloc !10
  %19 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #12, !srcloc !14
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !13

22:                                               ; preds = %17
  %23 = add i32 %20, 1
  %24 = or i32 %23, %20
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %28, label %26, !prof !8

26:                                               ; preds = %22, %17
  %27 = phi i32 [ 2, %17 ], [ 1, %22 ]
  call void @refcount_warn_saturate(ptr noundef %18, i32 noundef %27) #12
  br label %28

28:                                               ; preds = %26, %22, %14, %13
  %29 = phi ptr [ null, %13 ], [ null, %14 ], [ %15, %22 ], [ %15, %26 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #12
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vb2_vmalloc_get_userptr(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 36) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %65, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.vb2_queue, ptr %9, i32 0, i32 19
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %6, i32 0, i32 2
  store i32 %11, ptr %12, align 8
  %13 = and i32 %2, 4095
  %14 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %6, i32 0, i32 3
  store i32 %3, ptr %14, align 4
  %15 = tail call ptr @vb2_create_framevec(i32 noundef %2, i32 noundef %3) #12
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %63, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %6, i32 0, i32 1
  store ptr %15, ptr %18, align 4
  %19 = getelementptr inbounds %struct.frame_vector, ptr %15, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @frame_vector_to_pages(ptr noundef %15) #12
  %22 = icmp slt i32 %21, 0
  %23 = getelementptr inbounds %struct.frame_vector, ptr %15, i32 0, i32 3
  %24 = load i8, ptr %23, align 1, !range !15
  %25 = icmp eq i8 %24, 0
  br i1 %22, label %26, label %46

26:                                               ; preds = %17
  br i1 %25, label %27, label %28

27:                                               ; preds = %26
  tail call void @frame_vector_to_pfns(ptr noundef %15) #12
  br label %28

28:                                               ; preds = %27, %26
  %29 = getelementptr inbounds %struct.frame_vector, ptr %15, i32 0, i32 4
  %30 = icmp sgt i32 %20, 1
  %31 = load i32, ptr %29, align 4
  br i1 %30, label %35, label %42

32:                                               ; preds = %35
  %33 = add nuw nsw i32 %37, 1
  %34 = icmp eq i32 %33, %20
  br i1 %34, label %42, label %35

35:                                               ; preds = %32, %28
  %36 = phi i32 [ %38, %32 ], [ %31, %28 ]
  %37 = phi i32 [ %33, %32 ], [ 1, %28 ]
  %38 = add i32 %36, 1
  %39 = getelementptr i32, ptr %29, i32 %37
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %32, label %62

42:                                               ; preds = %32, %28
  %43 = shl i32 %31, 12
  %44 = add i32 %13, %3
  %45 = tail call ptr @ioremap(i32 noundef %43, i32 noundef %44) #12
  br label %57

46:                                               ; preds = %17
  br i1 %25, label %52, label %47

47:                                               ; preds = %46
  %48 = tail call i32 @frame_vector_to_pages(ptr noundef %15) #12
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = inttoptr i32 %48 to ptr
  br label %54

52:                                               ; preds = %47, %46
  %53 = getelementptr inbounds %struct.frame_vector, ptr %15, i32 0, i32 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi ptr [ %51, %50 ], [ %53, %52 ]
  %56 = tail call ptr @vm_map_ram(ptr noundef %55, i32 noundef %20, i32 noundef -1) #12
  br label %57

57:                                               ; preds = %54, %42
  %58 = phi ptr [ %45, %42 ], [ %56, %54 ]
  store ptr %58, ptr %6, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = getelementptr i8, ptr %58, i32 %13
  store ptr %61, ptr %6, align 8
  br label %65

62:                                               ; preds = %57, %35
  tail call void @vb2_destroy_framevec(ptr noundef %15) #12
  br label %63

63:                                               ; preds = %62, %8
  %64 = phi ptr [ inttoptr (i32 -12 to ptr), %62 ], [ %15, %8 ]
  tail call void @kfree(ptr noundef nonnull %6) #12
  br label %65

65:                                               ; preds = %63, %60, %4
  %66 = phi ptr [ %64, %63 ], [ %6, %60 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_vmalloc_put_userptr(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = and i32 %3, -4096
  %5 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.frame_vector, ptr %6, i32 0, i32 3
  %8 = load i8, ptr %7, align 1, !range !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.frame_vector, ptr %6, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.frame_vector, ptr %6, i32 0, i32 4
  %14 = icmp eq i32 %4, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = inttoptr i32 %4 to ptr
  tail call void @vm_unmap_ram(ptr noundef nonnull %16, i32 noundef %12) #12
  br label %17

17:                                               ; preds = %15, %10
  %18 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %30 [
    i32 2, label %20
    i32 0, label %20
  ]

20:                                               ; preds = %17, %17
  %21 = icmp eq i32 %12, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ %27, %22 ], [ 0, %20 ]
  %24 = getelementptr ptr, ptr %13, i32 %23
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @set_page_dirty_lock(ptr noundef %25) #12
  %27 = add nuw i32 %23, 1
  %28 = icmp eq i32 %27, %12
  br i1 %28, label %30, label %22

29:                                               ; preds = %1
  tail call void @iounmap(ptr noundef %2) #12
  br label %30

30:                                               ; preds = %29, %22, %20, %17
  %31 = load ptr, ptr %5, align 4
  tail call void @vb2_destroy_framevec(ptr noundef %31) #12
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vb2_vmalloc_attach_dmabuf(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load i32, ptr %2, align 4
  %6 = icmp ult i32 %5, %3
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 36) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %9, i32 0, i32 6
  store ptr %2, ptr %12, align 8
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.vb2_queue, ptr %13, i32 0, i32 19
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %9, i32 0, i32 2
  store i32 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %9, i32 0, i32 3
  store i32 %3, ptr %17, align 4
  br label %18

18:                                               ; preds = %11, %7, %4
  %19 = phi ptr [ %9, %11 ], [ inttoptr (i32 -14 to ptr), %4 ], [ inttoptr (i32 -12 to ptr), %7 ]
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_vmalloc_detach_dmabuf(ptr noundef %0) #0 {
  %2 = alloca %struct.dma_buf_map, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 0, ptr %2, align 8, !annotation !16
  %3 = load ptr, ptr %0, align 4
  store ptr %3, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  call void @dma_buf_vunmap(ptr noundef %7, ptr noundef nonnull %2) #12
  br label %8

8:                                                ; preds = %5, %1
  call void @kfree(ptr noundef %0) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vb2_vmalloc_map_dmabuf(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.dma_buf_map, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 0, ptr %2, align 8, !annotation !16
  %3 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 @dma_buf_vmap(ptr noundef %4, ptr noundef nonnull %2) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  store ptr %8, ptr %0, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ 0, %7 ], [ -14, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_vmalloc_unmap_dmabuf(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.dma_buf_map, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 0, ptr %2, align 8, !annotation !16
  %3 = load ptr, ptr %0, align 4
  store ptr %3, ptr %2, align 8
  %4 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  call void @dma_buf_vunmap(ptr noundef %5, ptr noundef nonnull %2) #12
  store ptr null, ptr %0, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @vb2_vmalloc_vaddr(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  br label %7

7:                                                ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @vb2_vmalloc_num_users(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %0, i32 0, i32 4
  %3 = load volatile i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vb2_vmalloc_mmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %20

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = tail call i32 @remap_vmalloc_range(ptr noundef %1, ptr noundef %7, i32 noundef 0) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %8) #13
  br label %20

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 262144
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %0, i32 0, i32 5
  %17 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr @vb2_common_vm_ops, ptr %18, align 4
  %19 = load ptr, ptr @vb2_common_vm_ops, align 4
  tail call void %19(ptr noundef %1) #12
  br label %20

20:                                               ; preds = %12, %10, %4
  %21 = phi i32 [ %8, %10 ], [ 0, %12 ], [ -22, %4 ]
  ret i32 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_user(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_export(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vb2_vmalloc_dmabuf_ops_attach(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 16) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %49, label %11

11:                                               ; preds = %2
  %12 = add i32 %6, 4095
  %13 = lshr i32 %12, 12
  %14 = tail call i32 @sg_alloc_table(ptr noundef nonnull %9, i32 noundef %13, i32 noundef 3264) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void @kfree(ptr noundef nonnull %9) #12
  br label %49

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.sg_table, ptr %9, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %9, align 8
  br label %23

23:                                               ; preds = %35, %21
  %24 = phi i32 [ %42, %35 ], [ 0, %21 ]
  %25 = phi ptr [ %41, %35 ], [ %7, %21 ]
  %26 = phi ptr [ %43, %35 ], [ %22, %21 ]
  %27 = tail call ptr @vmalloc_to_page(ptr noundef %25) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  tail call void @sg_free_table(ptr noundef nonnull %9) #12
  tail call void @kfree(ptr noundef nonnull %9) #12
  br label %49

30:                                               ; preds = %23
  %31 = ptrtoint ptr %27 to i32
  %32 = and i32 %31, 3
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34, !prof !8

34:                                               ; preds = %30
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !17
  unreachable

35:                                               ; preds = %30
  %36 = load i32, ptr %26, align 4
  %37 = and i32 %36, 3
  %38 = or i32 %37, %31
  store i32 %38, ptr %26, align 4
  %39 = getelementptr inbounds %struct.scatterlist, ptr %26, i32 0, i32 1
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.scatterlist, ptr %26, i32 0, i32 2
  store i32 4096, ptr %40, align 4
  %41 = getelementptr i8, ptr %25, i32 4096
  %42 = add nuw i32 %24, 1
  %43 = tail call ptr @sg_next(ptr noundef %26) #12
  %44 = load i32, ptr %18, align 8
  %45 = icmp ult i32 %42, %44
  br i1 %45, label %23, label %46

46:                                               ; preds = %35, %17
  %47 = getelementptr inbounds %struct.vb2_vmalloc_attachment, ptr %9, i32 0, i32 1
  store i32 3, ptr %47, align 4
  %48 = getelementptr inbounds %struct.dma_buf_attachment, ptr %1, i32 0, i32 8
  store ptr %9, ptr %48, align 4
  br label %49

49:                                               ; preds = %46, %29, %16, %2
  %50 = phi i32 [ %14, %16 ], [ 0, %46 ], [ -12, %2 ], [ -12, %29 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_vmalloc_dmabuf_ops_detach(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf_attachment, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vb2_vmalloc_attachment, ptr %4, i32 0, i32 1
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
define internal ptr @vb2_vmalloc_dmabuf_ops_map(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf_attachment, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.dma_buf, ptr %5, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.vb2_vmalloc_attachment, ptr %4, i32 0, i32 1
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
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
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
define internal void @vb2_vmalloc_dmabuf_ops_unmap(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) #7 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vb2_vmalloc_dmabuf_ops_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %3, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #12, !srcloc !10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #12, !srcloc !11
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %13, label %10, !prof !8

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #12
  br label %13

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %12 = load ptr, ptr %3, align 4
  tail call void @vfree(ptr noundef %12) #12
  tail call void @kfree(ptr noundef %3) #12
  br label %13

13:                                               ; preds = %11, %10, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vb2_vmalloc_dmabuf_ops_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %22

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 4
  %10 = tail call i32 @remap_vmalloc_range(ptr noundef %1, ptr noundef %9, i32 noundef 0) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %10) #13
  br label %22

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, 262144
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.vb2_vmalloc_buf, ptr %4, i32 0, i32 5
  %19 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr @vb2_common_vm_ops, ptr %20, align 4
  %21 = load ptr, ptr @vb2_common_vm_ops, align 4
  tail call void %21(ptr noundef %1) #12
  br label %22

22:                                               ; preds = %14, %12, %6
  %23 = phi i32 [ %10, %12 ], [ 0, %14 ], [ -22, %6 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @vb2_vmalloc_dmabuf_ops_vmap(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.dma_buf, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  store ptr %5, ptr %1, align 4
  %6 = getelementptr inbounds %struct.dma_buf_map, ptr %1, i32 0, i32 1
  store i8 0, ptr %6, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_create_framevec(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @frame_vector_to_pages(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_map_ram(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_destroy_framevec(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @frame_vector_to_pfns(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_unmap_ram(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_buf_vmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_vmalloc_range(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2148207482}
!10 = !{i64 604440, i64 2148094411, i64 2148094437, i64 2148094484, i64 2148094506, i64 2148094534, i64 2148094554}
!11 = !{i64 2148109641, i64 2148109673, i64 2148109702, i64 2148109736, i64 2148109767, i64 2148109790}
!12 = !{i64 2149163711}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2148107284, i64 2148107316, i64 2148107345, i64 2148107379, i64 2148107410, i64 2148107433}
!15 = !{i8 0, i8 2}
!16 = !{!"auto-init"}
!17 = !{i64 2152666551, i64 2152667043, i64 2152666588, i64 2152666644, i64 2152666678, i64 2152666702, i64 2152666743, i64 2152666764, i64 2152666792, i64 2152666826}
