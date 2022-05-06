; ModuleID = '/llk/IR/drivers/video/fbdev/core/fbmem.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fbmem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_registered_fb:\09\09\09\09\09"
module asm "\09.asciz \09\22registered_fb\22\09\09\09\09\09"
module asm "__kstrtabns_registered_fb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_num_registered_fb:\09\09\09\09\09"
module asm "\09.asciz \09\22num_registered_fb\22\09\09\09\09\09"
module asm "__kstrtabns_num_registered_fb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_get_color_depth:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_get_color_depth\22\09\09\09\09\09"
module asm "__kstrtabns_fb_get_color_depth:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_pad_aligned_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_pad_aligned_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_fb_pad_aligned_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_pad_unaligned_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_pad_unaligned_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_fb_pad_unaligned_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_get_buffer_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_get_buffer_offset\22\09\09\09\09\09"
module asm "__kstrtabns_fb_get_buffer_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_prepare_logo:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_prepare_logo\22\09\09\09\09\09"
module asm "__kstrtabns_fb_prepare_logo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_show_logo:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_show_logo\22\09\09\09\09\09"
module asm "__kstrtabns_fb_show_logo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_pan_display:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_pan_display\22\09\09\09\09\09"
module asm "__kstrtabns_fb_pan_display:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_set_var:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_set_var\22\09\09\09\09\09"
module asm "__kstrtabns_fb_set_var:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_blank:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_blank\22\09\09\09\09\09"
module asm "__kstrtabns_fb_blank:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_class:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_class\22\09\09\09\09\09"
module asm "__kstrtabns_fb_class:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_remove_conflicting_framebuffers:\09\09\09\09\09"
module asm "\09.asciz \09\22remove_conflicting_framebuffers\22\09\09\09\09\09"
module asm "__kstrtabns_remove_conflicting_framebuffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_is_firmware_framebuffer:\09\09\09\09\09"
module asm "\09.asciz \09\22is_firmware_framebuffer\22\09\09\09\09\09"
module asm "__kstrtabns_is_firmware_framebuffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_remove_conflicting_pci_framebuffers:\09\09\09\09\09"
module asm "\09.asciz \09\22remove_conflicting_pci_framebuffers\22\09\09\09\09\09"
module asm "__kstrtabns_remove_conflicting_pci_framebuffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_framebuffer:\09\09\09\09\09"
module asm "\09.asciz \09\22register_framebuffer\22\09\09\09\09\09"
module asm "__kstrtabns_register_framebuffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_framebuffer:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_framebuffer\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_framebuffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_set_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_set_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_fb_set_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.67 }
%union.anon.67 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.68 = type { ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_event = type { ptr, ptr }
%struct.fb_blit_caps = type { i32, i32, i32, i32 }
%struct.apertures_struct = type { i32, [0 x %struct.aperture] }
%struct.aperture = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.fb_modelist = type { %struct.list_head, %struct.fb_videomode }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.70 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.72 = type { ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fb_cmap_user = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}

@registered_fb = dso_local global [32 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_registered_fb = external dso_local constant [0 x i8], align 1
@__kstrtabns_registered_fb = external dso_local constant [0 x i8], align 1
@__ksymtab_registered_fb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @registered_fb to i32), ptr @__kstrtab_registered_fb, ptr @__kstrtabns_registered_fb }, section "___ksymtab+registered_fb", align 4
@num_registered_fb = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_num_registered_fb = external dso_local constant [0 x i8], align 1
@__kstrtabns_num_registered_fb = external dso_local constant [0 x i8], align 1
@__ksymtab_num_registered_fb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @num_registered_fb to i32), ptr @__kstrtab_num_registered_fb, ptr @__kstrtabns_num_registered_fb }, section "___ksymtab+num_registered_fb", align 4
@fb_logo_count = dso_local local_unnamed_addr global i32 -1, section ".data..read_mostly", align 4
@__kstrtab_fb_get_color_depth = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_get_color_depth = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_get_color_depth = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_get_color_depth to i32), ptr @__kstrtab_fb_get_color_depth, ptr @__kstrtabns_fb_get_color_depth }, section "___ksymtab+fb_get_color_depth", align 4
@__kstrtab_fb_pad_aligned_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_pad_aligned_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_pad_aligned_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_pad_aligned_buffer to i32), ptr @__kstrtab_fb_pad_aligned_buffer, ptr @__kstrtabns_fb_pad_aligned_buffer }, section "___ksymtab+fb_pad_aligned_buffer", align 4
@__kstrtab_fb_pad_unaligned_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_pad_unaligned_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_pad_unaligned_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_pad_unaligned_buffer to i32), ptr @__kstrtab_fb_pad_unaligned_buffer, ptr @__kstrtabns_fb_pad_unaligned_buffer }, section "___ksymtab+fb_pad_unaligned_buffer", align 4
@__kstrtab_fb_get_buffer_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_get_buffer_offset = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_get_buffer_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_get_buffer_offset to i32), ptr @__kstrtab_fb_get_buffer_offset, ptr @__kstrtabns_fb_get_buffer_offset }, section "___ksymtab+fb_get_buffer_offset", align 4
@__kstrtab_fb_prepare_logo = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_prepare_logo = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_prepare_logo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_prepare_logo to i32), ptr @__kstrtab_fb_prepare_logo, ptr @__kstrtabns_fb_prepare_logo }, section "___ksymtab+fb_prepare_logo", align 4
@__kstrtab_fb_show_logo = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_show_logo = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_show_logo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_show_logo to i32), ptr @__kstrtab_fb_show_logo, ptr @__kstrtabns_fb_show_logo }, section "___ksymtab+fb_show_logo", align 4
@__kstrtab_fb_pan_display = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_pan_display = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_pan_display = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_pan_display to i32), ptr @__kstrtab_fb_pan_display, ptr @__kstrtabns_fb_pan_display }, section "___ksymtab+fb_pan_display", align 4
@.str = private unnamed_addr constant [45 x i8] c"\014detected fb_set_par error, error code: %d\0A\00", align 1
@__kstrtab_fb_set_var = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_set_var = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_set_var = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_set_var to i32), ptr @__kstrtab_fb_set_var, ptr @__kstrtabns_fb_set_var }, section "___ksymtab+fb_set_var", align 4
@__kstrtab_fb_blank = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_blank = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_blank = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_blank to i32), ptr @__kstrtab_fb_blank, ptr @__kstrtabns_fb_blank }, section "___ksymtab+fb_blank", align 4
@fb_class = dso_local global ptr null, align 4
@__kstrtab_fb_class = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_class = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_class = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_class to i32), ptr @__kstrtab_fb_class, ptr @__kstrtabns_fb_class }, section "___ksymtab+fb_class", align 4
@__param_str_lockless_register_fb = internal constant [24 x i8] c"fb.lockless_register_fb\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@lockless_register_fb = internal global i8 0, align 1
@__param_lockless_register_fb = internal constant %struct.kernel_param { ptr @__param_str_lockless_register_fb, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 1, %union.anon.67 { ptr @lockless_register_fb } }, section "__param", align 4
@__UNIQUE_ID_lockless_register_fbtype265 = internal constant [38 x i8] c"fb.parmtype=lockless_register_fb:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_lockless_register_fb266 = internal constant [91 x i8] c"fb.parm=lockless_register_fb:Lockless framebuffer registration for debugging [default=off]\00", section ".modinfo", align 1
@registration_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @registration_lock, i64 12), ptr getelementptr (i8, ptr @registration_lock, i64 12) } }, align 4
@__kstrtab_remove_conflicting_framebuffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_remove_conflicting_framebuffers = external dso_local constant [0 x i8], align 1
@__ksymtab_remove_conflicting_framebuffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @remove_conflicting_framebuffers to i32), ptr @__kstrtab_remove_conflicting_framebuffers, ptr @__kstrtabns_remove_conflicting_framebuffers }, section "___ksymtab+remove_conflicting_framebuffers", align 4
@__kstrtab_is_firmware_framebuffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_is_firmware_framebuffer = external dso_local constant [0 x i8], align 1
@__ksymtab_is_firmware_framebuffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @is_firmware_framebuffer to i32), ptr @__kstrtab_is_firmware_framebuffer, ptr @__kstrtabns_is_firmware_framebuffer }, section "___ksymtab+is_firmware_framebuffer", align 4
@__kstrtab_remove_conflicting_pci_framebuffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_remove_conflicting_pci_framebuffers = external dso_local constant [0 x i8], align 1
@__ksymtab_remove_conflicting_pci_framebuffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @remove_conflicting_pci_framebuffers to i32), ptr @__kstrtab_remove_conflicting_pci_framebuffers, ptr @__kstrtabns_remove_conflicting_pci_framebuffers }, section "___ksymtab+remove_conflicting_pci_framebuffers", align 4
@__kstrtab_register_framebuffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_framebuffer = external dso_local constant [0 x i8], align 1
@__ksymtab_register_framebuffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_framebuffer to i32), ptr @__kstrtab_register_framebuffer, ptr @__kstrtabns_register_framebuffer }, section "___ksymtab+register_framebuffer", align 4
@__kstrtab_unregister_framebuffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_framebuffer = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_framebuffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_framebuffer to i32), ptr @__kstrtab_unregister_framebuffer, ptr @__kstrtabns_unregister_framebuffer }, section "___ksymtab+unregister_framebuffer", align 4
@ignore_console_lock_warning = external dso_local global %struct.atomic_t, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"drivers/video/fbdev/core/fbmem.c\00", align 1
@__kstrtab_fb_set_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_set_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_set_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_set_suspend to i32), ptr @__kstrtab_fb_set_suspend, ptr @__kstrtabns_fb_set_suspend }, section "___ksymtab+fb_set_suspend", align 4
@__initcall__kmod_fb__267_1990_fbmem_init4 = internal global ptr @fbmem_init, section ".initcall4.init", align 4
@__UNIQUE_ID_file268 = internal constant [36 x i8] c"fb.file=drivers/video/fbdev/core/fb\00", section ".modinfo", align 1
@__UNIQUE_ID_license269 = internal constant [15 x i8] c"fb.license=GPL\00", section ".modinfo", align 1
@fb_center_logo = dso_local local_unnamed_addr global i8 0, section ".data..read_mostly", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"\016fb%d: switching to %s from %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"\017checking generic (%llx %llx) vs hw (%llx %llx)\0A\00", align 1
@do_register_framebuffer.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"&fb_info->lock\00", align 1
@do_register_framebuffer.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"&fb_info->mm_lock\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"fb%d\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"\014Unable to create device for framebuffer %d; errno = %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"\013%s: enable CONFIG_FB_BIG_ENDIAN to support this framebuffer\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"fb\00", align 1
@proc_fb_seq_ops = internal constant %struct.seq_operations { ptr @fb_seq_start, ptr @fb_seq_stop, ptr @fb_seq_next, ptr @fb_seq_show }, align 4
@fb_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @fb_read, ptr @fb_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fb_ioctl, ptr null, ptr @fb_mmap, i32 0, ptr @fb_open, ptr null, ptr @fb_release, ptr @fb_deferred_io_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [36 x i8] c"unable to get major %d for fb devs\0A\00", align 1
@fbmem_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"graphics\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"\014Unable to create fb class; errno = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%d %s\0A\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_file268, ptr @__UNIQUE_ID_license269, ptr @__UNIQUE_ID_lockless_register_fb266, ptr @__UNIQUE_ID_lockless_register_fbtype265, ptr @__initcall__kmod_fb__267_1990_fbmem_init4, ptr @__ksymtab_fb_blank, ptr @__ksymtab_fb_class, ptr @__ksymtab_fb_get_buffer_offset, ptr @__ksymtab_fb_get_color_depth, ptr @__ksymtab_fb_pad_aligned_buffer, ptr @__ksymtab_fb_pad_unaligned_buffer, ptr @__ksymtab_fb_pan_display, ptr @__ksymtab_fb_prepare_logo, ptr @__ksymtab_fb_set_suspend, ptr @__ksymtab_fb_set_var, ptr @__ksymtab_fb_show_logo, ptr @__ksymtab_is_firmware_framebuffer, ptr @__ksymtab_num_registered_fb, ptr @__ksymtab_register_framebuffer, ptr @__ksymtab_registered_fb, ptr @__ksymtab_remove_conflicting_framebuffers, ptr @__ksymtab_remove_conflicting_pci_framebuffers, ptr @__ksymtab_unregister_framebuffer, ptr @__param_lockless_register_fb], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @fb_get_color_depth(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.fb_fix_screeninfo, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 9
  %8 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 9, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 10
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 10, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 8, i32 1
  %16 = load i32, ptr %15, align 4
  br label %29

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 8, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %9, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i32, ptr %7, align 4
  %24 = load i32, ptr %10, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, ptr %18, align 4
  %28 = icmp eq i32 %23, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %26, %22, %17, %14
  %30 = phi i32 [ %16, %14 ], [ %9, %26 ], [ %9, %22 ], [ %20, %17 ]
  %31 = add i32 %12, %9
  %32 = add i32 %31, %30
  br label %33

33:                                               ; preds = %29, %26, %2
  %34 = phi i32 [ %32, %29 ], [ 1, %2 ], [ %9, %26 ]
  ret i32 %34
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fb_pad_aligned_buffer(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = sub i32 %1, %3
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %5
  %9 = icmp eq i32 %3, 0
  br label %10

10:                                               ; preds = %24, %8
  %11 = phi i32 [ %4, %8 ], [ %14, %24 ]
  %12 = phi ptr [ %0, %8 ], [ %27, %24 ]
  %13 = phi ptr [ %2, %8 ], [ %25, %24 ]
  %14 = add i32 %11, -1
  br i1 %9, label %24, label %15

15:                                               ; preds = %15, %10
  %16 = phi i32 [ %22, %15 ], [ 0, %10 ]
  %17 = phi ptr [ %21, %15 ], [ %12, %10 ]
  %18 = phi ptr [ %19, %15 ], [ %13, %10 ]
  %19 = getelementptr i8, ptr %18, i32 1
  %20 = load i8, ptr %18, align 1
  %21 = getelementptr i8, ptr %17, i32 1
  store i8 %20, ptr %17, align 1
  %22 = add nuw i32 %16, 1
  %23 = icmp eq i32 %22, %3
  br i1 %23, label %24, label %15

24:                                               ; preds = %15, %10
  %25 = phi ptr [ %13, %10 ], [ %19, %15 ]
  %26 = phi ptr [ %12, %10 ], [ %21, %15 ]
  %27 = getelementptr i8, ptr %26, i32 %6
  %28 = icmp eq i32 %14, 0
  br i1 %28, label %29, label %10

29:                                               ; preds = %24, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fb_pad_unaligned_buffer(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #2 {
  %9 = icmp eq i32 %4, 0
  br i1 %9, label %62, label %10

10:                                               ; preds = %8
  %11 = shl i32 4095, %5
  %12 = icmp eq i32 %3, 0
  %13 = trunc i32 %11 to i8
  %14 = icmp ult i32 %5, %7
  %15 = add i32 %3, 1
  br label %16

16:                                               ; preds = %58, %10
  %17 = phi i32 [ %4, %10 ], [ %20, %58 ]
  %18 = phi ptr [ %0, %10 ], [ %60, %58 ]
  %19 = phi ptr [ %2, %10 ], [ %59, %58 ]
  %20 = add i32 %17, -1
  br i1 %12, label %42, label %21

21:                                               ; preds = %16
  %22 = load i8, ptr %18, align 1
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i8 [ %37, %23 ], [ %22, %21 ]
  %25 = phi i32 [ %38, %23 ], [ 0, %21 ]
  %26 = phi ptr [ %40, %23 ], [ %19, %21 ]
  %27 = getelementptr i8, ptr %18, i32 %25
  %28 = and i8 %24, %13
  %29 = load i8, ptr %26, align 1
  %30 = zext i8 %29 to i32
  %31 = lshr i32 %30, %6
  %32 = trunc i32 %31 to i8
  %33 = or i8 %28, %32
  store i8 %33, ptr %27, align 1
  %34 = load i8, ptr %26, align 1
  %35 = zext i8 %34 to i32
  %36 = shl i32 %35, %5
  %37 = trunc i32 %36 to i8
  %38 = add nuw i32 %25, 1
  %39 = getelementptr i8, ptr %18, i32 %38
  store i8 %37, ptr %39, align 1
  %40 = getelementptr i8, ptr %26, i32 1
  %41 = icmp eq i32 %38, %3
  br i1 %41, label %42, label %23

42:                                               ; preds = %23, %16
  %43 = phi ptr [ %19, %16 ], [ %40, %23 ]
  %44 = getelementptr i8, ptr %18, i32 %3
  %45 = load i8, ptr %44, align 1
  %46 = and i8 %45, %13
  %47 = load i8, ptr %43, align 1
  %48 = zext i8 %47 to i32
  %49 = lshr i32 %48, %6
  %50 = trunc i32 %49 to i8
  %51 = or i8 %46, %50
  store i8 %51, ptr %44, align 1
  br i1 %14, label %52, label %58

52:                                               ; preds = %42
  %53 = load i8, ptr %43, align 1
  %54 = zext i8 %53 to i32
  %55 = shl i32 %54, %5
  %56 = trunc i32 %55 to i8
  %57 = getelementptr i8, ptr %18, i32 %15
  store i8 %56, ptr %57, align 1
  br label %58

58:                                               ; preds = %52, %42
  %59 = getelementptr i8, ptr %43, i32 1
  %60 = getelementptr i8, ptr %18, i32 %1
  %61 = icmp eq i32 %20, 0
  br i1 %61, label %62, label %16

62:                                               ; preds = %58, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fb_get_buffer_offset(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #3 {
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.fb_pixmap, ptr %1, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 20
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fb_ops, ptr %11, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = and i32 %6, 256
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %48, label %18

18:                                               ; preds = %9
  %19 = tail call i32 %13(ptr noundef %0) #16
  br label %48

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.fb_pixmap, ptr %1, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, -1
  %24 = getelementptr inbounds %struct.fb_pixmap, ptr %1, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %23, %25
  %27 = sub i32 0, %22
  %28 = and i32 %26, %27
  %29 = add i32 %28, %2
  %30 = getelementptr inbounds %struct.fb_pixmap, ptr %1, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp ugt i32 %29, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 20
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.fb_ops, ptr %35, i32 0, i32 15
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  %39 = and i32 %6, 256
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %44, label %42

42:                                               ; preds = %33
  %43 = tail call i32 %37(ptr noundef %0) #16
  br label %44

44:                                               ; preds = %42, %33, %20
  %45 = phi i32 [ %28, %20 ], [ 0, %42 ], [ 0, %33 ]
  %46 = add i32 %45, %2
  store i32 %46, ptr %24, align 4
  %47 = getelementptr i8, ptr %4, i32 %45
  br label %48

48:                                               ; preds = %44, %18, %9
  %49 = phi ptr [ %47, %44 ], [ %4, %18 ], [ %4, %9 ]
  ret ptr %49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @fb_prepare_logo(ptr nocapture readnone %0, i32 %1) #4 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @fb_show_logo(ptr nocapture readnone %0, i32 %1) #4 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fb_pan_display(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 25
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 8
  %16 = load i16, ptr %15, align 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %14
  %19 = zext i16 %16 to i32
  %20 = urem i32 %7, %19
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 0, i32 %5
  %23 = select i1 %21, i32 0, i32 -22
  br label %33

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 7
  %26 = load i16, ptr %25, align 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = zext i16 %26 to i32
  %30 = urem i32 %7, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28, %24
  br label %33

33:                                               ; preds = %32, %28, %18, %14, %2
  %34 = phi i32 [ %5, %32 ], [ %5, %28 ], [ %5, %2 ], [ %5, %14 ], [ %22, %18 ]
  %35 = phi i32 [ -22, %32 ], [ 0, %28 ], [ 0, %2 ], [ -22, %14 ], [ %23, %18 ]
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 6
  %41 = load i16, ptr %40, align 4
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %83, label %43

43:                                               ; preds = %39
  %44 = zext i16 %41 to i32
  %45 = urem i32 %37, %44
  %46 = icmp eq i32 %45, 0
  %47 = icmp eq i32 %35, 0
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %51, label %83

49:                                               ; preds = %33
  %50 = icmp eq i32 %35, 0
  br i1 %50, label %51, label %83

51:                                               ; preds = %49, %43
  %52 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 20
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.fb_ops, ptr %53, i32 0, i32 10
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %83, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = sub i32 %59, %34
  %61 = icmp ugt i32 %7, %60
  br i1 %61, label %83, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %3, align 4
  %66 = sub i32 %64, %65
  %67 = icmp ugt i32 %37, %66
  br i1 %67, label %83, label %68

68:                                               ; preds = %62
  %69 = tail call i32 %55(ptr noundef %1, ptr noundef %0) #16
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load i32, ptr %36, align 4
  %73 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 4
  store i32 %72, ptr %73, align 4
  %74 = load i32, ptr %6, align 4
  %75 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 5
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 25
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 256
  %79 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 25
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, -257
  %82 = or i32 %81, %78
  store i32 %82, ptr %79, align 4
  br label %83

83:                                               ; preds = %71, %68, %62, %57, %51, %49, %43, %39
  %84 = phi i32 [ -22, %62 ], [ -22, %57 ], [ -22, %51 ], [ -22, %49 ], [ %69, %68 ], [ -22, %39 ], [ -22, %43 ], [ 0, %71 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fb_set_var(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca %struct.fb_var_screeninfo, align 4
  %4 = alloca %struct.fb_videomode, align 4
  %5 = alloca %struct.fb_event, align 8
  %6 = alloca %struct.fb_videomode, align 4
  %7 = alloca %struct.fb_videomode, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %4, i8 0, i32 56, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store i64 0, ptr %5, align 8, !annotation !8
  %8 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %6, i8 0, i32 56, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %7, i8 0, i32 56, i1 false), !annotation !8
  call void @fb_var_to_videomode(ptr noundef nonnull %6, ptr noundef %1) #16
  %13 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6
  call void @fb_var_to_videomode(ptr noundef nonnull %7, ptr noundef %13) #16
  %14 = call i32 @fb_mode_is_equal(ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = call i32 @fbcon_mode_deleted(ptr noundef %0, ptr noundef nonnull %6) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 13
  call void @fb_delete_videomode(ptr noundef nonnull %6, ptr noundef %20) #16
  br label %21

21:                                               ; preds = %19, %16, %12
  %22 = phi i32 [ 0, %19 ], [ -22, %12 ], [ -22, %16 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #16
  br label %160

23:                                               ; preds = %2
  %24 = and i32 %9, 128
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6
  %28 = tail call i32 @bcmp(ptr noundef dereferenceable(160) %27, ptr noundef dereferenceable(160) %1, i32 160)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %160, label %30

30:                                               ; preds = %26, %23
  %31 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 13
  %32 = load i16, ptr %31, align 4
  %33 = and i16 %32, 1
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %87, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %37, 1
  br i1 %38, label %39, label %87

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 8
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %160

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 9
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %160

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 10
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %160

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 11
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %160

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 8, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %160

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 9, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %160

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 10, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %160

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 11, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %160

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 8, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %160

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 9, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %160

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 10, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %160

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 11, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %160

87:                                               ; preds = %83, %35, %30
  %88 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 20
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.fb_ops, ptr %89, i32 0, i32 5
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(160) %1, ptr noundef align 4 dereferenceable(160) %94, i32 160, i1 false)
  br label %160

95:                                               ; preds = %87
  %96 = load i32, ptr %1, align 4
  %97 = icmp ult i32 %96, 8
  br i1 %97, label %160, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = icmp ult i32 %100, 8
  br i1 %101, label %160, label %102

102:                                              ; preds = %98
  %103 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %96, i32 %100)
  %104 = extractvalue { i32, i1 } %103, 1
  br i1 %104, label %160, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 3
  %109 = load i32, ptr %108, align 4
  %110 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %107, i32 %109)
  %111 = extractvalue { i32, i1 } %110, 1
  br i1 %111, label %160, label %112

112:                                              ; preds = %105
  %113 = tail call i32 %91(ptr noundef %1, ptr noundef %0) #16
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %160

115:                                              ; preds = %112
  %116 = load i32, ptr %8, align 4
  %117 = and i32 %116, 15
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %160

119:                                              ; preds = %115
  %120 = load ptr, ptr %88, align 4
  %121 = getelementptr inbounds %struct.fb_ops, ptr %120, i32 0, i32 19
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = tail call fastcc i32 @fb_check_caps(ptr noundef %0, ptr noundef %1, i32 noundef %9)
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %160

127:                                              ; preds = %124
  %128 = load ptr, ptr %88, align 4
  br label %129

129:                                              ; preds = %127, %119
  %130 = phi ptr [ %128, %127 ], [ %120, %119 ]
  %131 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %3, ptr noundef align 4 dereferenceable(160) %131, i32 160, i1 false)
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(160) %131, ptr noundef align 4 dereferenceable(160) %1, i32 160, i1 false)
  %132 = getelementptr inbounds %struct.fb_ops, ptr %130, i32 0, i32 6
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %140, label %135

135:                                              ; preds = %129
  %136 = tail call i32 %133(ptr noundef %0) #16
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(160) %131, ptr noundef nonnull align 4 dereferenceable(160) %3, i32 160, i1 false)
  %139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %136) #17
  br label %160

140:                                              ; preds = %135, %129
  %141 = tail call i32 @fb_pan_display(ptr noundef %0, ptr noundef %131)
  %142 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 12
  %143 = tail call i32 @fb_set_cmap(ptr noundef %142, ptr noundef %0) #16
  call void @fb_var_to_videomode(ptr noundef nonnull %4, ptr noundef %131) #16
  %144 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 13
  %145 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 13, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %157, label %148

148:                                              ; preds = %140
  %149 = load ptr, ptr %144, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = load volatile ptr, ptr %144, align 4
  %153 = icmp eq ptr %152, %144
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = call i32 @fb_add_videomode(ptr noundef nonnull %4, ptr noundef %144) #16
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154, %151, %148, %140
  store ptr %0, ptr %5, align 8
  %158 = getelementptr inbounds %struct.fb_event, ptr %5, i32 0, i32 1
  store ptr %4, ptr %158, align 4
  %159 = call i32 @fb_notifier_call_chain(i32 noundef 1, ptr noundef nonnull %5) #16
  br label %160

160:                                              ; preds = %157, %154, %138, %124, %115, %112, %105, %102, %98, %95, %93, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %26, %21
  %161 = phi i32 [ %22, %21 ], [ %136, %138 ], [ 0, %157 ], [ 0, %93 ], [ 0, %26 ], [ -22, %83 ], [ -22, %79 ], [ -22, %75 ], [ -22, %71 ], [ -22, %67 ], [ -22, %63 ], [ -22, %59 ], [ -22, %55 ], [ -22, %51 ], [ -22, %47 ], [ -22, %43 ], [ -22, %39 ], [ -22, %98 ], [ -22, %95 ], [ -22, %105 ], [ -22, %102 ], [ %113, %112 ], [ 0, %115 ], [ %125, %124 ], [ %155, %154 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %3)
  ret i32 %161
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_var_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_mode_is_equal(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbcon_mode_deleted(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_delete_videomode(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fb_check_caps(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = alloca %struct.fb_blit_caps, align 4
  %5 = alloca %struct.fb_blit_caps, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 12, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false)
  %6 = lshr i32 %2, 6
  %7 = and i32 %6, 1
  %8 = getelementptr inbounds %struct.fb_blit_caps, ptr %4, i32 0, i32 3
  store i32 %7, ptr %8, align 4
  call void @fbcon_get_requirement(ptr noundef %0, ptr noundef nonnull %4) #16
  %9 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fb_ops, ptr %10, i32 0, i32 19
  %12 = load ptr, ptr %11, align 4
  call void %12(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1) #16
  %13 = load i32, ptr %5, align 4
  %14 = load i32, ptr %4, align 4
  %15 = xor i32 %13, -1
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.fb_blit_caps, ptr %5, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.fb_blit_caps, ptr %4, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = xor i32 %20, -1
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.fb_blit_caps, ptr %5, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.fb_blit_caps, ptr %4, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %18, %3
  br label %33

33:                                               ; preds = %32, %26
  %34 = phi i32 [ -22, %32 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  ret i32 %34
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_cmap(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_add_videomode(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_notifier_call_chain(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fb_blank(ptr noundef %0, i32 noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_event, align 8
  store i32 %1, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = icmp sgt i32 %1, 4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store i32 4, ptr %3, align 4
  br label %7

7:                                                ; preds = %6, %2
  %8 = phi i32 [ 4, %6 ], [ %1, %2 ]
  store ptr %0, ptr %4, align 8
  %9 = getelementptr inbounds %struct.fb_event, ptr %4, i32 0, i32 1
  store ptr %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 20
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fb_ops, ptr %11, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %7
  %16 = call i32 %13(i32 noundef %8, ptr noundef %0) #16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @fb_notifier_call_chain(i32 noundef 9, ptr noundef nonnull %4) #16
  br label %20

20:                                               ; preds = %18, %15, %7
  %21 = phi i32 [ 0, %18 ], [ %16, %15 ], [ -22, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @remove_conflicting_framebuffers(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #3 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 12) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  store i32 1, ptr %7, align 8
  %10 = getelementptr inbounds %struct.apertures_struct, ptr %7, i32 0, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.apertures_struct, ptr %7, i32 2
  store i32 -1, ptr %11, align 8
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi ptr [ %0, %3 ], [ %7, %9 ]
  tail call void @mutex_lock(ptr noundef nonnull @registration_lock) #16
  tail call fastcc void @do_remove_conflicting_framebuffers(ptr noundef nonnull %13, ptr noundef %1, i1 noundef zeroext %2)
  tail call void @mutex_unlock(ptr noundef nonnull @registration_lock) #16
  br i1 %4, label %14, label %15

14:                                               ; preds = %12
  tail call void @kfree(ptr noundef nonnull %13) #16
  br label %15

15:                                               ; preds = %14, %12, %5
  %16 = phi i32 [ 0, %14 ], [ 0, %12 ], [ -12, %5 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @do_remove_conflicting_framebuffers(ptr noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 {
  %4 = icmp ne ptr %0, null
  br label %5

5:                                                ; preds = %81, %3
  %6 = phi i32 [ 0, %3 ], [ %82, %81 ]
  %7 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %81, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.fb_info, ptr %8, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 524288
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %81, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.fb_info, ptr %8, i32 0, i32 30
  %17 = load ptr, ptr %16, align 4
  %18 = icmp ne ptr %17, null
  %19 = and i1 %4, %18
  br i1 %19, label %20, label %67

20:                                               ; preds = %15
  %21 = load i32, ptr %0, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %67, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %17, align 4
  br label %25

25:                                               ; preds = %62, %23
  %26 = phi i32 [ %63, %62 ], [ %21, %23 ]
  %27 = phi i32 [ %64, %62 ], [ %24, %23 ]
  %28 = phi i32 [ %65, %62 ], [ 0, %23 ]
  %29 = getelementptr %struct.apertures_struct, ptr %0, i32 0, i32 1, i32 %28
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %62, label %31

31:                                               ; preds = %25
  %32 = getelementptr %struct.apertures_struct, ptr %0, i32 0, i32 1, i32 %28, i32 1
  %33 = load i32, ptr %29, align 4
  br label %34

34:                                               ; preds = %56, %31
  %35 = phi i32 [ %33, %31 ], [ %48, %56 ]
  %36 = phi i32 [ 0, %31 ], [ %57, %56 ]
  %37 = getelementptr %struct.apertures_struct, ptr %17, i32 0, i32 1, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr %struct.apertures_struct, ptr %17, i32 0, i32 1, i32 %36, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = zext i32 %41 to i64
  %43 = zext i32 %35 to i64
  %44 = load i32, ptr %32, align 4
  %45 = zext i32 %44 to i64
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i64 noundef %39, i64 noundef %42, i64 noundef %43, i64 noundef %45) #17
  %47 = load i32, ptr %37, align 4
  %48 = load i32, ptr %29, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %76, label %50

50:                                               ; preds = %34
  %51 = icmp ugt i32 %47, %48
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = load i32, ptr %32, align 4
  %54 = add i32 %53, %48
  %55 = icmp ult i32 %47, %54
  br i1 %55, label %76, label %56

56:                                               ; preds = %52, %50
  %57 = add nuw i32 %36, 1
  %58 = load i32, ptr %17, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %34, label %60

60:                                               ; preds = %56
  %61 = load i32, ptr %0, align 4
  br label %62

62:                                               ; preds = %60, %25
  %63 = phi i32 [ %61, %60 ], [ %26, %25 ]
  %64 = phi i32 [ %58, %60 ], [ 0, %25 ]
  %65 = add nuw i32 %28, 1
  %66 = icmp ult i32 %65, %63
  br i1 %66, label %25, label %67

67:                                               ; preds = %62, %20, %15
  %68 = and i1 %18, %2
  br i1 %68, label %69, label %81

69:                                               ; preds = %67
  %70 = load i32, ptr %17, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.apertures_struct, ptr %17, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 655360
  br i1 %75, label %76, label %81

76:                                               ; preds = %72, %52, %34
  %77 = load ptr, ptr %7, align 4
  %78 = getelementptr inbounds %struct.fb_info, ptr %77, i32 0, i32 7
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %6, ptr noundef %1, ptr noundef %78) #17
  %80 = load ptr, ptr %7, align 4
  tail call fastcc void @do_unregister_framebuffer(ptr noundef %80)
  br label %81

81:                                               ; preds = %76, %72, %69, %67, %10, %5
  %82 = add nuw nsw i32 %6, 1
  %83 = icmp eq i32 %82, 32
  br i1 %83, label %84, label %5

84:                                               ; preds = %81
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @is_firmware_framebuffer(ptr noundef %0) #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 12) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %81, label %7

7:                                                ; preds = %3
  store i32 1, ptr %5, align 8
  %8 = getelementptr inbounds %struct.apertures_struct, ptr %5, i32 0, i32 1
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.apertures_struct, ptr %5, i32 2
  store i32 -1, ptr %9, align 8
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %0, %1 ], [ %5, %7 ]
  tail call void @mutex_lock(ptr noundef nonnull @registration_lock) #16
  br label %12

12:                                               ; preds = %74, %10
  %13 = phi i1 [ true, %10 ], [ %76, %74 ]
  %14 = phi i32 [ 0, %10 ], [ %75, %74 ]
  %15 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %74, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.fb_info, ptr %16, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 524288
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %74, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.fb_info, ptr %16, i32 0, i32 30
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %74, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %11, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %74, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %25, align 4
  br label %32

32:                                               ; preds = %69, %30
  %33 = phi i32 [ %70, %69 ], [ %28, %30 ]
  %34 = phi i32 [ %71, %69 ], [ %31, %30 ]
  %35 = phi i32 [ %72, %69 ], [ 0, %30 ]
  %36 = getelementptr %struct.apertures_struct, ptr %11, i32 0, i32 1, i32 %35
  %37 = icmp eq i32 %34, 0
  br i1 %37, label %69, label %38

38:                                               ; preds = %32
  %39 = getelementptr %struct.apertures_struct, ptr %11, i32 0, i32 1, i32 %35, i32 1
  %40 = load i32, ptr %36, align 4
  br label %41

41:                                               ; preds = %63, %38
  %42 = phi i32 [ %40, %38 ], [ %55, %63 ]
  %43 = phi i32 [ 0, %38 ], [ %64, %63 ]
  %44 = getelementptr %struct.apertures_struct, ptr %25, i32 0, i32 1, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr %struct.apertures_struct, ptr %25, i32 0, i32 1, i32 %43, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = zext i32 %48 to i64
  %50 = zext i32 %42 to i64
  %51 = load i32, ptr %39, align 4
  %52 = zext i32 %51 to i64
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i64 noundef %46, i64 noundef %49, i64 noundef %50, i64 noundef %52) #17
  %54 = load i32, ptr %44, align 4
  %55 = load i32, ptr %36, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %78, label %57

57:                                               ; preds = %41
  %58 = icmp ugt i32 %54, %55
  br i1 %58, label %59, label %63

59:                                               ; preds = %57
  %60 = load i32, ptr %39, align 4
  %61 = add i32 %60, %55
  %62 = icmp ult i32 %54, %61
  br i1 %62, label %78, label %63

63:                                               ; preds = %59, %57
  %64 = add nuw i32 %43, 1
  %65 = load i32, ptr %25, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %41, label %67

67:                                               ; preds = %63
  %68 = load i32, ptr %11, align 4
  br label %69

69:                                               ; preds = %67, %32
  %70 = phi i32 [ %68, %67 ], [ %33, %32 ]
  %71 = phi i32 [ %65, %67 ], [ 0, %32 ]
  %72 = add nuw i32 %35, 1
  %73 = icmp ult i32 %72, %70
  br i1 %73, label %32, label %74

74:                                               ; preds = %69, %27, %23, %18, %12
  %75 = add nuw nsw i32 %14, 1
  %76 = icmp ult i32 %14, 31
  %77 = icmp eq i32 %75, 32
  br i1 %77, label %78, label %12

78:                                               ; preds = %74, %59, %41
  %79 = phi i1 [ %13, %41 ], [ %13, %59 ], [ %76, %74 ]
  tail call void @mutex_unlock(ptr noundef nonnull @registration_lock) #16
  br i1 %2, label %80, label %81

80:                                               ; preds = %78
  tail call void @kfree(ptr noundef %11) #16
  br label %81

81:                                               ; preds = %80, %78, %3
  %82 = phi i1 [ %79, %80 ], [ %79, %78 ], [ false, %3 ]
  ret i1 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @remove_conflicting_pci_framebuffers(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 9
  %6 = and i32 %5, 1
  %7 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 9
  %10 = and i32 %9, 1
  %11 = add nuw nsw i32 %10, %6
  %12 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 9
  %15 = and i32 %14, 1
  %16 = add nuw nsw i32 %15, %11
  %17 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %18, 9
  %20 = and i32 %19, 1
  %21 = add nuw nsw i32 %20, %16
  %22 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %23, 9
  %25 = and i32 %24, 1
  %26 = add nuw nsw i32 %25, %21
  %27 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = lshr i32 %28, 9
  %30 = and i32 %29, 1
  %31 = add nuw nsw i32 %30, %26
  %32 = shl nuw nsw i32 %31, 3
  %33 = or i32 %32, 4
  %34 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %33, i32 noundef 3520) #19
  %35 = icmp eq ptr %34, null
  br i1 %35, label %136, label %36

36:                                               ; preds = %2
  store i32 %31, ptr %34, align 64
  %37 = load i32, ptr %3, align 4
  %38 = and i32 %37, 512
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %36
  %41 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr %struct.apertures_struct, ptr %34, i32 0, i32 1, i32 0
  store i32 %42, ptr %43, align 4
  %44 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  %47 = sub i32 1, %42
  %48 = add i32 %47, %45
  %49 = select i1 %46, i32 0, i32 %48
  %50 = getelementptr %struct.apertures_struct, ptr %34, i32 0, i32 1, i32 0, i32 1
  store i32 %49, ptr %50, align 8
  br label %51

51:                                               ; preds = %40, %36
  %52 = phi i32 [ 1, %40 ], [ 0, %36 ]
  %53 = load i32, ptr %7, align 4
  %54 = and i32 %53, 512
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %51
  %57 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr %struct.apertures_struct, ptr %34, i32 0, i32 1, i32 %52
  store i32 %58, ptr %59, align 4
  %60 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  %63 = sub i32 1, %58
  %64 = add i32 %63, %61
  %65 = select i1 %62, i32 0, i32 %64
  %66 = getelementptr %struct.apertures_struct, ptr %34, i32 0, i32 1, i32 %52, i32 1
  store i32 %65, ptr %66, align 8
  %67 = add nuw nsw i32 %52, 1
  br label %68

68:                                               ; preds = %56, %51
  %69 = phi i32 [ %67, %56 ], [ %52, %51 ]
  %70 = load i32, ptr %12, align 4
  %71 = and i32 %70, 512
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %68
  %74 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2
  %75 = load i32, ptr %74, align 8
  %76 = getelementptr %struct.apertures_struct, ptr %34, i32 0, i32 1, i32 %69
  store i32 %75, ptr %76, align 4
  %77 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  %80 = sub i32 1, %75
  %81 = add i32 %80, %78
  %82 = select i1 %79, i32 0, i32 %81
  %83 = getelementptr %struct.apertures_struct, ptr %34, i32 0, i32 1, i32 %69, i32 1
  store i32 %82, ptr %83, align 8
  %84 = add nuw nsw i32 %69, 1
  br label %85

85:                                               ; preds = %73, %68
  %86 = phi i32 [ %84, %73 ], [ %69, %68 ]
  %87 = load i32, ptr %17, align 4
  %88 = and i32 %87, 512
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %85
  %91 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3
  %92 = load i32, ptr %91, align 8
  %93 = getelementptr %struct.apertures_struct, ptr %34, i32 0, i32 1, i32 %86
  store i32 %92, ptr %93, align 4
  %94 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  %97 = sub i32 1, %92
  %98 = add i32 %97, %95
  %99 = select i1 %96, i32 0, i32 %98
  %100 = getelementptr %struct.apertures_struct, ptr %34, i32 0, i32 1, i32 %86, i32 1
  store i32 %99, ptr %100, align 8
  %101 = add nuw nsw i32 %86, 1
  br label %102

102:                                              ; preds = %90, %85
  %103 = phi i32 [ %101, %90 ], [ %86, %85 ]
  %104 = load i32, ptr %22, align 4
  %105 = and i32 %104, 512
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %102
  %108 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4
  %109 = load i32, ptr %108, align 8
  %110 = getelementptr %struct.apertures_struct, ptr %34, i32 0, i32 1, i32 %103
  store i32 %109, ptr %110, align 4
  %111 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  %114 = sub i32 1, %109
  %115 = add i32 %114, %112
  %116 = select i1 %113, i32 0, i32 %115
  %117 = getelementptr %struct.apertures_struct, ptr %34, i32 0, i32 1, i32 %103, i32 1
  store i32 %116, ptr %117, align 8
  %118 = add nuw nsw i32 %103, 1
  br label %119

119:                                              ; preds = %107, %102
  %120 = phi i32 [ %118, %107 ], [ %103, %102 ]
  %121 = load i32, ptr %27, align 4
  %122 = and i32 %121, 512
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %135, label %124

124:                                              ; preds = %119
  %125 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5
  %126 = load i32, ptr %125, align 8
  %127 = getelementptr %struct.apertures_struct, ptr %34, i32 0, i32 1, i32 %120
  store i32 %126, ptr %127, align 4
  %128 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5, i32 1
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 0
  %131 = sub i32 1, %126
  %132 = add i32 %131, %129
  %133 = select i1 %130, i32 0, i32 %132
  %134 = getelementptr %struct.apertures_struct, ptr %34, i32 0, i32 1, i32 %120, i32 1
  store i32 %133, ptr %134, align 8
  br label %135

135:                                              ; preds = %124, %119
  tail call void @mutex_lock(ptr noundef nonnull @registration_lock) #16
  tail call fastcc void @do_remove_conflicting_framebuffers(ptr noundef nonnull %34, ptr noundef %1, i1 noundef zeroext false) #16
  tail call void @mutex_unlock(ptr noundef nonnull @registration_lock) #16
  tail call void @kfree(ptr noundef nonnull %34) #16
  br label %136

136:                                              ; preds = %135, %2
  %137 = phi i32 [ 0, %135 ], [ -12, %2 ]
  ret i32 %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_framebuffer(ptr noundef %0) #3 {
  %2 = alloca %struct.fb_videomode, align 4
  tail call void @mutex_lock(ptr noundef nonnull @registration_lock) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %2, i8 0, i32 56, i1 false) #16, !annotation !8
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1048576
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %8) #17
  br label %97

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 30
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7
  tail call fastcc void @do_remove_conflicting_framebuffers(ptr noundef %12, ptr noundef %13, i1 noundef zeroext false) #16
  %14 = load i32, ptr @num_registered_fb, align 4
  %15 = icmp eq i32 %14, 32
  br i1 %15, label %97, label %16

16:                                               ; preds = %10
  %17 = add i32 %14, 1
  store i32 %17, ptr @num_registered_fb, align 4
  br label %18

18:                                               ; preds = %23, %16
  %19 = phi i32 [ 0, %16 ], [ %24, %23 ]
  %20 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = add nuw nsw i32 %19, 1
  %25 = icmp eq i32 %24, 32
  br i1 %25, label %26, label %18

26:                                               ; preds = %23, %18
  %27 = phi i32 [ %19, %18 ], [ 32, %23 ]
  %28 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  store volatile i32 1, ptr %0, align 4
  %29 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %29, ptr noundef nonnull @.str.4, ptr noundef nonnull @do_register_framebuffer.__key) #16
  %30 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %30, ptr noundef nonnull @.str.6, ptr noundef nonnull @do_register_framebuffer.__key.5) #16
  %31 = load ptr, ptr @fb_class, align 4
  %32 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 21
  %33 = load ptr, ptr %32, align 4
  %34 = or i32 %27, 30408704
  %35 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %31, ptr noundef %33, i32 noundef %34, ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef %27) #16
  %36 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 22
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = ptrtoint ptr %35 to i32
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %27, i32 noundef %39) #17
  store ptr null, ptr %36, align 4
  br label %43

41:                                               ; preds = %26
  %42 = tail call i32 @fb_init_device(ptr noundef %0) #16
  br label %43

43:                                               ; preds = %41, %38
  %44 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 10
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %49 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3264, i32 noundef 8192) #18
  store ptr %49, ptr %44, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 10, i32 1
  store i32 8192, ptr %52, align 4
  %53 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 10, i32 3
  store i32 1, ptr %53, align 4
  %54 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 10, i32 4
  store i32 1, ptr %54, align 4
  %55 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 10, i32 5
  store i32 32, ptr %55, align 4
  %56 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 10, i32 6
  store i32 1, ptr %56, align 4
  br label %57

57:                                               ; preds = %51, %47, %43
  %58 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 10, i32 2
  store i32 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 10, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 -1, ptr %59, align 4
  br label %63

63:                                               ; preds = %62, %57
  %64 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 10, i32 8
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 -1, ptr %64, align 4
  br label %68

68:                                               ; preds = %67, %63
  %69 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 13
  %70 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 13, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load ptr, ptr %69, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %68
  store volatile ptr %69, ptr %69, align 4
  store ptr %69, ptr %70, align 4
  br label %77

77:                                               ; preds = %76, %73
  %78 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 31
  %79 = load i8, ptr %78, align 4, !range !9
  %80 = icmp eq i8 %79, 0
  %81 = load ptr, ptr %36, align 4
  tail call void @pm_vt_switch_required(ptr noundef %81, i1 noundef zeroext %80) #16
  %82 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6
  call void @fb_var_to_videomode(ptr noundef nonnull %2, ptr noundef %82) #16
  %83 = call i32 @fb_add_videomode(ptr noundef nonnull %2, ptr noundef %69) #16
  %84 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %27
  store ptr %0, ptr %84, align 4
  %85 = load i8, ptr @lockless_register_fb, align 1, !range !9
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  call void @console_lock() #16
  br label %90

88:                                               ; preds = %77
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ignore_console_lock_warning) #16, !srcloc !10
  %89 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ignore_console_lock_warning, ptr nonnull @ignore_console_lock_warning, i32 1, ptr nonnull elementtype(i32) @ignore_console_lock_warning) #16, !srcloc !11
  br label %90

90:                                               ; preds = %88, %87
  call void @mutex_lock(ptr noundef %29) #16
  %91 = call i32 @fbcon_fb_registered(ptr noundef %0) #16
  call void @mutex_unlock(ptr noundef %29) #16
  %92 = load i8, ptr @lockless_register_fb, align 1, !range !9
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  call void @console_unlock() #16
  br label %97

95:                                               ; preds = %90
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ignore_console_lock_warning) #16, !srcloc !10
  %96 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ignore_console_lock_warning, ptr nonnull @ignore_console_lock_warning, i32 1, ptr nonnull elementtype(i32) @ignore_console_lock_warning) #16, !srcloc !12
  br label %97

97:                                               ; preds = %95, %94, %10, %7
  %98 = phi i32 [ -38, %7 ], [ -6, %10 ], [ %91, %95 ], [ %91, %94 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #16
  call void @mutex_unlock(ptr noundef nonnull @registration_lock) #16
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_framebuffer(ptr noundef %0) #3 {
  tail call void @mutex_lock(ptr noundef nonnull @registration_lock) #16
  tail call fastcc void @do_unregister_framebuffer(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef nonnull @registration_lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @do_unregister_framebuffer(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 31
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9, !prof !13

9:                                                ; preds = %5, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1688, i32 noundef 9, ptr noundef null) #16
  br label %28

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 22
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @fb_class, align 4
  %16 = or i32 %3, 30408704
  tail call void @device_destroy(ptr noundef %15, i32 noundef %16) #16
  %17 = load ptr, ptr %11, align 4
  tail call void @pm_vt_switch_unregister(ptr noundef %17) #16
  %18 = load i32, ptr %2, align 4
  %19 = icmp ugt i32 %18, 31
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %18
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %25, label %24, !prof !13

24:                                               ; preds = %20, %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1673, i32 noundef 9, ptr noundef null) #16
  br label %27

25:                                               ; preds = %20
  tail call void @console_lock() #16
  %26 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %26) #16
  tail call void @fbcon_fb_unbind(ptr noundef %0) #16
  tail call void @mutex_unlock(ptr noundef %26) #16
  tail call void @console_unlock() #16
  br label %27

27:                                               ; preds = %25, %24
  store ptr null, ptr %11, align 4
  br label %28

28:                                               ; preds = %27, %10, %9
  %29 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 10
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 10, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void @kfree(ptr noundef nonnull %30) #16
  store ptr null, ptr %29, align 4
  br label %38

38:                                               ; preds = %37, %32, %28
  %39 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 13
  tail call void @fb_destroy_modelist(ptr noundef %39) #16
  %40 = load i32, ptr %2, align 4
  %41 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %40
  store ptr null, ptr %41, align 4
  %42 = load i32, ptr @num_registered_fb, align 4
  %43 = add i32 %42, -1
  store i32 %43, ptr @num_registered_fb, align 4
  tail call void @fb_cleanup_device(ptr noundef %0) #16
  tail call void @console_lock() #16
  tail call void @fbcon_fb_unregistered(ptr noundef %0) #16
  tail call void @console_unlock() #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #16, !srcloc !10
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #16, !srcloc !15
  %45 = extractvalue { i32, i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = icmp sgt i32 %45, 0
  br i1 %48, label %57, label %49, !prof !13

49:                                               ; preds = %47
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #16
  br label %57

50:                                               ; preds = %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  %51 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 20
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.fb_ops, ptr %52, i32 0, i32 20
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  tail call void %54(ptr noundef %0) #16
  br label %57

57:                                               ; preds = %56, %50, %49, %47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fb_set_suspend(ptr noundef %0, i32 noundef %1) #3 {
  %3 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = tail call i32 @is_console_locked() #16
  %7 = icmp eq i32 %6, 0
  %8 = load i32, ptr @oops_in_progress, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !17

11:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1920, i32 noundef 9, ptr noundef null) #16
  br label %12

12:                                               ; preds = %11, %5, %2
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  tail call void @fbcon_suspended(ptr noundef %0) #16
  %15 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 27
  store i32 1, ptr %15, align 4
  br label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 27
  store i32 0, ptr %17, align 4
  tail call void @fbcon_resumed(ptr noundef %0) #16
  br label %18

18:                                               ; preds = %16, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_console_locked() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_suspended(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_resumed(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @fbmem_init() #10 section ".init.text" {
  %1 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.11, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @proc_fb_seq_ops, i32 noundef 0, ptr noundef null) #16
  %2 = icmp eq ptr %1, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @__register_chrdev(i32 noundef 29, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.11, ptr noundef nonnull @fb_fops) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 29) #17
  br label %15

8:                                                ; preds = %3
  %9 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @fbmem_init.__key) #16
  store ptr %9, ptr @fb_class, align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = ptrtoint ptr %9 to i32
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %12) #17
  store ptr null, ptr @fb_class, align 4
  tail call void @__unregister_chrdev(i32 noundef 29, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.11) #16
  br label %15

14:                                               ; preds = %8
  tail call void @fb_console_init() #17
  br label %17

15:                                               ; preds = %11, %6
  %16 = phi i32 [ %4, %6 ], [ %12, %11 ]
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.11, ptr noundef null) #16
  br label %17

17:                                               ; preds = %15, %14, %0
  %18 = phi i32 [ %16, %15 ], [ 0, %14 ], [ -12, %0 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fb_new_modelist(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca %struct.fb_var_screeninfo, align 4
  %3 = alloca %struct.fb_videomode, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %2) #16
  %4 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %2, ptr noundef align 4 dereferenceable(160) %4, i32 160, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %3, i8 0, i32 56, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 13
  br label %10

10:                                               ; preds = %24, %8
  %11 = phi ptr [ %6, %8 ], [ %12, %24 ]
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.fb_modelist, ptr %11, i32 0, i32 1
  call void @fb_videomode_to_var(ptr noundef nonnull %2, ptr noundef %13) #16
  store i32 2, ptr %9, align 4
  %14 = call i32 @fb_set_var(ptr noundef %0, ptr noundef nonnull %2)
  call void @fb_var_to_videomode(ptr noundef nonnull %3, ptr noundef nonnull %2) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = call i32 @fb_mode_is_equal(ptr noundef %13, ptr noundef nonnull %3) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16, %10
  %20 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  call void @kfree(ptr noundef %11) #16
  br label %24

24:                                               ; preds = %19, %16
  %25 = icmp eq ptr %12, %5
  br i1 %25, label %26, label %10

26:                                               ; preds = %24, %1
  %27 = load volatile ptr, ptr %5, align 4
  %28 = icmp eq ptr %27, %5
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  call void @fbcon_new_modelist(ptr noundef %0) #16
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i32 [ 0, %29 ], [ 1, %26 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %2) #16
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_new_modelist(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_get_requirement(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_init_device(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_vt_switch_required(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbcon_fb_registered(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_destroy_modelist(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_cleanup_device(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_fb_unregistered(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_vt_switch_unregister(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_fb_unbind(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @fb_console_init() local_unnamed_addr #9 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @fb_seq_start(ptr nocapture noundef readnone %0, ptr noundef readonly %1) #3 {
  tail call void @mutex_lock(ptr noundef nonnull @registration_lock) #16
  %3 = load i64, ptr %1, align 8
  %4 = icmp slt i64 %3, 32
  %5 = select i1 %4, ptr %1, ptr null
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fb_seq_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #3 {
  tail call void @mutex_unlock(ptr noundef nonnull @registration_lock) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @fb_seq_next(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #13 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  %6 = icmp slt i64 %5, 32
  %7 = select i1 %6, ptr %2, ptr null
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fb_seq_show(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i32
  %5 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %10, ptr noundef %11) #16
  br label %12

12:                                               ; preds = %8, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fb_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #3 {
  %5 = load i64, ptr %3, align 8
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1048575
  %12 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %15 = load ptr, ptr %14, align 8
  %16 = icmp ne ptr %13, %15
  %17 = icmp eq ptr %13, null
  %18 = or i1 %17, %16
  br i1 %18, label %93, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 24
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %93, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 27
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %93

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 20
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.fb_ops, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = tail call i32 %31(ptr noundef nonnull %13, ptr noundef %1, i32 noundef %2, ptr noundef %3) #16
  br label %93

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 25
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 7, i32 2
  %41 = load i32, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = phi i32 [ %41, %39 ], [ %37, %35 ]
  %44 = icmp ugt i32 %43, %6
  br i1 %44, label %45, label %93

45:                                               ; preds = %42
  %46 = tail call i32 @llvm.umin.i32(i32 %43, i32 %2)
  %47 = add i32 %46, %6
  %48 = icmp ugt i32 %47, %43
  %49 = sub i32 %43, %6
  %50 = select i1 %48, i32 %49, i32 %46
  %51 = tail call i32 @llvm.umin.i32(i32 %50, i32 4096)
  %52 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %51, i32 noundef 3264) #19
  %53 = icmp eq ptr %52, null
  br i1 %53, label %93, label %54

54:                                               ; preds = %45
  %55 = load ptr, ptr %28, align 4
  %56 = load ptr, ptr %20, align 4
  %57 = getelementptr i8, ptr %56, i32 %6
  %58 = getelementptr inbounds %struct.fb_ops, ptr %55, i32 0, i32 15
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %54
  %62 = tail call i32 %59(ptr noundef nonnull %13) #16
  br label %63

63:                                               ; preds = %61, %54
  %64 = icmp eq i32 %50, 0
  br i1 %64, label %91, label %65

65:                                               ; preds = %82, %63
  %66 = phi i32 [ %88, %82 ], [ 0, %63 ]
  %67 = phi ptr [ %83, %82 ], [ %57, %63 ]
  %68 = phi i32 [ %89, %82 ], [ %50, %63 ]
  %69 = phi ptr [ %87, %82 ], [ %1, %63 ]
  %70 = tail call i32 @llvm.umin.i32(i32 %68, i32 4096)
  tail call void @mmiocpy(ptr noundef nonnull %52, ptr noundef %67, i32 noundef %70) #16
  %71 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %69, i32 %70, i32 -1090519040) #20, !srcloc !18
  %72 = extractvalue { i32, i32 } %71, 0
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %65
  %75 = tail call ptr @llvm.thread.pointer() #16
  %76 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 3
  %77 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %76) #21, !srcloc !19
  %78 = and i32 %77, -13
  %79 = or i32 %78, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #16, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !21
  %80 = tail call i32 @arm_copy_to_user(ptr noundef %69, ptr noundef nonnull %52, i32 noundef %70) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #16, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !21
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %74
  %83 = getelementptr i8, ptr %67, i32 %70
  %84 = zext i32 %70 to i64
  %85 = load i64, ptr %3, align 8
  %86 = add i64 %85, %84
  store i64 %86, ptr %3, align 8
  %87 = getelementptr i8, ptr %69, i32 %70
  %88 = add i32 %66, %70
  %89 = sub i32 %68, %70
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %65

91:                                               ; preds = %82, %74, %65, %63
  %92 = phi i32 [ 0, %63 ], [ %88, %82 ], [ -14, %74 ], [ -14, %65 ]
  tail call void @kfree(ptr noundef nonnull %52) #16
  br label %93

93:                                               ; preds = %91, %45, %42, %33, %23, %19, %4
  %94 = phi i32 [ %34, %33 ], [ %92, %91 ], [ -19, %19 ], [ -19, %4 ], [ -1, %23 ], [ 0, %42 ], [ -12, %45 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fb_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #3 {
  %5 = load i64, ptr %3, align 8
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1048575
  %12 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %15 = load ptr, ptr %14, align 8
  %16 = icmp ne ptr %13, %15
  %17 = icmp eq ptr %13, null
  %18 = or i1 %17, %16
  br i1 %18, label %106, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 24
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %106, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 27
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %106

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 20
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.fb_ops, ptr %29, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = tail call i32 %31(ptr noundef nonnull %13, ptr noundef %1, i32 noundef %2, ptr noundef %3) #16
  br label %106

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 25
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 7, i32 2
  %41 = load i32, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = phi i32 [ %41, %39 ], [ %37, %35 ]
  %44 = icmp ult i32 %43, %6
  br i1 %44, label %106, label %45

45:                                               ; preds = %42
  %46 = icmp ult i32 %43, %2
  %47 = select i1 %46, i32 -27, i32 -28
  %48 = tail call i32 @llvm.umin.i32(i32 %43, i32 %2)
  %49 = select i1 %46, i32 -27, i32 0
  %50 = add i32 %48, %6
  %51 = icmp ugt i32 %50, %43
  %52 = sub i32 %43, %6
  %53 = select i1 %51, i32 %52, i32 %48
  %54 = select i1 %51, i32 %47, i32 %49
  %55 = tail call i32 @llvm.umin.i32(i32 %53, i32 4096)
  %56 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %55, i32 noundef 3264) #19
  %57 = icmp eq ptr %56, null
  br i1 %57, label %106, label %58

58:                                               ; preds = %45
  %59 = load ptr, ptr %28, align 4
  %60 = load ptr, ptr %20, align 4
  %61 = getelementptr i8, ptr %60, i32 %6
  %62 = getelementptr inbounds %struct.fb_ops, ptr %59, i32 0, i32 15
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %58
  %66 = tail call i32 %63(ptr noundef nonnull %13) #16
  br label %67

67:                                               ; preds = %65, %58
  %68 = icmp eq i32 %53, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  tail call void @kfree(ptr noundef nonnull %56) #16
  br label %104

70:                                               ; preds = %91, %67
  %71 = phi i32 [ %97, %91 ], [ 0, %67 ]
  %72 = phi ptr [ %92, %91 ], [ %61, %67 ]
  %73 = phi i32 [ %98, %91 ], [ %53, %67 ]
  %74 = phi ptr [ %96, %91 ], [ %1, %67 ]
  %75 = tail call i32 @llvm.umin.i32(i32 %73, i32 4096)
  %76 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %74, i32 %75, i32 -1090519040) #20, !srcloc !22
  %77 = extractvalue { i32, i32 } %76, 0
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %87, !prof !13

79:                                               ; preds = %70
  %80 = tail call ptr @llvm.thread.pointer() #16
  %81 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 3
  %82 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %81) #21, !srcloc !19
  %83 = and i32 %82, -13
  %84 = or i32 %83, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %84) #16, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !21
  %85 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %56, ptr noundef %74, i32 noundef %75) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #16, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !21
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87, !prof !13

87:                                               ; preds = %79, %70
  %88 = phi i32 [ %85, %79 ], [ %75, %70 ]
  %89 = sub i32 %75, %88
  %90 = getelementptr i8, ptr %56, i32 %89
  tail call void @llvm.memset.p0.i32(ptr align 1 %90, i8 0, i32 %88, i1 false) #16
  br label %100

91:                                               ; preds = %79
  tail call void @mmiocpy(ptr noundef %72, ptr noundef nonnull %56, i32 noundef %75) #16
  %92 = getelementptr i8, ptr %72, i32 %75
  %93 = zext i32 %75 to i64
  %94 = load i64, ptr %3, align 8
  %95 = add i64 %94, %93
  store i64 %95, ptr %3, align 8
  %96 = getelementptr i8, ptr %74, i32 %75
  %97 = add i32 %71, %75
  %98 = sub i32 %73, %75
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %70

100:                                              ; preds = %91, %87
  %101 = phi i32 [ %71, %87 ], [ %97, %91 ]
  %102 = phi i32 [ -14, %87 ], [ %54, %91 ]
  tail call void @kfree(ptr noundef nonnull %56) #16
  %103 = icmp eq i32 %101, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100, %69
  %105 = phi i32 [ %54, %69 ], [ %102, %100 ]
  br label %106

106:                                              ; preds = %104, %100, %45, %42, %33, %23, %19, %4
  %107 = phi i32 [ %34, %33 ], [ -19, %19 ], [ -19, %4 ], [ -1, %23 ], [ -27, %42 ], [ -12, %45 ], [ %105, %104 ], [ %101, %100 ]
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fb_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_event, align 8
  %6 = alloca %struct.fb_var_screeninfo, align 4
  %7 = alloca %struct.fb_fix_screeninfo, align 4
  %8 = alloca %struct.fb_cmap, align 4
  %9 = alloca %struct.fb_cmap_user, align 4
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1048575
  %15 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %18 = load ptr, ptr %17, align 8
  %19 = icmp ne ptr %16, %18
  %20 = icmp eq ptr %16, null
  %21 = or i1 %20, %19
  br i1 %21, label %193, label %22

22:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %6, i8 0, i32 160, i1 false) #16, !annotation !8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 24, i1 false) #16, !annotation !8
  %23 = inttoptr i32 %2 to ptr
  switch i32 %1, label %177 [
    i32 17920, label %24
    i32 17921, label %39
    i32 17922, label %70
    i32 17925, label %92
    i32 17924, label %110
    i32 17926, label %130
    i32 -1069005304, label %189
    i32 17935, label %156
    i32 17936, label %158
    i32 17937, label %160
  ]

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.fb_info, ptr %16, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %25) #16
  %26 = getelementptr inbounds %struct.fb_info, ptr %16, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %6, ptr noundef align 4 dereferenceable(160) %26, i32 160, i1 false) #16
  tail call void @mutex_unlock(ptr noundef %25) #16
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 160, i32 -1090519040) #20, !srcloc !18
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %189

30:                                               ; preds = %24
  %31 = tail call ptr @llvm.thread.pointer() #16
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %32) #21, !srcloc !19
  %34 = and i32 %33, -13
  %35 = or i32 %34, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #16, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !21
  %36 = call i32 @arm_copy_to_user(ptr noundef %23, ptr noundef nonnull %6, i32 noundef 160) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #16, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !21
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 0, i32 -14
  br label %189

39:                                               ; preds = %22
  %40 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 160, i32 -1090519040) #20
  %41 = extractvalue { i32, i32 } %40, 0
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %51, !prof !13

43:                                               ; preds = %39
  %44 = tail call ptr @llvm.thread.pointer() #16
  %45 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 3
  %46 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %45) #21, !srcloc !19
  %47 = and i32 %46, -13
  %48 = or i32 %47, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #16, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !21
  %49 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %23, i32 noundef 160) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #16, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !21
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51, !prof !13

51:                                               ; preds = %43, %39
  %52 = phi i32 [ %49, %43 ], [ 160, %39 ]
  %53 = sub i32 160, %52
  %54 = getelementptr i8, ptr %6, i32 %53
  call void @llvm.memset.p0.i32(ptr align 1 %54, i8 0, i32 %52, i1 false) #16
  br label %191

55:                                               ; preds = %43
  call void @console_lock() #16
  %56 = getelementptr inbounds %struct.fb_info, ptr %16, i32 0, i32 4
  call void @mutex_lock(ptr noundef %56) #16
  %57 = call i32 @fb_set_var(ptr noundef nonnull %16, ptr noundef nonnull %6) #16
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %188

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %6, i32 0, i32 13
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 64
  %63 = icmp ne i32 %62, 0
  call void @fbcon_update_vcs(ptr noundef nonnull %16, i1 noundef zeroext %63) #16
  call void @mutex_unlock(ptr noundef %56) #16
  call void @console_unlock() #16
  %64 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %45) #21, !srcloc !19
  %65 = and i32 %64, -13
  %66 = or i32 %65, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #16, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !21
  %67 = call i32 @arm_copy_to_user(ptr noundef %23, ptr noundef nonnull %6, i32 noundef 160) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %64) #16, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !21
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, i32 0, i32 -14
  br label %189

70:                                               ; preds = %22
  %71 = getelementptr inbounds %struct.fb_info, ptr %16, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %71) #16
  %72 = getelementptr inbounds %struct.fb_info, ptr %16, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %7, ptr noundef align 4 dereferenceable(68) %72, i32 68, i1 false) #16
  %73 = getelementptr inbounds %struct.fb_info, ptr %16, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 2097152
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.fb_fix_screeninfo, ptr %7, i32 0, i32 1
  store i32 0, ptr %78, align 4
  br label %79

79:                                               ; preds = %77, %70
  tail call void @mutex_unlock(ptr noundef %71) #16
  %80 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 68, i32 -1090519040) #20, !srcloc !18
  %81 = extractvalue { i32, i32 } %80, 0
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %189

83:                                               ; preds = %79
  %84 = tail call ptr @llvm.thread.pointer() #16
  %85 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 3
  %86 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %85) #21, !srcloc !19
  %87 = and i32 %86, -13
  %88 = or i32 %87, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %88) #16, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !21
  %89 = call i32 @arm_copy_to_user(ptr noundef %23, ptr noundef nonnull %7, i32 noundef 68) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %86) #16, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !21
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, i32 0, i32 -14
  br label %189

92:                                               ; preds = %22
  %93 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 24, i32 -1090519040) #20, !srcloc !22
  %94 = extractvalue { i32, i32 } %93, 0
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %104, !prof !13

96:                                               ; preds = %92
  %97 = tail call ptr @llvm.thread.pointer() #16
  %98 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 3
  %99 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %98) #21, !srcloc !19
  %100 = and i32 %99, -13
  %101 = or i32 %100, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %101) #16, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !21
  %102 = call i32 @arm_copy_from_user(ptr noundef nonnull %9, ptr noundef %23, i32 noundef 24) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %99) #16, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !21
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %108, label %104, !prof !13

104:                                              ; preds = %96, %92
  %105 = phi i32 [ %102, %96 ], [ 24, %92 ]
  %106 = sub i32 24, %105
  %107 = getelementptr i8, ptr %9, i32 %106
  call void @llvm.memset.p0.i32(ptr align 1 %107, i8 0, i32 %105, i1 false) #16
  br label %191

108:                                              ; preds = %96
  %109 = call i32 @fb_set_user_cmap(ptr noundef nonnull %9, ptr noundef nonnull %16) #16
  br label %189

110:                                              ; preds = %22
  %111 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 24, i32 -1090519040) #20, !srcloc !22
  %112 = extractvalue { i32, i32 } %111, 0
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %122, !prof !13

114:                                              ; preds = %110
  %115 = tail call ptr @llvm.thread.pointer() #16
  %116 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 3
  %117 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %116) #21, !srcloc !19
  %118 = and i32 %117, -13
  %119 = or i32 %118, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %119) #16, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !21
  %120 = call i32 @arm_copy_from_user(ptr noundef nonnull %9, ptr noundef %23, i32 noundef 24) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %117) #16, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !21
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %126, label %122, !prof !13

122:                                              ; preds = %114, %110
  %123 = phi i32 [ %120, %114 ], [ 24, %110 ]
  %124 = sub i32 24, %123
  %125 = getelementptr i8, ptr %9, i32 %124
  call void @llvm.memset.p0.i32(ptr align 1 %125, i8 0, i32 %123, i1 false) #16
  br label %191

126:                                              ; preds = %114
  %127 = getelementptr inbounds %struct.fb_info, ptr %16, i32 0, i32 4
  call void @mutex_lock(ptr noundef %127) #16
  %128 = getelementptr inbounds %struct.fb_info, ptr %16, i32 0, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, ptr noundef align 4 dereferenceable(24) %128, i32 24, i1 false) #16
  call void @mutex_unlock(ptr noundef %127) #16
  %129 = call i32 @fb_cmap_to_user(ptr noundef nonnull %8, ptr noundef nonnull %9) #16
  br label %189

130:                                              ; preds = %22
  %131 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 160, i32 -1090519040) #20
  %132 = extractvalue { i32, i32 } %131, 0
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %142, !prof !13

134:                                              ; preds = %130
  %135 = tail call ptr @llvm.thread.pointer() #16
  %136 = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 3
  %137 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %136) #21, !srcloc !19
  %138 = and i32 %137, -13
  %139 = or i32 %138, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %139) #16, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !21
  %140 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %23, i32 noundef 160) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %137) #16, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !21
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %146, label %142, !prof !13

142:                                              ; preds = %134, %130
  %143 = phi i32 [ %140, %134 ], [ 160, %130 ]
  %144 = sub i32 160, %143
  %145 = getelementptr i8, ptr %6, i32 %144
  call void @llvm.memset.p0.i32(ptr align 1 %145, i8 0, i32 %143, i1 false) #16
  br label %191

146:                                              ; preds = %134
  call void @console_lock() #16
  %147 = getelementptr inbounds %struct.fb_info, ptr %16, i32 0, i32 4
  call void @mutex_lock(ptr noundef %147) #16
  %148 = call i32 @fb_pan_display(ptr noundef nonnull %16, ptr noundef nonnull %6) #16
  call void @mutex_unlock(ptr noundef %147) #16
  call void @console_unlock() #16
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %189

150:                                              ; preds = %146
  %151 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %136) #21, !srcloc !19
  %152 = and i32 %151, -13
  %153 = or i32 %152, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %153) #16, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !21
  %154 = call i32 @arm_copy_to_user(ptr noundef %23, ptr noundef nonnull %6, i32 noundef 160) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %151) #16, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !21
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %189, label %191

156:                                              ; preds = %22
  %157 = tail call i32 @fbcon_get_con2fb_map_ioctl(ptr noundef %23) #16
  br label %189

158:                                              ; preds = %22
  %159 = tail call i32 @fbcon_set_con2fb_map_ioctl(ptr noundef %23) #16
  br label %189

160:                                              ; preds = %22
  %161 = icmp ugt i32 %2, 4
  br i1 %161, label %191, label %162

162:                                              ; preds = %160
  tail call void @console_lock() #16
  %163 = getelementptr inbounds %struct.fb_info, ptr %16, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %163) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 %2, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store ptr %16, ptr %5, align 8
  %164 = getelementptr inbounds %struct.fb_event, ptr %5, i32 0, i32 1
  store ptr %4, ptr %164, align 4
  %165 = getelementptr inbounds %struct.fb_info, ptr %16, i32 0, i32 20
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.fb_ops, ptr %166, i32 0, i32 9
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %175, label %170

170:                                              ; preds = %162
  %171 = call i32 %168(i32 noundef %2, ptr noundef nonnull %16) #16
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = call i32 @fb_notifier_call_chain(i32 noundef 9, ptr noundef nonnull %5) #16
  br label %175

175:                                              ; preds = %173, %170, %162
  %176 = phi i32 [ 0, %173 ], [ %171, %170 ], [ -22, %162 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @fbcon_fb_blanked(ptr noundef nonnull %16, i32 noundef %2) #16
  call void @mutex_unlock(ptr noundef %163) #16
  call void @console_unlock() #16
  br label %189

177:                                              ; preds = %22
  %178 = getelementptr inbounds %struct.fb_info, ptr %16, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %178) #16
  %179 = getelementptr inbounds %struct.fb_info, ptr %16, i32 0, i32 20
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.fb_ops, ptr %180, i32 0, i32 16
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %186, label %184

184:                                              ; preds = %177
  %185 = tail call i32 %182(ptr noundef nonnull %16, i32 noundef %1, i32 noundef %2) #16
  br label %186

186:                                              ; preds = %184, %177
  %187 = phi i32 [ %185, %184 ], [ -25, %177 ]
  tail call void @mutex_unlock(ptr noundef %178) #16
  br label %189

188:                                              ; preds = %55
  call void @mutex_unlock(ptr noundef %56) #16
  call void @console_unlock() #16
  br label %189

189:                                              ; preds = %188, %186, %175, %158, %156, %150, %146, %126, %108, %83, %79, %59, %30, %24, %22
  %190 = phi i32 [ %187, %186 ], [ %176, %175 ], [ %159, %158 ], [ %157, %156 ], [ 0, %150 ], [ %148, %146 ], [ %129, %126 ], [ %109, %108 ], [ %57, %188 ], [ -22, %22 ], [ -14, %24 ], [ -14, %79 ], [ %38, %30 ], [ %69, %59 ], [ %91, %83 ]
  br label %191

191:                                              ; preds = %189, %160, %150, %142, %122, %104, %51
  %192 = phi i32 [ %190, %189 ], [ -14, %150 ], [ -22, %160 ], [ -14, %51 ], [ -14, %104 ], [ -14, %122 ], [ -14, %142 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %6) #16
  br label %193

193:                                              ; preds = %191, %3
  %194 = phi i32 [ %192, %191 ], [ -19, %3 ]
  ret i32 %194
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fb_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1048575
  %8 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = icmp ne ptr %9, %11
  %13 = icmp eq ptr %9, null
  %14 = or i1 %13, %12
  br i1 %14, label %61, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %16) #16
  %17 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 20
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.fb_ops, ptr %18, i32 0, i32 18
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 19
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr %20, ptr @fb_deferred_io_mmap
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %15
  %27 = tail call i32 %24(ptr noundef nonnull %9, ptr noundef %1) #16
  tail call void @mutex_unlock(ptr noundef %16) #16
  br label %61

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 7, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 7, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %30, 4095
  %34 = add i32 %32, 4095
  %35 = add i32 %34, %33
  %36 = lshr i32 %35, 12
  %37 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %38 = load i32, ptr %37, align 4
  %39 = icmp ult i32 %38, %36
  br i1 %39, label %51, label %40

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 6, i32 16
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @mutex_unlock(ptr noundef %16) #16
  br label %61

45:                                               ; preds = %40
  %46 = sub i32 %38, %36
  store i32 %46, ptr %37, align 4
  %47 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 7, i32 10
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 7, i32 11
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %45, %28
  %52 = phi i32 [ %48, %45 ], [ %30, %28 ]
  %53 = phi i32 [ %50, %45 ], [ %32, %28 ]
  tail call void @mutex_unlock(ptr noundef %16) #16
  %54 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %55 = load i32, ptr %54, align 4
  %56 = tail call i32 @vm_get_page_prot(i32 noundef %55) #16
  %57 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  %58 = and i32 %56, -61
  %59 = or i32 %58, 4
  store i32 %59, ptr %57, align 4
  %60 = tail call i32 @vm_iomap_memory(ptr noundef %1, i32 noundef %52, i32 noundef %53) #16
  br label %61

61:                                               ; preds = %51, %44, %26, %2
  %62 = phi i32 [ %27, %26 ], [ -22, %44 ], [ %60, %51 ], [ -19, %2 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fb_open(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1048575
  %6 = icmp ugt i32 %5, 31
  br i1 %6, label %39, label %7

7:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @registration_lock) #16
  %8 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #16, !srcloc !10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #16, !srcloc !23
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !24

15:                                               ; preds = %11
  %16 = add i32 %13, 1
  %17 = or i32 %16, %13
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %36, label %19, !prof !13

19:                                               ; preds = %15, %11
  %20 = phi i32 [ 2, %11 ], [ 1, %15 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %9, i32 noundef %20) #16
  br label %36

21:                                               ; preds = %7
  tail call void @mutex_unlock(ptr noundef nonnull @registration_lock) #16
  %22 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.7, i32 noundef %5) #16
  tail call void @mutex_lock(ptr noundef nonnull @registration_lock) #16
  %23 = load ptr, ptr %8, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %23) #16, !srcloc !10
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %23, ptr nonnull %23, i32 1, ptr nonnull elementtype(i32) %23) #16, !srcloc !23
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29, !prof !24

29:                                               ; preds = %25
  %30 = add i32 %27, 1
  %31 = or i32 %30, %27
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %36, label %33, !prof !13

33:                                               ; preds = %29, %25
  %34 = phi i32 [ 2, %25 ], [ 1, %29 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %23, i32 noundef %34) #16
  br label %36

35:                                               ; preds = %21
  tail call void @mutex_unlock(ptr noundef nonnull @registration_lock) #16
  br label %83

36:                                               ; preds = %33, %29, %19, %15
  %37 = phi ptr [ %9, %15 ], [ %9, %19 ], [ %23, %29 ], [ %23, %33 ]
  tail call void @mutex_unlock(ptr noundef nonnull @registration_lock) #16
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %2
  %40 = phi ptr [ %37, %36 ], [ inttoptr (i32 -19 to ptr), %2 ]
  %41 = ptrtoint ptr %40 to i32
  br label %83

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.fb_info, ptr %37, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %43) #16
  %44 = getelementptr inbounds %struct.fb_info, ptr %37, i32 0, i32 20
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %45, align 4
  %47 = tail call zeroext i1 @try_module_get(ptr noundef %46) #16
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  tail call void @mutex_unlock(ptr noundef %43) #16
  br label %69

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %37, ptr %50, align 8
  %51 = load ptr, ptr %44, align 4
  %52 = getelementptr inbounds %struct.fb_ops, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = tail call i32 %53(ptr noundef nonnull %37, i32 noundef 1) #16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %44, align 4
  %60 = load ptr, ptr %59, align 4
  tail call void @module_put(ptr noundef %60) #16
  br label %61

61:                                               ; preds = %58, %55, %49
  %62 = phi i32 [ %56, %58 ], [ 0, %55 ], [ 0, %49 ]
  %63 = getelementptr inbounds %struct.fb_info, ptr %37, i32 0, i32 19
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  tail call void @fb_deferred_io_open(ptr noundef nonnull %37, ptr noundef %0, ptr noundef %1) #16
  br label %67

67:                                               ; preds = %66, %61
  tail call void @mutex_unlock(ptr noundef %43) #16
  %68 = icmp eq i32 %62, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %67, %48
  %70 = phi i32 [ -19, %48 ], [ %62, %67 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %37) #16, !srcloc !10
  %71 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %37, ptr nonnull %37, i32 1, ptr nonnull elementtype(i32) %37) #16, !srcloc !15
  %72 = extractvalue { i32, i32, i32 } %71, 0
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = icmp sgt i32 %72, 0
  br i1 %75, label %83, label %76, !prof !13

76:                                               ; preds = %74
  tail call void @refcount_warn_saturate(ptr noundef nonnull %37, i32 noundef 3) #16
  br label %83

77:                                               ; preds = %69
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  %78 = load ptr, ptr %44, align 4
  %79 = getelementptr inbounds %struct.fb_ops, ptr %78, i32 0, i32 20
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  tail call void %80(ptr noundef nonnull %37) #16
  br label %83

83:                                               ; preds = %82, %77, %76, %74, %67, %39, %35
  %84 = phi i32 [ %41, %39 ], [ -19, %35 ], [ 0, %67 ], [ %70, %74 ], [ %70, %76 ], [ %70, %77 ], [ %70, %82 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fb_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fb_ops, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = tail call i32 %9(ptr noundef %4, i32 noundef 1) #16
  %13 = load ptr, ptr %6, align 4
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi ptr [ %13, %11 ], [ %7, %2 ]
  %16 = load ptr, ptr %15, align 4
  tail call void @module_put(ptr noundef %16) #16
  tail call void @mutex_unlock(ptr noundef %5) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #16, !srcloc !10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #16, !srcloc !15
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = icmp sgt i32 %18, 0
  br i1 %21, label %29, label %22, !prof !13

22:                                               ; preds = %20
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #16
  br label %29

23:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr inbounds %struct.fb_ops, ptr %24, i32 0, i32 20
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void %26(ptr noundef %4) #16
  br label %29

29:                                               ; preds = %28, %23, %22, %20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_deferred_io_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_update_vcs(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_user_cmap(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_cmap_to_user(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbcon_get_con2fb_map_ioctl(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbcon_set_con2fb_map_ioctl(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_fb_blanked(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_deferred_io_mmap(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_iomap_memory(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_deferred_io_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind readonly }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 587655, i64 2148077626, i64 2148077652, i64 2148077699, i64 2148077721, i64 2148077749, i64 2148077769}
!11 = !{i64 2148089041, i64 2148089067, i64 2148089096, i64 2148089130, i64 2148089161, i64 2148089184}
!12 = !{i64 2148091398, i64 2148091424, i64 2148091453, i64 2148091487, i64 2148091518, i64 2148091541}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148190721}
!15 = !{i64 2148092856, i64 2148092888, i64 2148092917, i64 2148092951, i64 2148092982, i64 2148093005}
!16 = !{i64 2149040168}
!17 = !{!"branch_weights", i32 1, i32 4001}
!18 = !{i64 2151374720, i64 2151374745}
!19 = !{i64 3870254}
!20 = !{i64 3870451}
!21 = !{i64 2151355730}
!22 = !{i64 2151374142, i64 2151374167}
!23 = !{i64 2148090499, i64 2148090531, i64 2148090560, i64 2148090594, i64 2148090625, i64 2148090648}
!24 = !{!"branch_weights", i32 1, i32 2000}
