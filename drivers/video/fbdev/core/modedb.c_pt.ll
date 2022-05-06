; ModuleID = '/llk/IR/drivers/video/fbdev/core/modedb.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/modedb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vesa_modes:\09\09\09\09\09"
module asm "\09.asciz \09\22vesa_modes\22\09\09\09\09\09"
module asm "__kstrtabns_vesa_modes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dmt_modes:\09\09\09\09\09"
module asm "\09.asciz \09\22dmt_modes\22\09\09\09\09\09"
module asm "__kstrtabns_dmt_modes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_destroy_modelist:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_destroy_modelist\22\09\09\09\09\09"
module asm "__kstrtabns_fb_destroy_modelist:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_find_best_display:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_find_best_display\22\09\09\09\09\09"
module asm "__kstrtabns_fb_find_best_display:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_videomode_to_var:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_videomode_to_var\22\09\09\09\09\09"
module asm "__kstrtabns_fb_videomode_to_var:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_var_to_videomode:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_var_to_videomode\22\09\09\09\09\09"
module asm "__kstrtabns_fb_var_to_videomode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_mode_is_equal:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_mode_is_equal\22\09\09\09\09\09"
module asm "__kstrtabns_fb_mode_is_equal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_add_videomode:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_add_videomode\22\09\09\09\09\09"
module asm "__kstrtabns_fb_add_videomode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_match_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_match_mode\22\09\09\09\09\09"
module asm "__kstrtabns_fb_match_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_find_best_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_find_best_mode\22\09\09\09\09\09"
module asm "__kstrtabns_fb_find_best_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_find_nearest_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_find_nearest_mode\22\09\09\09\09\09"
module asm "__kstrtabns_fb_find_nearest_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_videomode_to_modelist:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_videomode_to_modelist\22\09\09\09\09\09"
module asm "__kstrtabns_fb_videomode_to_modelist:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_find_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_find_mode\22\09\09\09\09\09"
module asm "__kstrtabns_fb_find_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_find_mode_cvt:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_find_mode_cvt\22\09\09\09\09\09"
module asm "__kstrtabns_fb_find_mode_cvt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dmt_videomode = type { i32, i32, i32, ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_modelist = type { %struct.list_head, %struct.fb_videomode }

@vesa_modes = dso_local constant [43 x %struct.fb_videomode] [%struct.fb_videomode { ptr null, i32 85, i32 640, i32 350, i32 31746, i32 96, i32 32, i32 60, i32 32, i32 64, i32 3, i32 1, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 85, i32 640, i32 400, i32 31746, i32 96, i32 32, i32 41, i32 1, i32 64, i32 3, i32 2, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 85, i32 721, i32 400, i32 28169, i32 108, i32 36, i32 42, i32 1, i32 72, i32 3, i32 2, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 60, i32 640, i32 480, i32 39682, i32 48, i32 16, i32 33, i32 10, i32 96, i32 2, i32 0, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 72, i32 640, i32 480, i32 31746, i32 128, i32 24, i32 29, i32 9, i32 40, i32 2, i32 0, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 75, i32 640, i32 480, i32 31746, i32 120, i32 16, i32 16, i32 1, i32 64, i32 3, i32 0, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 85, i32 640, i32 480, i32 27777, i32 80, i32 56, i32 25, i32 1, i32 56, i32 3, i32 0, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 56, i32 800, i32 600, i32 27777, i32 128, i32 24, i32 22, i32 1, i32 72, i32 2, i32 3, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 60, i32 800, i32 600, i32 25000, i32 88, i32 40, i32 23, i32 1, i32 128, i32 4, i32 3, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 72, i32 800, i32 600, i32 20000, i32 64, i32 56, i32 23, i32 37, i32 120, i32 6, i32 3, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 75, i32 800, i32 600, i32 20202, i32 160, i32 16, i32 21, i32 1, i32 80, i32 3, i32 3, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 85, i32 800, i32 600, i32 17761, i32 152, i32 32, i32 27, i32 1, i32 64, i32 3, i32 3, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 43, i32 1024, i32 768, i32 22271, i32 56, i32 8, i32 41, i32 0, i32 176, i32 8, i32 3, i32 1, i32 4 }, %struct.fb_videomode { ptr null, i32 60, i32 1024, i32 768, i32 15384, i32 160, i32 24, i32 29, i32 3, i32 136, i32 6, i32 0, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 70, i32 1024, i32 768, i32 13333, i32 144, i32 24, i32 29, i32 3, i32 136, i32 6, i32 0, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 75, i32 1024, i32 768, i32 12690, i32 176, i32 16, i32 28, i32 1, i32 96, i32 3, i32 3, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 85, i32 1024, i32 768, i32 10582, i32 208, i32 48, i32 36, i32 1, i32 96, i32 3, i32 3, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 75, i32 1152, i32 864, i32 9259, i32 256, i32 64, i32 32, i32 1, i32 128, i32 3, i32 3, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 60, i32 1280, i32 960, i32 9259, i32 312, i32 96, i32 36, i32 1, i32 112, i32 3, i32 3, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 85, i32 1280, i32 960, i32 6734, i32 224, i32 64, i32 47, i32 1, i32 160, i32 3, i32 3, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 60, i32 1280, i32 1024, i32 9259, i32 248, i32 48, i32 38, i32 1, i32 112, i32 3, i32 3, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 75, i32 1280, i32 1024, i32 7407, i32 248, i32 16, i32 38, i32 1, i32 144, i32 3, i32 3, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 85, i32 1280, i32 1024, i32 6349, i32 224, i32 64, i32 44, i32 1, i32 160, i32 3, i32 3, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 60, i32 1600, i32 1200, i32 6172, i32 304, i32 64, i32 46, i32 1, i32 192, i32 3, i32 3, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 65, i32 1600, i32 1200, i32 5698, i32 304, i32 64, i32 46, i32 1, i32 192, i32 3, i32 3, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 70, i32 1600, i32 1200, i32 5291, i32 304, i32 64, i32 46, i32 1, i32 192, i32 3, i32 3, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 75, i32 1600, i32 1200, i32 4938, i32 304, i32 64, i32 46, i32 1, i32 192, i32 3, i32 3, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 85, i32 1600, i32 1200, i32 4357, i32 304, i32 64, i32 46, i32 1, i32 192, i32 3, i32 3, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 60, i32 1792, i32 1344, i32 4882, i32 328, i32 128, i32 46, i32 1, i32 200, i32 3, i32 2, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 75, i32 1792, i32 1344, i32 3831, i32 352, i32 96, i32 69, i32 1, i32 216, i32 3, i32 2, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 60, i32 1856, i32 1392, i32 4580, i32 352, i32 96, i32 43, i32 1, i32 224, i32 3, i32 2, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 75, i32 1856, i32 1392, i32 3472, i32 352, i32 128, i32 104, i32 1, i32 224, i32 3, i32 2, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 60, i32 1920, i32 1440, i32 4273, i32 344, i32 128, i32 56, i32 1, i32 200, i32 3, i32 2, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 75, i32 1920, i32 1440, i32 3367, i32 352, i32 144, i32 56, i32 1, i32 224, i32 3, i32 2, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 60, i32 1920, i32 1200, i32 6493, i32 80, i32 48, i32 26, i32 3, i32 32, i32 6, i32 2, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 60, i32 1920, i32 1200, i32 5174, i32 336, i32 136, i32 36, i32 3, i32 200, i32 6, i32 2, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 75, i32 1920, i32 1200, i32 4077, i32 344, i32 136, i32 46, i32 3, i32 208, i32 6, i32 2, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 85, i32 1920, i32 1200, i32 3555, i32 352, i32 144, i32 53, i32 3, i32 208, i32 6, i32 2, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 60, i32 2560, i32 1600, i32 3724, i32 80, i32 48, i32 37, i32 3, i32 32, i32 6, i32 1, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 60, i32 2560, i32 1600, i32 2869, i32 472, i32 192, i32 49, i32 3, i32 280, i32 6, i32 2, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 75, i32 2560, i32 1600, i32 2256, i32 488, i32 208, i32 63, i32 3, i32 280, i32 6, i32 2, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 85, i32 2560, i32 1600, i32 1979, i32 488, i32 208, i32 73, i32 3, i32 280, i32 6, i32 2, i32 0, i32 4 }, %struct.fb_videomode { ptr null, i32 120, i32 2560, i32 1600, i32 1809, i32 80, i32 48, i32 85, i32 3, i32 32, i32 6, i32 1, i32 0, i32 4 }], align 4
@__kstrtab_vesa_modes = external dso_local constant [0 x i8], align 1
@__kstrtabns_vesa_modes = external dso_local constant [0 x i8], align 1
@__ksymtab_vesa_modes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vesa_modes to i32), ptr @__kstrtab_vesa_modes, ptr @__kstrtabns_vesa_modes }, section "___ksymtab+vesa_modes", align 4
@dmt_modes = dso_local constant [80 x %struct.dmt_videomode] [%struct.dmt_videomode { i32 1, i32 0, i32 0, ptr @vesa_modes }, %struct.dmt_videomode { i32 2, i32 12569, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 56) }, %struct.dmt_videomode { i32 3, i32 0, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 112) }, %struct.dmt_videomode { i32 4, i32 12608, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 168) }, %struct.dmt_videomode { i32 5, i32 12620, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 224) }, %struct.dmt_videomode { i32 6, i32 12623, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 280) }, %struct.dmt_videomode { i32 7, i32 12633, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 336) }, %struct.dmt_videomode { i32 8, i32 0, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 392) }, %struct.dmt_videomode { i32 9, i32 17728, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 448) }, %struct.dmt_videomode { i32 10, i32 17740, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 504) }, %struct.dmt_videomode { i32 11, i32 17743, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 560) }, %struct.dmt_videomode { i32 12, i32 17753, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 616) }, %struct.dmt_videomode { i32 13, i32 0, i32 0, ptr null }, %struct.dmt_videomode { i32 14, i32 0, i32 0, ptr null }, %struct.dmt_videomode { i32 15, i32 0, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 672) }, %struct.dmt_videomode { i32 16, i32 24896, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 728) }, %struct.dmt_videomode { i32 17, i32 24906, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 784) }, %struct.dmt_videomode { i32 18, i32 24911, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 840) }, %struct.dmt_videomode { i32 19, i32 24921, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 896) }, %struct.dmt_videomode { i32 20, i32 0, i32 0, ptr null }, %struct.dmt_videomode { i32 21, i32 29007, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 952) }, %struct.dmt_videomode { i32 22, i32 0, i32 8330273, ptr null }, %struct.dmt_videomode { i32 23, i32 0, i32 8330280, ptr null }, %struct.dmt_videomode { i32 24, i32 0, i32 8330308, ptr null }, %struct.dmt_videomode { i32 25, i32 0, i32 8330338, ptr null }, %struct.dmt_videomode { i32 26, i32 0, i32 0, ptr null }, %struct.dmt_videomode { i32 27, i32 0, i32 9377825, ptr null }, %struct.dmt_videomode { i32 28, i32 33024, i32 9377832, ptr null }, %struct.dmt_videomode { i32 29, i32 33039, i32 9377860, ptr null }, %struct.dmt_videomode { i32 30, i32 33049, i32 9377890, ptr null }, %struct.dmt_videomode { i32 31, i32 0, i32 0, ptr null }, %struct.dmt_videomode { i32 32, i32 33088, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 1008) }, %struct.dmt_videomode { i32 33, i32 33113, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 1064) }, %struct.dmt_videomode { i32 34, i32 0, i32 0, ptr null }, %struct.dmt_videomode { i32 35, i32 33152, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 1120) }, %struct.dmt_videomode { i32 36, i32 33167, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 1176) }, %struct.dmt_videomode { i32 37, i32 33177, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 1232) }, %struct.dmt_videomode { i32 38, i32 0, i32 0, ptr null }, %struct.dmt_videomode { i32 39, i32 0, i32 0, ptr null }, %struct.dmt_videomode { i32 40, i32 0, i32 0, ptr null }, %struct.dmt_videomode { i32 41, i32 0, i32 794657, ptr null }, %struct.dmt_videomode { i32 42, i32 36928, i32 794664, ptr null }, %struct.dmt_videomode { i32 43, i32 36943, i32 794692, ptr null }, %struct.dmt_videomode { i32 44, i32 36953, i32 794722, ptr null }, %struct.dmt_videomode { i32 45, i32 0, i32 0, ptr null }, %struct.dmt_videomode { i32 46, i32 38144, i32 12654625, ptr null }, %struct.dmt_videomode { i32 47, i32 38144, i32 12654632, ptr null }, %struct.dmt_videomode { i32 48, i32 38159, i32 12654660, ptr null }, %struct.dmt_videomode { i32 49, i32 38169, i32 12654696, ptr null }, %struct.dmt_videomode { i32 50, i32 0, i32 0, ptr null }, %struct.dmt_videomode { i32 51, i32 43328, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 1288) }, %struct.dmt_videomode { i32 52, i32 43333, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 1344) }, %struct.dmt_videomode { i32 53, i32 43338, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 1400) }, %struct.dmt_videomode { i32 54, i32 43343, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 1456) }, %struct.dmt_videomode { i32 55, i32 43353, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 1512) }, %struct.dmt_videomode { i32 56, i32 0, i32 0, ptr null }, %struct.dmt_videomode { i32 57, i32 0, i32 796705, ptr null }, %struct.dmt_videomode { i32 58, i32 45824, i32 796712, ptr null }, %struct.dmt_videomode { i32 59, i32 45839, i32 796740, ptr null }, %struct.dmt_videomode { i32 60, i32 45849, i32 796776, ptr null }, %struct.dmt_videomode { i32 61, i32 0, i32 0, ptr null }, %struct.dmt_videomode { i32 62, i32 49472, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 1568) }, %struct.dmt_videomode { i32 63, i32 49487, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 1624) }, %struct.dmt_videomode { i32 64, i32 0, i32 0, ptr null }, %struct.dmt_videomode { i32 65, i32 51520, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 1680) }, %struct.dmt_videomode { i32 66, i32 51535, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 1736) }, %struct.dmt_videomode { i32 67, i32 0, i32 0, ptr null }, %struct.dmt_videomode { i32 68, i32 0, i32 5711905, ptr getelementptr (i8, ptr @vesa_modes, i64 1904) }, %struct.dmt_videomode { i32 69, i32 53504, i32 5711912, ptr getelementptr (i8, ptr @vesa_modes, i64 1960) }, %struct.dmt_videomode { i32 70, i32 53519, i32 5711940, ptr getelementptr (i8, ptr @vesa_modes, i64 2016) }, %struct.dmt_videomode { i32 71, i32 53529, i32 5711970, ptr getelementptr (i8, ptr @vesa_modes, i64 2072) }, %struct.dmt_videomode { i32 72, i32 0, i32 0, ptr null }, %struct.dmt_videomode { i32 73, i32 53568, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 1792) }, %struct.dmt_videomode { i32 74, i32 53583, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 1848) }, %struct.dmt_videomode { i32 75, i32 0, i32 0, ptr null }, %struct.dmt_videomode { i32 76, i32 0, i32 2045985, ptr getelementptr (i8, ptr @vesa_modes, i64 2128) }, %struct.dmt_videomode { i32 77, i32 0, i32 2045992, ptr getelementptr (i8, ptr @vesa_modes, i64 2184) }, %struct.dmt_videomode { i32 78, i32 0, i32 2046020, ptr getelementptr (i8, ptr @vesa_modes, i64 2240) }, %struct.dmt_videomode { i32 79, i32 0, i32 2046050, ptr getelementptr (i8, ptr @vesa_modes, i64 2296) }, %struct.dmt_videomode { i32 80, i32 0, i32 0, ptr getelementptr (i8, ptr @vesa_modes, i64 2352) }], align 4
@__kstrtab_dmt_modes = external dso_local constant [0 x i8], align 1
@__kstrtabns_dmt_modes = external dso_local constant [0 x i8], align 1
@__ksymtab_dmt_modes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dmt_modes to i32), ptr @__kstrtab_dmt_modes, ptr @__kstrtabns_dmt_modes }, section "___ksymtab+dmt_modes", align 4
@modedb = internal constant [60 x %struct.fb_videomode] [%struct.fb_videomode { ptr null, i32 70, i32 640, i32 400, i32 39721, i32 40, i32 24, i32 39, i32 9, i32 96, i32 2, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 640, i32 480, i32 39721, i32 40, i32 24, i32 32, i32 11, i32 96, i32 2, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 56, i32 800, i32 600, i32 27777, i32 128, i32 24, i32 22, i32 1, i32 72, i32 2, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 87, i32 1024, i32 768, i32 22271, i32 56, i32 24, i32 33, i32 8, i32 160, i32 8, i32 0, i32 1, i32 0 }, %struct.fb_videomode { ptr null, i32 85, i32 640, i32 400, i32 31746, i32 96, i32 32, i32 41, i32 1, i32 64, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 72, i32 640, i32 480, i32 31746, i32 144, i32 40, i32 30, i32 8, i32 40, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 640, i32 480, i32 31746, i32 120, i32 16, i32 16, i32 1, i32 64, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 800, i32 600, i32 25000, i32 88, i32 40, i32 23, i32 1, i32 128, i32 4, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 85, i32 640, i32 480, i32 27777, i32 80, i32 56, i32 25, i32 1, i32 56, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 89, i32 1152, i32 864, i32 15384, i32 96, i32 16, i32 110, i32 1, i32 216, i32 10, i32 0, i32 1, i32 0 }, %struct.fb_videomode { ptr null, i32 72, i32 800, i32 600, i32 20000, i32 64, i32 56, i32 23, i32 37, i32 120, i32 6, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1024, i32 768, i32 15384, i32 168, i32 8, i32 29, i32 3, i32 144, i32 6, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 100, i32 640, i32 480, i32 21834, i32 96, i32 32, i32 36, i32 8, i32 96, i32 6, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1152, i32 864, i32 11123, i32 208, i32 64, i32 16, i32 4, i32 256, i32 8, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 85, i32 800, i32 600, i32 16460, i32 160, i32 64, i32 36, i32 16, i32 64, i32 5, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 70, i32 1024, i32 768, i32 13333, i32 144, i32 24, i32 29, i32 3, i32 136, i32 6, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 87, i32 1280, i32 1024, i32 12500, i32 56, i32 16, i32 128, i32 1, i32 216, i32 12, i32 0, i32 1, i32 0 }, %struct.fb_videomode { ptr null, i32 100, i32 800, i32 600, i32 14357, i32 160, i32 64, i32 30, i32 4, i32 64, i32 6, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 76, i32 1024, i32 768, i32 11764, i32 208, i32 8, i32 36, i32 16, i32 120, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 70, i32 1152, i32 864, i32 10869, i32 106, i32 56, i32 20, i32 1, i32 160, i32 10, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 61, i32 1280, i32 1024, i32 9090, i32 200, i32 48, i32 26, i32 1, i32 184, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1400, i32 1050, i32 9259, i32 136, i32 40, i32 13, i32 1, i32 112, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 1400, i32 1050, i32 7190, i32 120, i32 56, i32 23, i32 10, i32 112, i32 13, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1400, i32 1050, i32 9259, i32 128, i32 40, i32 12, i32 0, i32 112, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 85, i32 1024, i32 768, i32 10111, i32 192, i32 32, i32 34, i32 14, i32 160, i32 6, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 78, i32 1152, i32 864, i32 9090, i32 228, i32 88, i32 32, i32 0, i32 84, i32 12, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 70, i32 1280, i32 1024, i32 7905, i32 224, i32 32, i32 28, i32 8, i32 160, i32 8, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1600, i32 1200, i32 6172, i32 304, i32 64, i32 46, i32 1, i32 192, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 84, i32 1152, i32 864, i32 7407, i32 184, i32 312, i32 32, i32 0, i32 128, i32 12, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 74, i32 1280, i32 1024, i32 7407, i32 256, i32 32, i32 34, i32 3, i32 144, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 100, i32 1024, i32 768, i32 8658, i32 192, i32 32, i32 21, i32 3, i32 192, i32 10, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 76, i32 1280, i32 1024, i32 7407, i32 248, i32 32, i32 34, i32 3, i32 104, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 70, i32 1600, i32 1200, i32 5291, i32 304, i32 64, i32 46, i32 1, i32 192, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 100, i32 1152, i32 864, i32 7264, i32 224, i32 32, i32 17, i32 2, i32 128, i32 19, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 85, i32 1280, i32 1024, i32 6349, i32 224, i32 64, i32 44, i32 1, i32 160, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 1600, i32 1200, i32 4938, i32 304, i32 64, i32 46, i32 1, i32 192, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1680, i32 1050, i32 6848, i32 280, i32 104, i32 30, i32 3, i32 176, i32 6, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 85, i32 1600, i32 1200, i32 4545, i32 272, i32 16, i32 37, i32 4, i32 192, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 100, i32 1280, i32 1024, i32 5502, i32 256, i32 32, i32 26, i32 7, i32 128, i32 15, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 64, i32 1800, i32 1440, i32 4347, i32 304, i32 96, i32 46, i32 1, i32 192, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 70, i32 1800, i32 1440, i32 4000, i32 304, i32 96, i32 46, i32 1, i32 192, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 78, i32 512, i32 384, i32 49603, i32 48, i32 16, i32 16, i32 1, i32 64, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 85, i32 512, i32 384, i32 45454, i32 48, i32 16, i32 16, i32 1, i32 64, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 70, i32 320, i32 200, i32 79440, i32 16, i32 16, i32 20, i32 4, i32 48, i32 1, i32 0, i32 2, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 320, i32 240, i32 79440, i32 16, i32 16, i32 16, i32 5, i32 48, i32 1, i32 0, i32 2, i32 0 }, %struct.fb_videomode { ptr null, i32 72, i32 320, i32 240, i32 63492, i32 16, i32 16, i32 16, i32 4, i32 48, i32 2, i32 0, i32 2, i32 0 }, %struct.fb_videomode { ptr null, i32 56, i32 400, i32 300, i32 55555, i32 64, i32 16, i32 10, i32 1, i32 32, i32 1, i32 0, i32 2, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 400, i32 300, i32 50000, i32 48, i32 16, i32 11, i32 1, i32 64, i32 2, i32 0, i32 2, i32 0 }, %struct.fb_videomode { ptr null, i32 72, i32 400, i32 300, i32 40000, i32 32, i32 24, i32 11, i32 19, i32 64, i32 3, i32 0, i32 2, i32 0 }, %struct.fb_videomode { ptr null, i32 56, i32 480, i32 300, i32 46176, i32 80, i32 16, i32 10, i32 1, i32 40, i32 1, i32 0, i32 2, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 480, i32 300, i32 41858, i32 56, i32 16, i32 11, i32 1, i32 80, i32 2, i32 0, i32 2, i32 0 }, %struct.fb_videomode { ptr null, i32 63, i32 480, i32 300, i32 40000, i32 56, i32 16, i32 11, i32 1, i32 80, i32 2, i32 0, i32 2, i32 0 }, %struct.fb_videomode { ptr null, i32 72, i32 480, i32 300, i32 33386, i32 40, i32 24, i32 11, i32 19, i32 80, i32 3, i32 0, i32 2, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1920, i32 1200, i32 5177, i32 128, i32 336, i32 1, i32 38, i32 208, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1152, i32 768, i32 14047, i32 158, i32 26, i32 29, i32 3, i32 136, i32 6, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1366, i32 768, i32 13806, i32 120, i32 10, i32 14, i32 3, i32 32, i32 5, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1280, i32 800, i32 12048, i32 200, i32 64, i32 24, i32 1, i32 136, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 50, i32 720, i32 576, i32 74074, i32 64, i32 16, i32 39, i32 5, i32 64, i32 5, i32 0, i32 1, i32 0 }, %struct.fb_videomode { ptr null, i32 50, i32 800, i32 520, i32 58823, i32 144, i32 64, i32 72, i32 28, i32 80, i32 5, i32 0, i32 1, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 864, i32 480, i32 27777, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }], align 4
@fb_mode_option = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_fb_destroy_modelist = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_destroy_modelist = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_destroy_modelist = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_destroy_modelist to i32), ptr @__kstrtab_fb_destroy_modelist, ptr @__kstrtabns_fb_destroy_modelist }, section "___ksymtab_gpl+fb_destroy_modelist", align 4
@__kstrtab_fb_find_best_display = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_find_best_display = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_find_best_display = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_find_best_display to i32), ptr @__kstrtab_fb_find_best_display, ptr @__kstrtabns_fb_find_best_display }, section "___ksymtab+fb_find_best_display", align 4
@__kstrtab_fb_videomode_to_var = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_videomode_to_var = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_videomode_to_var = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_videomode_to_var to i32), ptr @__kstrtab_fb_videomode_to_var, ptr @__kstrtabns_fb_videomode_to_var }, section "___ksymtab+fb_videomode_to_var", align 4
@__kstrtab_fb_var_to_videomode = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_var_to_videomode = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_var_to_videomode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_var_to_videomode to i32), ptr @__kstrtab_fb_var_to_videomode, ptr @__kstrtabns_fb_var_to_videomode }, section "___ksymtab+fb_var_to_videomode", align 4
@__kstrtab_fb_mode_is_equal = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_mode_is_equal = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_mode_is_equal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_mode_is_equal to i32), ptr @__kstrtab_fb_mode_is_equal, ptr @__kstrtabns_fb_mode_is_equal }, section "___ksymtab+fb_mode_is_equal", align 4
@__kstrtab_fb_add_videomode = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_add_videomode = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_add_videomode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_add_videomode to i32), ptr @__kstrtab_fb_add_videomode, ptr @__kstrtabns_fb_add_videomode }, section "___ksymtab+fb_add_videomode", align 4
@__kstrtab_fb_match_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_match_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_match_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_match_mode to i32), ptr @__kstrtab_fb_match_mode, ptr @__kstrtabns_fb_match_mode }, section "___ksymtab+fb_match_mode", align 4
@__kstrtab_fb_find_best_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_find_best_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_find_best_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_find_best_mode to i32), ptr @__kstrtab_fb_find_best_mode, ptr @__kstrtabns_fb_find_best_mode }, section "___ksymtab+fb_find_best_mode", align 4
@__kstrtab_fb_find_nearest_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_find_nearest_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_find_nearest_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_find_nearest_mode to i32), ptr @__kstrtab_fb_find_nearest_mode, ptr @__kstrtabns_fb_find_nearest_mode }, section "___ksymtab+fb_find_nearest_mode", align 4
@__kstrtab_fb_videomode_to_modelist = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_videomode_to_modelist = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_videomode_to_modelist = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_videomode_to_modelist to i32), ptr @__kstrtab_fb_videomode_to_modelist, ptr @__kstrtabns_fb_videomode_to_modelist }, section "___ksymtab+fb_videomode_to_modelist", align 4
@__kstrtab_fb_find_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_find_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_find_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_find_mode to i32), ptr @__kstrtab_fb_find_mode, ptr @__kstrtabns_fb_find_mode }, section "___ksymtab+fb_find_mode", align 4
@__kstrtab_fb_find_mode_cvt = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_find_mode_cvt = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_find_mode_cvt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_find_mode_cvt to i32), ptr @__kstrtab_fb_find_mode_cvt, ptr @__kstrtabns_fb_find_mode_cvt }, section "___ksymtab+fb_find_mode_cvt", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_dmt_modes, ptr @__ksymtab_fb_add_videomode, ptr @__ksymtab_fb_destroy_modelist, ptr @__ksymtab_fb_find_best_display, ptr @__ksymtab_fb_find_best_mode, ptr @__ksymtab_fb_find_mode, ptr @__ksymtab_fb_find_mode_cvt, ptr @__ksymtab_fb_find_nearest_mode, ptr @__ksymtab_fb_match_mode, ptr @__ksymtab_fb_mode_is_equal, ptr @__ksymtab_fb_var_to_videomode, ptr @__ksymtab_fb_videomode_to_modelist, ptr @__ksymtab_fb_videomode_to_var, ptr @__ksymtab_vesa_modes], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fb_find_mode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, i32 noundef %4, ptr noundef readonly %5, i32 noundef %6) #0 {
  %8 = alloca %struct.fb_videomode, align 4
  %9 = icmp eq ptr %3, null
  %10 = select i1 %9, i32 60, i32 %4
  %11 = select i1 %9, ptr @modedb, ptr %3
  %12 = icmp eq ptr %5, null
  %13 = select i1 %12, ptr %11, ptr %5
  %14 = icmp eq i32 %6, 0
  %15 = select i1 %14, i32 8, i32 %6
  %16 = icmp eq ptr %2, null
  %17 = load ptr, ptr @fb_mode_option, align 4
  %18 = select i1 %16, ptr %17, ptr %2
  %19 = icmp eq ptr %18, null
  br i1 %19, label %532, label %20

20:                                               ; preds = %7
  %21 = tail call i32 @strlen(ptr noundef nonnull %18)
  %22 = add i32 %21, -1
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %183

24:                                               ; preds = %83, %20
  %25 = phi i32 [ %96, %83 ], [ %22, %20 ]
  %26 = phi i32 [ %25, %83 ], [ %21, %20 ]
  %27 = phi i32 [ %95, %83 ], [ 0, %20 ]
  %28 = phi i32 [ %94, %83 ], [ 0, %20 ]
  %29 = phi i32 [ %93, %83 ], [ 0, %20 ]
  %30 = phi i32 [ %92, %83 ], [ 0, %20 ]
  %31 = phi i32 [ %91, %83 ], [ 0, %20 ]
  %32 = phi i32 [ %90, %83 ], [ 0, %20 ]
  %33 = phi i32 [ %89, %83 ], [ 0, %20 ]
  %34 = phi i32 [ %88, %83 ], [ %15, %20 ]
  %35 = phi i32 [ %87, %83 ], [ 0, %20 ]
  %36 = phi i32 [ %86, %83 ], [ 0, %20 ]
  %37 = phi i32 [ %85, %83 ], [ 0, %20 ]
  %38 = phi i32 [ %84, %83 ], [ %21, %20 ]
  %39 = getelementptr i8, ptr %18, i32 %25
  %40 = load i8, ptr %39, align 1
  switch i8 %40, label %102 [
    i8 64, label %41
    i8 45, label %50
    i8 120, label %57
    i8 48, label %83
    i8 49, label %83
    i8 50, label %83
    i8 51, label %83
    i8 52, label %83
    i8 53, label %83
    i8 54, label %83
    i8 55, label %83
    i8 56, label %83
    i8 57, label %83
    i8 77, label %62
    i8 82, label %67
    i8 109, label %72
    i8 112, label %77
    i8 105, label %80
  ]

41:                                               ; preds = %24
  %42 = icmp ne i32 %36, 0
  %43 = icmp ne i32 %37, 0
  %44 = select i1 %42, i1 true, i1 %43
  %45 = icmp ne i32 %32, 0
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %102, label %47

47:                                               ; preds = %41
  %48 = getelementptr i8, ptr %18, i32 %26
  %49 = tail call i32 @simple_strtol(ptr noundef %48, ptr noundef null, i32 noundef 10) #13
  br label %83

50:                                               ; preds = %24
  %51 = icmp ne i32 %37, 0
  %52 = icmp ne i32 %32, 0
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %102, label %54

54:                                               ; preds = %50
  %55 = getelementptr i8, ptr %18, i32 %26
  %56 = tail call i32 @simple_strtol(ptr noundef %55, ptr noundef null, i32 noundef 10) #13
  br label %83

57:                                               ; preds = %24
  %58 = icmp eq i32 %32, 0
  br i1 %58, label %59, label %102

59:                                               ; preds = %57
  %60 = getelementptr i8, ptr %18, i32 %26
  %61 = tail call i32 @simple_strtol(ptr noundef %60, ptr noundef null, i32 noundef 10) #13
  br label %83

62:                                               ; preds = %24
  %63 = icmp eq i32 %32, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = select i1 %63, i32 1, i32 %31
  br label %83

67:                                               ; preds = %24
  %68 = icmp eq i32 %31, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = select i1 %68, i32 1, i32 %30
  br label %83

72:                                               ; preds = %24
  %73 = icmp eq i32 %31, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = select i1 %73, i32 1, i32 %27
  br label %83

77:                                               ; preds = %24
  %78 = icmp eq i32 %31, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  br label %83

80:                                               ; preds = %24
  %81 = icmp eq i32 %31, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %80
  br label %83

83:                                               ; preds = %82, %80, %79, %77, %72, %67, %62, %59, %54, %47, %24, %24, %24, %24, %24, %24, %24, %24, %24, %24
  %84 = phi i32 [ %38, %80 ], [ %38, %82 ], [ %38, %77 ], [ %38, %79 ], [ %38, %24 ], [ %38, %24 ], [ %38, %24 ], [ %38, %24 ], [ %38, %24 ], [ %38, %24 ], [ %38, %24 ], [ %38, %24 ], [ %38, %24 ], [ %38, %24 ], [ %38, %59 ], [ %25, %54 ], [ %25, %47 ], [ %38, %62 ], [ %38, %67 ], [ %38, %72 ]
  %85 = phi i32 [ %37, %80 ], [ %37, %82 ], [ %37, %77 ], [ %37, %79 ], [ %37, %24 ], [ %37, %24 ], [ %37, %24 ], [ %37, %24 ], [ %37, %24 ], [ %37, %24 ], [ %37, %24 ], [ %37, %24 ], [ %37, %24 ], [ %37, %24 ], [ %37, %59 ], [ 1, %54 ], [ 0, %47 ], [ %37, %62 ], [ %37, %67 ], [ %37, %72 ]
  %86 = phi i32 [ %36, %80 ], [ %36, %82 ], [ %36, %77 ], [ %36, %79 ], [ %36, %24 ], [ %36, %24 ], [ %36, %24 ], [ %36, %24 ], [ %36, %24 ], [ %36, %24 ], [ %36, %24 ], [ %36, %24 ], [ %36, %24 ], [ %36, %24 ], [ %36, %59 ], [ %36, %54 ], [ 1, %47 ], [ %36, %62 ], [ %36, %67 ], [ %36, %72 ]
  %87 = phi i32 [ %35, %80 ], [ %35, %82 ], [ %35, %77 ], [ %35, %79 ], [ %35, %24 ], [ %35, %24 ], [ %35, %24 ], [ %35, %24 ], [ %35, %24 ], [ %35, %24 ], [ %35, %24 ], [ %35, %24 ], [ %35, %24 ], [ %35, %24 ], [ %61, %59 ], [ %35, %54 ], [ %35, %47 ], [ %35, %62 ], [ %35, %67 ], [ %35, %72 ]
  %88 = phi i32 [ %34, %80 ], [ %34, %82 ], [ %34, %77 ], [ %34, %79 ], [ %34, %24 ], [ %34, %24 ], [ %34, %24 ], [ %34, %24 ], [ %34, %24 ], [ %34, %24 ], [ %34, %24 ], [ %34, %24 ], [ %34, %24 ], [ %34, %24 ], [ %34, %59 ], [ %56, %54 ], [ %34, %47 ], [ %34, %62 ], [ %34, %67 ], [ %34, %72 ]
  %89 = phi i32 [ %33, %80 ], [ %33, %82 ], [ %33, %77 ], [ %33, %79 ], [ %33, %24 ], [ %33, %24 ], [ %33, %24 ], [ %33, %24 ], [ %33, %24 ], [ %33, %24 ], [ %33, %24 ], [ %33, %24 ], [ %33, %24 ], [ %33, %24 ], [ %33, %59 ], [ %33, %54 ], [ %49, %47 ], [ %33, %62 ], [ %33, %67 ], [ %33, %72 ]
  %90 = phi i32 [ %32, %80 ], [ %32, %82 ], [ %32, %77 ], [ %32, %79 ], [ %32, %24 ], [ %32, %24 ], [ %32, %24 ], [ %32, %24 ], [ %32, %24 ], [ %32, %24 ], [ %32, %24 ], [ %32, %24 ], [ %32, %24 ], [ %32, %24 ], [ 1, %59 ], [ 0, %54 ], [ 0, %47 ], [ %65, %62 ], [ %32, %67 ], [ %32, %72 ]
  %91 = phi i32 [ 1, %80 ], [ 0, %82 ], [ 1, %77 ], [ 0, %79 ], [ %31, %24 ], [ %31, %24 ], [ %31, %24 ], [ %31, %24 ], [ %31, %24 ], [ %31, %24 ], [ %31, %24 ], [ %31, %24 ], [ %31, %24 ], [ %31, %24 ], [ %31, %59 ], [ 0, %54 ], [ 0, %47 ], [ %66, %62 ], [ %70, %67 ], [ %75, %72 ]
  %92 = phi i32 [ %30, %80 ], [ %30, %82 ], [ %30, %77 ], [ %30, %79 ], [ %30, %24 ], [ %30, %24 ], [ %30, %24 ], [ %30, %24 ], [ %30, %24 ], [ %30, %24 ], [ %30, %24 ], [ %30, %24 ], [ %30, %24 ], [ %30, %24 ], [ %30, %59 ], [ %30, %54 ], [ %30, %47 ], [ %30, %62 ], [ %71, %67 ], [ %30, %72 ]
  %93 = phi i32 [ %29, %80 ], [ 1, %82 ], [ %29, %77 ], [ 1, %79 ], [ %29, %24 ], [ %29, %24 ], [ %29, %24 ], [ %29, %24 ], [ %29, %24 ], [ %29, %24 ], [ %29, %24 ], [ %29, %24 ], [ %29, %24 ], [ %29, %24 ], [ %29, %59 ], [ %29, %54 ], [ %29, %47 ], [ %29, %62 ], [ %29, %67 ], [ %29, %72 ]
  %94 = phi i32 [ %28, %80 ], [ 1, %82 ], [ %28, %77 ], [ 0, %79 ], [ %28, %24 ], [ %28, %24 ], [ %28, %24 ], [ %28, %24 ], [ %28, %24 ], [ %28, %24 ], [ %28, %24 ], [ %28, %24 ], [ %28, %24 ], [ %28, %24 ], [ %28, %59 ], [ %28, %54 ], [ %28, %47 ], [ %28, %62 ], [ %28, %67 ], [ %28, %72 ]
  %95 = phi i32 [ %27, %80 ], [ %27, %82 ], [ %27, %77 ], [ %27, %79 ], [ %27, %24 ], [ %27, %24 ], [ %27, %24 ], [ %27, %24 ], [ %27, %24 ], [ %27, %24 ], [ %27, %24 ], [ %27, %24 ], [ %27, %24 ], [ %27, %24 ], [ %27, %59 ], [ %27, %54 ], [ %27, %47 ], [ %27, %62 ], [ %27, %67 ], [ %76, %72 ]
  %96 = add i32 %25, -1
  %97 = icmp sgt i32 %96, -1
  br i1 %97, label %24, label %98

98:                                               ; preds = %83
  %99 = icmp eq i32 %90, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %98
  %101 = tail call i32 @simple_strtol(ptr noundef nonnull %18, ptr noundef null, i32 noundef 10) #13
  br label %102

102:                                              ; preds = %100, %98, %57, %50, %41, %24
  %103 = phi i32 [ %86, %100 ], [ %86, %98 ], [ %36, %41 ], [ %36, %50 ], [ %36, %57 ], [ %36, %24 ]
  %104 = phi i32 [ %87, %100 ], [ %87, %98 ], [ %35, %41 ], [ %35, %50 ], [ %35, %57 ], [ %35, %24 ]
  %105 = phi i32 [ %88, %100 ], [ %88, %98 ], [ %34, %41 ], [ %34, %50 ], [ %34, %57 ], [ %34, %24 ]
  %106 = phi i32 [ %89, %100 ], [ %89, %98 ], [ %33, %41 ], [ %33, %50 ], [ %33, %57 ], [ %33, %24 ]
  %107 = phi i32 [ %91, %100 ], [ %91, %98 ], [ %31, %41 ], [ %31, %50 ], [ %31, %57 ], [ %31, %24 ]
  %108 = phi i32 [ %92, %100 ], [ %92, %98 ], [ %30, %41 ], [ %30, %50 ], [ %30, %57 ], [ %30, %24 ]
  %109 = phi i32 [ %93, %100 ], [ %93, %98 ], [ %29, %41 ], [ %29, %50 ], [ %29, %57 ], [ %29, %24 ]
  %110 = phi i32 [ %94, %100 ], [ %94, %98 ], [ %28, %41 ], [ %28, %50 ], [ %28, %57 ], [ %28, %24 ]
  %111 = phi i32 [ %95, %100 ], [ %95, %98 ], [ %27, %41 ], [ %27, %50 ], [ %27, %57 ], [ %27, %24 ]
  %112 = phi i32 [ %84, %100 ], [ %84, %98 ], [ %38, %24 ], [ %38, %57 ], [ %25, %50 ], [ %25, %41 ]
  %113 = phi i1 [ false, %100 ], [ true, %98 ], [ true, %41 ], [ true, %50 ], [ true, %57 ], [ true, %24 ]
  %114 = phi i32 [ %101, %100 ], [ 0, %98 ], [ 0, %41 ], [ 0, %50 ], [ 0, %57 ], [ 0, %24 ]
  %115 = icmp eq i32 %107, 0
  br i1 %115, label %181, label %116

116:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #13
  %117 = getelementptr inbounds %struct.fb_videomode, ptr %8, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %8, i8 0, i64 56, i1 false)
  store i32 %114, ptr %117, align 4
  %118 = getelementptr inbounds %struct.fb_videomode, ptr %8, i32 0, i32 3
  store i32 %104, ptr %118, align 4
  %119 = icmp eq i32 %106, 0
  %120 = select i1 %119, i32 60, i32 %106
  %121 = getelementptr inbounds %struct.fb_videomode, ptr %8, i32 0, i32 1
  store i32 %120, ptr %121, align 4
  %122 = icmp eq i32 %110, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct.fb_videomode, ptr %8, i32 0, i32 12
  store i32 1, ptr %124, align 4
  br label %125

125:                                              ; preds = %123, %116
  %126 = call i32 @fb_find_mode_cvt(ptr noundef nonnull %8, i32 noundef %111, i32 noundef %108) #13
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %180

128:                                              ; preds = %125
  %129 = load i32, ptr %117, align 4
  store i32 %129, ptr %0, align 4
  %130 = load i32, ptr %118, align 4
  %131 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 1
  store i32 %130, ptr %131, align 4
  %132 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 2
  store i32 %129, ptr %132, align 4
  %133 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 3
  store i32 %130, ptr %133, align 4
  %134 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 4
  store i32 0, ptr %134, align 4
  %135 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 5
  store i32 0, ptr %135, align 4
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 6
  store i32 %105, ptr %136, align 4
  %137 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 13
  %138 = load i32, ptr %137, align 4
  %139 = or i32 %138, 2
  store i32 %139, ptr %137, align 4
  %140 = getelementptr inbounds %struct.fb_videomode, ptr %8, i32 0, i32 4
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 17
  store i32 %141, ptr %142, align 4
  %143 = getelementptr inbounds %struct.fb_videomode, ptr %8, i32 0, i32 5
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 18
  store i32 %144, ptr %145, align 4
  %146 = getelementptr inbounds %struct.fb_videomode, ptr %8, i32 0, i32 6
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 19
  store i32 %147, ptr %148, align 4
  %149 = getelementptr inbounds %struct.fb_videomode, ptr %8, i32 0, i32 7
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 20
  store i32 %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.fb_videomode, ptr %8, i32 0, i32 8
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 21
  store i32 %153, ptr %154, align 4
  %155 = getelementptr inbounds %struct.fb_videomode, ptr %8, i32 0, i32 9
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 22
  store i32 %156, ptr %157, align 4
  %158 = getelementptr inbounds %struct.fb_videomode, ptr %8, i32 0, i32 10
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 23
  store i32 %159, ptr %160, align 4
  %161 = getelementptr inbounds %struct.fb_videomode, ptr %8, i32 0, i32 11
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 24
  store i32 %162, ptr %163, align 4
  %164 = getelementptr inbounds %struct.fb_videomode, ptr %8, i32 0, i32 12
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 25
  store i32 %165, ptr %166, align 4
  %167 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.fb_ops, ptr %168, i32 0, i32 5
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %128
  %173 = and i32 %138, -3
  store i32 %173, ptr %137, align 4
  br label %179

174:                                              ; preds = %128
  %175 = call i32 %170(ptr noundef %0, ptr noundef %1) #13
  %176 = load i32, ptr %137, align 4
  %177 = and i32 %176, -3
  store i32 %177, ptr %137, align 4
  %178 = icmp eq i32 %175, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174, %172
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #13
  br label %630

180:                                              ; preds = %174, %125
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #13
  br label %181

181:                                              ; preds = %180, %102
  %182 = icmp eq i32 %103, 0
  br i1 %182, label %183, label %213

183:                                              ; preds = %181, %20
  %184 = phi i32 [ %104, %181 ], [ 0, %20 ]
  %185 = phi i32 [ %105, %181 ], [ %15, %20 ]
  %186 = phi i32 [ %109, %181 ], [ 0, %20 ]
  %187 = phi i32 [ %110, %181 ], [ 0, %20 ]
  %188 = phi i32 [ %112, %181 ], [ %21, %20 ]
  %189 = phi i1 [ %113, %181 ], [ true, %20 ]
  %190 = phi i32 [ %114, %181 ], [ 0, %20 ]
  %191 = icmp eq ptr %11, @modedb
  br i1 %191, label %212, label %192

192:                                              ; preds = %183
  %193 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8, i32 18
  %194 = load i16, ptr %193, align 2
  %195 = icmp eq i16 %194, 0
  br i1 %195, label %212, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8, i32 19
  %198 = load i16, ptr %197, align 4
  %199 = icmp eq i16 %198, 0
  br i1 %199, label %212, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8, i32 11
  %202 = load i32, ptr %201, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %212, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8, i32 12
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 8, i32 14
  %210 = load i32, ptr %209, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %208, %204, %200, %196, %192, %183
  br label %213

213:                                              ; preds = %212, %208, %181
  %214 = phi i1 [ true, %181 ], [ false, %212 ], [ false, %208 ]
  %215 = phi i32 [ %104, %181 ], [ %184, %212 ], [ %184, %208 ]
  %216 = phi i32 [ %105, %181 ], [ %185, %212 ], [ %185, %208 ]
  %217 = phi i32 [ %109, %181 ], [ %186, %212 ], [ %186, %208 ]
  %218 = phi i32 [ %110, %181 ], [ %187, %212 ], [ %187, %208 ]
  %219 = phi i32 [ %112, %181 ], [ %188, %212 ], [ %188, %208 ]
  %220 = phi i1 [ %113, %181 ], [ %189, %212 ], [ %189, %208 ]
  %221 = phi i32 [ %114, %181 ], [ %190, %212 ], [ %190, %208 ]
  %222 = phi i32 [ %106, %181 ], [ 60, %212 ], [ 1000, %208 ]
  %223 = icmp eq i32 %10, 0
  br i1 %223, label %532, label %224

224:                                              ; preds = %213
  %225 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 1
  %226 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 2
  %227 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 3
  %228 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 4
  %229 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 5
  %230 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 13
  %232 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 17
  %233 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 18
  %234 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 19
  %235 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 20
  %236 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 21
  %237 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 22
  %238 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 23
  %239 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 24
  %240 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 25
  %241 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %242 = icmp eq i32 %217, 0
  br label %243

243:                                              ; preds = %328, %224
  %244 = phi i32 [ 0, %224 ], [ %331, %328 ]
  %245 = phi i32 [ -1, %224 ], [ %330, %328 ]
  %246 = phi i32 [ -1, %224 ], [ %329, %328 ]
  %247 = getelementptr %struct.fb_videomode, ptr %11, i32 %244
  %248 = load ptr, ptr %247, align 4
  %249 = icmp eq ptr %248, null
  br i1 %249, label %259, label %250

250:                                              ; preds = %243
  %251 = call i32 @strncmp(ptr noundef nonnull %18, ptr noundef nonnull %248, i32 noundef %219)
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %250
  %254 = call i32 @strlen(ptr noundef nonnull %248)
  %255 = icmp eq i32 %254, %219
  br i1 %255, label %256, label %259

256:                                              ; preds = %253
  %257 = getelementptr %struct.fb_videomode, ptr %11, i32 %244, i32 2
  %258 = load i32, ptr %257, align 4
  br label %268

259:                                              ; preds = %253, %250, %243
  br i1 %220, label %328, label %260

260:                                              ; preds = %259
  %261 = getelementptr %struct.fb_videomode, ptr %11, i32 %244, i32 2
  %262 = load i32, ptr %261, align 4
  %263 = icmp eq i32 %262, %221
  br i1 %263, label %264, label %328

264:                                              ; preds = %260
  %265 = getelementptr %struct.fb_videomode, ptr %11, i32 %244, i32 3
  %266 = load i32, ptr %265, align 4
  %267 = icmp eq i32 %266, %215
  br i1 %267, label %268, label %328

268:                                              ; preds = %264, %256
  %269 = phi i32 [ %258, %256 ], [ %221, %264 ]
  %270 = getelementptr %struct.fb_videomode, ptr %11, i32 %244, i32 2
  store i32 %269, ptr %0, align 4
  %271 = getelementptr %struct.fb_videomode, ptr %11, i32 %244, i32 3
  %272 = load i32, ptr %271, align 4
  store i32 %272, ptr %225, align 4
  %273 = load i32, ptr %270, align 4
  store i32 %273, ptr %226, align 4
  %274 = load i32, ptr %271, align 4
  store i32 %274, ptr %227, align 4
  store i32 0, ptr %228, align 4
  store i32 0, ptr %229, align 4
  store i32 %216, ptr %230, align 4
  %275 = load i32, ptr %231, align 4
  %276 = or i32 %275, 2
  store i32 %276, ptr %231, align 4
  %277 = getelementptr %struct.fb_videomode, ptr %11, i32 %244, i32 4
  %278 = load i32, ptr %277, align 4
  store i32 %278, ptr %232, align 4
  %279 = getelementptr %struct.fb_videomode, ptr %11, i32 %244, i32 5
  %280 = load i32, ptr %279, align 4
  store i32 %280, ptr %233, align 4
  %281 = getelementptr %struct.fb_videomode, ptr %11, i32 %244, i32 6
  %282 = load i32, ptr %281, align 4
  store i32 %282, ptr %234, align 4
  %283 = getelementptr %struct.fb_videomode, ptr %11, i32 %244, i32 7
  %284 = load i32, ptr %283, align 4
  store i32 %284, ptr %235, align 4
  %285 = getelementptr %struct.fb_videomode, ptr %11, i32 %244, i32 8
  %286 = load i32, ptr %285, align 4
  store i32 %286, ptr %236, align 4
  %287 = getelementptr %struct.fb_videomode, ptr %11, i32 %244, i32 9
  %288 = load i32, ptr %287, align 4
  store i32 %288, ptr %237, align 4
  %289 = getelementptr %struct.fb_videomode, ptr %11, i32 %244, i32 10
  %290 = load i32, ptr %289, align 4
  store i32 %290, ptr %238, align 4
  %291 = getelementptr %struct.fb_videomode, ptr %11, i32 %244, i32 11
  %292 = load i32, ptr %291, align 4
  store i32 %292, ptr %239, align 4
  %293 = getelementptr %struct.fb_videomode, ptr %11, i32 %244, i32 12
  %294 = load i32, ptr %293, align 4
  store i32 %294, ptr %240, align 4
  %295 = load ptr, ptr %241, align 4
  %296 = getelementptr inbounds %struct.fb_ops, ptr %295, i32 0, i32 5
  %297 = load ptr, ptr %296, align 4
  %298 = icmp eq ptr %297, null
  br i1 %298, label %299, label %301

299:                                              ; preds = %268
  %300 = and i32 %275, -3
  store i32 %300, ptr %231, align 4
  br label %306

301:                                              ; preds = %268
  %302 = call i32 %297(ptr noundef %0, ptr noundef %1) #13
  %303 = load i32, ptr %231, align 4
  %304 = and i32 %303, -3
  store i32 %304, ptr %231, align 4
  %305 = icmp eq i32 %302, 0
  br i1 %305, label %306, label %328

306:                                              ; preds = %301, %299
  %307 = getelementptr %struct.fb_videomode, ptr %11, i32 %244, i32 1
  %308 = load i32, ptr %307, align 4
  %309 = sub i32 %308, %222
  %310 = call i32 @llvm.abs.i32(i32 %309, i1 false)
  br i1 %242, label %319, label %311

311:                                              ; preds = %306
  %312 = load i32, ptr %293, align 4
  %313 = and i32 %312, 1
  %314 = sub i32 %313, %218
  %315 = call i32 @llvm.abs.i32(i32 %314, i1 false)
  %316 = add i32 %315, %310
  %317 = icmp eq i32 %313, %218
  %318 = and i1 %317, %214
  br i1 %318, label %320, label %323

319:                                              ; preds = %306
  br i1 %214, label %320, label %323

320:                                              ; preds = %319, %311
  %321 = phi i32 [ %316, %311 ], [ %310, %319 ]
  %322 = icmp eq i32 %308, %222
  br i1 %322, label %630, label %323

323:                                              ; preds = %320, %319, %311
  %324 = phi i32 [ %310, %319 ], [ %321, %320 ], [ %316, %311 ]
  %325 = icmp ult i32 %324, %245
  %326 = select i1 %325, i32 %244, i32 %246
  %327 = call i32 @llvm.umin.i32(i32 %324, i32 %245)
  br label %328

328:                                              ; preds = %323, %301, %264, %260, %259
  %329 = phi i32 [ %246, %301 ], [ %246, %264 ], [ %246, %260 ], [ %246, %259 ], [ %326, %323 ]
  %330 = phi i32 [ %245, %301 ], [ %245, %264 ], [ %245, %260 ], [ %245, %259 ], [ %327, %323 ]
  %331 = add nuw i32 %244, 1
  %332 = icmp eq i32 %331, %10
  br i1 %332, label %333, label %243

333:                                              ; preds = %328
  %334 = icmp eq i32 %329, -1
  br i1 %334, label %390, label %335

335:                                              ; preds = %333
  %336 = getelementptr %struct.fb_videomode, ptr %11, i32 %329, i32 2
  %337 = load i32, ptr %336, align 4
  store i32 %337, ptr %0, align 4
  %338 = getelementptr %struct.fb_videomode, ptr %11, i32 %329, i32 3
  %339 = load i32, ptr %338, align 4
  %340 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 1
  store i32 %339, ptr %340, align 4
  %341 = load i32, ptr %336, align 4
  %342 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 2
  store i32 %341, ptr %342, align 4
  %343 = load i32, ptr %338, align 4
  %344 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 3
  store i32 %343, ptr %344, align 4
  %345 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 4
  store i32 0, ptr %345, align 4
  %346 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 5
  store i32 0, ptr %346, align 4
  %347 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 6
  store i32 %216, ptr %347, align 4
  %348 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 13
  %349 = load i32, ptr %348, align 4
  %350 = or i32 %349, 2
  store i32 %350, ptr %348, align 4
  %351 = getelementptr %struct.fb_videomode, ptr %11, i32 %329, i32 4
  %352 = load i32, ptr %351, align 4
  %353 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 17
  store i32 %352, ptr %353, align 4
  %354 = getelementptr %struct.fb_videomode, ptr %11, i32 %329, i32 5
  %355 = load i32, ptr %354, align 4
  %356 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 18
  store i32 %355, ptr %356, align 4
  %357 = getelementptr %struct.fb_videomode, ptr %11, i32 %329, i32 6
  %358 = load i32, ptr %357, align 4
  %359 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 19
  store i32 %358, ptr %359, align 4
  %360 = getelementptr %struct.fb_videomode, ptr %11, i32 %329, i32 7
  %361 = load i32, ptr %360, align 4
  %362 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 20
  store i32 %361, ptr %362, align 4
  %363 = getelementptr %struct.fb_videomode, ptr %11, i32 %329, i32 8
  %364 = load i32, ptr %363, align 4
  %365 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 21
  store i32 %364, ptr %365, align 4
  %366 = getelementptr %struct.fb_videomode, ptr %11, i32 %329, i32 9
  %367 = load i32, ptr %366, align 4
  %368 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 22
  store i32 %367, ptr %368, align 4
  %369 = getelementptr %struct.fb_videomode, ptr %11, i32 %329, i32 10
  %370 = load i32, ptr %369, align 4
  %371 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 23
  store i32 %370, ptr %371, align 4
  %372 = getelementptr %struct.fb_videomode, ptr %11, i32 %329, i32 11
  %373 = load i32, ptr %372, align 4
  %374 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 24
  store i32 %373, ptr %374, align 4
  %375 = getelementptr %struct.fb_videomode, ptr %11, i32 %329, i32 12
  %376 = load i32, ptr %375, align 4
  %377 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 25
  store i32 %376, ptr %377, align 4
  %378 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %379 = load ptr, ptr %378, align 4
  %380 = getelementptr inbounds %struct.fb_ops, ptr %379, i32 0, i32 5
  %381 = load ptr, ptr %380, align 4
  %382 = icmp eq ptr %381, null
  br i1 %382, label %386, label %383

383:                                              ; preds = %335
  %384 = call i32 %381(ptr noundef %0, ptr noundef %1) #13
  %385 = load i32, ptr %348, align 4
  br label %386

386:                                              ; preds = %383, %335
  %387 = phi i32 [ %385, %383 ], [ %350, %335 ]
  %388 = and i32 %387, -3
  store i32 %388, ptr %348, align 4
  %389 = select i1 %214, i32 2, i32 1
  br label %630

390:                                              ; preds = %333
  %391 = add i32 %221, %215
  br i1 %223, label %532, label %392

392:                                              ; preds = %390
  %393 = shl i32 %391, 1
  %394 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 1
  %395 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 2
  %396 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 3
  %397 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 4
  %398 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 5
  %399 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 13
  %401 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 17
  %402 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 18
  %403 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 19
  %404 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 20
  %405 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 21
  %406 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 22
  %407 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 23
  %408 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 24
  %409 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 25
  %410 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %411 = load i32, ptr %400, align 4
  br label %412

412:                                              ; preds = %470, %392
  %413 = phi i32 [ %411, %392 ], [ %471, %470 ]
  %414 = phi i32 [ 0, %392 ], [ %474, %470 ]
  %415 = phi i32 [ %393, %392 ], [ %473, %470 ]
  %416 = phi i32 [ -1, %392 ], [ %472, %470 ]
  %417 = getelementptr %struct.fb_videomode, ptr %11, i32 %414, i32 2
  %418 = load i32, ptr %417, align 4
  store i32 %418, ptr %0, align 4
  %419 = getelementptr %struct.fb_videomode, ptr %11, i32 %414, i32 3
  %420 = load i32, ptr %419, align 4
  store i32 %420, ptr %394, align 4
  %421 = load i32, ptr %417, align 4
  store i32 %421, ptr %395, align 4
  %422 = load i32, ptr %419, align 4
  store i32 %422, ptr %396, align 4
  store i32 0, ptr %397, align 4
  store i32 0, ptr %398, align 4
  store i32 %216, ptr %399, align 4
  %423 = or i32 %413, 2
  store i32 %423, ptr %400, align 4
  %424 = getelementptr %struct.fb_videomode, ptr %11, i32 %414, i32 4
  %425 = load i32, ptr %424, align 4
  store i32 %425, ptr %401, align 4
  %426 = getelementptr %struct.fb_videomode, ptr %11, i32 %414, i32 5
  %427 = load i32, ptr %426, align 4
  store i32 %427, ptr %402, align 4
  %428 = getelementptr %struct.fb_videomode, ptr %11, i32 %414, i32 6
  %429 = load i32, ptr %428, align 4
  store i32 %429, ptr %403, align 4
  %430 = getelementptr %struct.fb_videomode, ptr %11, i32 %414, i32 7
  %431 = load i32, ptr %430, align 4
  store i32 %431, ptr %404, align 4
  %432 = getelementptr %struct.fb_videomode, ptr %11, i32 %414, i32 8
  %433 = load i32, ptr %432, align 4
  store i32 %433, ptr %405, align 4
  %434 = getelementptr %struct.fb_videomode, ptr %11, i32 %414, i32 9
  %435 = load i32, ptr %434, align 4
  store i32 %435, ptr %406, align 4
  %436 = getelementptr %struct.fb_videomode, ptr %11, i32 %414, i32 10
  %437 = load i32, ptr %436, align 4
  store i32 %437, ptr %407, align 4
  %438 = getelementptr %struct.fb_videomode, ptr %11, i32 %414, i32 11
  %439 = load i32, ptr %438, align 4
  store i32 %439, ptr %408, align 4
  %440 = getelementptr %struct.fb_videomode, ptr %11, i32 %414, i32 12
  %441 = load i32, ptr %440, align 4
  store i32 %441, ptr %409, align 4
  %442 = load ptr, ptr %410, align 4
  %443 = getelementptr inbounds %struct.fb_ops, ptr %442, i32 0, i32 5
  %444 = load ptr, ptr %443, align 4
  %445 = icmp eq ptr %444, null
  br i1 %445, label %446, label %448

446:                                              ; preds = %412
  %447 = and i32 %413, -3
  store i32 %447, ptr %400, align 4
  br label %453

448:                                              ; preds = %412
  %449 = call i32 %444(ptr noundef %0, ptr noundef %1) #13
  %450 = load i32, ptr %400, align 4
  %451 = and i32 %450, -3
  store i32 %451, ptr %400, align 4
  %452 = icmp eq i32 %449, 0
  br i1 %452, label %453, label %470

453:                                              ; preds = %448, %446
  %454 = phi i32 [ %447, %446 ], [ %451, %448 ]
  %455 = load i32, ptr %417, align 4
  %456 = sub i32 %455, %221
  %457 = call i32 @llvm.abs.i32(i32 %456, i1 false)
  %458 = load i32, ptr %419, align 4
  %459 = sub i32 %458, %215
  %460 = call i32 @llvm.abs.i32(i32 %459, i1 false)
  %461 = add i32 %460, %457
  %462 = icmp ult i32 %455, %221
  %463 = icmp ult i32 %458, %215
  %464 = select i1 %462, i1 true, i1 %463
  %465 = select i1 %464, i32 %391, i32 0
  %466 = add i32 %461, %465
  %467 = icmp ugt i32 %415, %466
  %468 = select i1 %467, i32 %414, i32 %416
  %469 = call i32 @llvm.umin.i32(i32 %415, i32 %466)
  br label %470

470:                                              ; preds = %453, %448
  %471 = phi i32 [ %451, %448 ], [ %454, %453 ]
  %472 = phi i32 [ %416, %448 ], [ %468, %453 ]
  %473 = phi i32 [ %415, %448 ], [ %469, %453 ]
  %474 = add nuw i32 %414, 1
  %475 = icmp eq i32 %474, %10
  br i1 %475, label %476, label %412

476:                                              ; preds = %470
  %477 = icmp eq i32 %472, -1
  br i1 %477, label %532, label %478

478:                                              ; preds = %476
  %479 = getelementptr %struct.fb_videomode, ptr %11, i32 %472, i32 2
  %480 = load i32, ptr %479, align 4
  store i32 %480, ptr %0, align 4
  %481 = getelementptr %struct.fb_videomode, ptr %11, i32 %472, i32 3
  %482 = load i32, ptr %481, align 4
  %483 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 1
  store i32 %482, ptr %483, align 4
  %484 = load i32, ptr %479, align 4
  %485 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 2
  store i32 %484, ptr %485, align 4
  %486 = load i32, ptr %481, align 4
  %487 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 3
  store i32 %486, ptr %487, align 4
  %488 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 4
  store i32 0, ptr %488, align 4
  %489 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 5
  store i32 0, ptr %489, align 4
  %490 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 6
  store i32 %216, ptr %490, align 4
  %491 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 13
  %492 = load i32, ptr %491, align 4
  %493 = or i32 %492, 2
  store i32 %493, ptr %491, align 4
  %494 = getelementptr %struct.fb_videomode, ptr %11, i32 %472, i32 4
  %495 = load i32, ptr %494, align 4
  %496 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 17
  store i32 %495, ptr %496, align 4
  %497 = getelementptr %struct.fb_videomode, ptr %11, i32 %472, i32 5
  %498 = load i32, ptr %497, align 4
  %499 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 18
  store i32 %498, ptr %499, align 4
  %500 = getelementptr %struct.fb_videomode, ptr %11, i32 %472, i32 6
  %501 = load i32, ptr %500, align 4
  %502 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 19
  store i32 %501, ptr %502, align 4
  %503 = getelementptr %struct.fb_videomode, ptr %11, i32 %472, i32 7
  %504 = load i32, ptr %503, align 4
  %505 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 20
  store i32 %504, ptr %505, align 4
  %506 = getelementptr %struct.fb_videomode, ptr %11, i32 %472, i32 8
  %507 = load i32, ptr %506, align 4
  %508 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 21
  store i32 %507, ptr %508, align 4
  %509 = getelementptr %struct.fb_videomode, ptr %11, i32 %472, i32 9
  %510 = load i32, ptr %509, align 4
  %511 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 22
  store i32 %510, ptr %511, align 4
  %512 = getelementptr %struct.fb_videomode, ptr %11, i32 %472, i32 10
  %513 = load i32, ptr %512, align 4
  %514 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 23
  store i32 %513, ptr %514, align 4
  %515 = getelementptr %struct.fb_videomode, ptr %11, i32 %472, i32 11
  %516 = load i32, ptr %515, align 4
  %517 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 24
  store i32 %516, ptr %517, align 4
  %518 = getelementptr %struct.fb_videomode, ptr %11, i32 %472, i32 12
  %519 = load i32, ptr %518, align 4
  %520 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 25
  store i32 %519, ptr %520, align 4
  %521 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %522 = load ptr, ptr %521, align 4
  %523 = getelementptr inbounds %struct.fb_ops, ptr %522, i32 0, i32 5
  %524 = load ptr, ptr %523, align 4
  %525 = icmp eq ptr %524, null
  br i1 %525, label %529, label %526

526:                                              ; preds = %478
  %527 = call i32 %524(ptr noundef %0, ptr noundef %1) #13
  %528 = load i32, ptr %491, align 4
  br label %529

529:                                              ; preds = %526, %478
  %530 = phi i32 [ %528, %526 ], [ %493, %478 ]
  %531 = and i32 %530, -3
  store i32 %531, ptr %491, align 4
  br label %630

532:                                              ; preds = %476, %390, %213, %7
  %533 = getelementptr inbounds %struct.fb_videomode, ptr %13, i32 0, i32 2
  %534 = load i32, ptr %533, align 4
  store i32 %534, ptr %0, align 4
  %535 = getelementptr inbounds %struct.fb_videomode, ptr %13, i32 0, i32 3
  %536 = load i32, ptr %535, align 4
  %537 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 1
  store i32 %536, ptr %537, align 4
  %538 = load i32, ptr %533, align 4
  %539 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 2
  store i32 %538, ptr %539, align 4
  %540 = load i32, ptr %535, align 4
  %541 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 3
  store i32 %540, ptr %541, align 4
  %542 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 4
  store i32 0, ptr %542, align 4
  %543 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 5
  store i32 0, ptr %543, align 4
  %544 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 6
  store i32 %15, ptr %544, align 4
  %545 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 13
  %546 = load i32, ptr %545, align 4
  %547 = or i32 %546, 2
  store i32 %547, ptr %545, align 4
  %548 = getelementptr inbounds %struct.fb_videomode, ptr %13, i32 0, i32 4
  %549 = load i32, ptr %548, align 4
  %550 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 17
  store i32 %549, ptr %550, align 4
  %551 = getelementptr inbounds %struct.fb_videomode, ptr %13, i32 0, i32 5
  %552 = load i32, ptr %551, align 4
  %553 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 18
  store i32 %552, ptr %553, align 4
  %554 = getelementptr inbounds %struct.fb_videomode, ptr %13, i32 0, i32 6
  %555 = load i32, ptr %554, align 4
  %556 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 19
  store i32 %555, ptr %556, align 4
  %557 = getelementptr inbounds %struct.fb_videomode, ptr %13, i32 0, i32 7
  %558 = load i32, ptr %557, align 4
  %559 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 20
  store i32 %558, ptr %559, align 4
  %560 = getelementptr inbounds %struct.fb_videomode, ptr %13, i32 0, i32 8
  %561 = load i32, ptr %560, align 4
  %562 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 21
  store i32 %561, ptr %562, align 4
  %563 = getelementptr inbounds %struct.fb_videomode, ptr %13, i32 0, i32 9
  %564 = load i32, ptr %563, align 4
  %565 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 22
  store i32 %564, ptr %565, align 4
  %566 = getelementptr inbounds %struct.fb_videomode, ptr %13, i32 0, i32 10
  %567 = load i32, ptr %566, align 4
  %568 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 23
  store i32 %567, ptr %568, align 4
  %569 = getelementptr inbounds %struct.fb_videomode, ptr %13, i32 0, i32 11
  %570 = load i32, ptr %569, align 4
  %571 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 24
  store i32 %570, ptr %571, align 4
  %572 = getelementptr inbounds %struct.fb_videomode, ptr %13, i32 0, i32 12
  %573 = load i32, ptr %572, align 4
  %574 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 25
  store i32 %573, ptr %574, align 4
  %575 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %576 = load ptr, ptr %575, align 4
  %577 = getelementptr inbounds %struct.fb_ops, ptr %576, i32 0, i32 5
  %578 = load ptr, ptr %577, align 4
  %579 = icmp eq ptr %578, null
  br i1 %579, label %580, label %582

580:                                              ; preds = %532
  %581 = and i32 %546, -3
  store i32 %581, ptr %545, align 4
  br label %630

582:                                              ; preds = %532
  %583 = call i32 %578(ptr noundef %0, ptr noundef %1) #13
  %584 = load i32, ptr %545, align 4
  %585 = and i32 %584, -3
  store i32 %585, ptr %545, align 4
  %586 = icmp eq i32 %583, 0
  br i1 %586, label %630, label %587

587:                                              ; preds = %582
  %588 = icmp eq i32 %10, 0
  br i1 %588, label %630, label %592

589:                                              ; preds = %625
  %590 = add nuw i32 %594, 1
  %591 = icmp eq i32 %590, %10
  br i1 %591, label %630, label %592

592:                                              ; preds = %589, %587
  %593 = phi i32 [ %628, %589 ], [ %585, %587 ]
  %594 = phi i32 [ %590, %589 ], [ 0, %587 ]
  %595 = getelementptr %struct.fb_videomode, ptr %11, i32 %594, i32 2
  %596 = load i32, ptr %595, align 4
  store i32 %596, ptr %0, align 4
  %597 = getelementptr %struct.fb_videomode, ptr %11, i32 %594, i32 3
  %598 = load i32, ptr %597, align 4
  store i32 %598, ptr %537, align 4
  %599 = load i32, ptr %595, align 4
  store i32 %599, ptr %539, align 4
  %600 = load i32, ptr %597, align 4
  store i32 %600, ptr %541, align 4
  store i32 0, ptr %542, align 4
  store i32 0, ptr %543, align 4
  store i32 %15, ptr %544, align 4
  %601 = or i32 %593, 2
  store i32 %601, ptr %545, align 4
  %602 = getelementptr %struct.fb_videomode, ptr %11, i32 %594, i32 4
  %603 = load i32, ptr %602, align 4
  store i32 %603, ptr %550, align 4
  %604 = getelementptr %struct.fb_videomode, ptr %11, i32 %594, i32 5
  %605 = load i32, ptr %604, align 4
  store i32 %605, ptr %553, align 4
  %606 = getelementptr %struct.fb_videomode, ptr %11, i32 %594, i32 6
  %607 = load i32, ptr %606, align 4
  store i32 %607, ptr %556, align 4
  %608 = getelementptr %struct.fb_videomode, ptr %11, i32 %594, i32 7
  %609 = load i32, ptr %608, align 4
  store i32 %609, ptr %559, align 4
  %610 = getelementptr %struct.fb_videomode, ptr %11, i32 %594, i32 8
  %611 = load i32, ptr %610, align 4
  store i32 %611, ptr %562, align 4
  %612 = getelementptr %struct.fb_videomode, ptr %11, i32 %594, i32 9
  %613 = load i32, ptr %612, align 4
  store i32 %613, ptr %565, align 4
  %614 = getelementptr %struct.fb_videomode, ptr %11, i32 %594, i32 10
  %615 = load i32, ptr %614, align 4
  store i32 %615, ptr %568, align 4
  %616 = getelementptr %struct.fb_videomode, ptr %11, i32 %594, i32 11
  %617 = load i32, ptr %616, align 4
  store i32 %617, ptr %571, align 4
  %618 = getelementptr %struct.fb_videomode, ptr %11, i32 %594, i32 12
  %619 = load i32, ptr %618, align 4
  store i32 %619, ptr %574, align 4
  %620 = load ptr, ptr %575, align 4
  %621 = getelementptr inbounds %struct.fb_ops, ptr %620, i32 0, i32 5
  %622 = load ptr, ptr %621, align 4
  %623 = icmp eq ptr %622, null
  br i1 %623, label %624, label %625

624:                                              ; preds = %592
  store i32 %593, ptr %545, align 4
  br label %630

625:                                              ; preds = %592
  %626 = call i32 %622(ptr noundef %0, ptr noundef %1) #13
  %627 = load i32, ptr %545, align 4
  %628 = and i32 %627, -3
  store i32 %628, ptr %545, align 4
  %629 = icmp eq i32 %626, 0
  br i1 %629, label %630, label %589

630:                                              ; preds = %625, %624, %589, %587, %582, %580, %529, %386, %320, %179
  %631 = phi i32 [ 3, %582 ], [ 3, %580 ], [ 4, %624 ], [ %389, %386 ], [ 5, %529 ], [ 1, %179 ], [ 0, %587 ], [ 4, %625 ], [ 0, %589 ], [ 1, %320 ]
  ret i32 %631
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode_cvt(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @fb_var_to_videomode(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #4 {
  store ptr null, ptr %0, align 4
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 2
  store i32 %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 3
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 4
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 9
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 23
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 10
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 18
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 5
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 19
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 6
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 20
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 7
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 21
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 8
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 24
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 25
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 255
  %35 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 12
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 13
  store i32 32, ptr %36, align 4
  %37 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 1
  store i32 0, ptr %37, align 4
  %38 = load i32, ptr %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %69, label %40

40:                                               ; preds = %2
  %41 = load i32, ptr %1, align 4
  %42 = load i32, ptr %20, align 4
  %43 = add i32 %42, %41
  %44 = load i32, ptr %11, align 4
  %45 = add i32 %43, %44
  %46 = load i32, ptr %17, align 4
  %47 = add i32 %45, %46
  %48 = load i32, ptr %5, align 4
  %49 = load i32, ptr %26, align 4
  %50 = add i32 %49, %48
  %51 = load i32, ptr %14, align 4
  %52 = add i32 %50, %51
  %53 = load i32, ptr %23, align 4
  %54 = add i32 %52, %53
  %55 = load i32, ptr %32, align 4
  %56 = and i32 %55, 1
  %57 = lshr i32 %54, %56
  %58 = lshr i32 %55, 1
  %59 = and i32 %58, 1
  %60 = shl i32 %57, %59
  %61 = icmp ne i32 %47, 0
  %62 = icmp ne i32 %60, 0
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %64, label %69

64:                                               ; preds = %40
  %65 = udiv i32 1000000000, %38
  %66 = mul i32 %65, 1000
  %67 = udiv i32 %66, %47
  %68 = udiv i32 %67, %60
  store i32 %68, ptr %37, align 4
  br label %69

69:                                               ; preds = %64, %40, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @fb_videomode_to_var(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr %0, align 4
  %5 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 1
  store i32 %6, ptr %7, align 4
  %8 = load i32, ptr %3, align 4
  %9 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 2
  store i32 %8, ptr %9, align 4
  %10 = load i32, ptr %5, align 4
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 3
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 4
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 5
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 17
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 18
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 19
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 20
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 21
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 9
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 22
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 10
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 23
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 11
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 24
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 12
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 255
  %41 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 25
  store i32 %40, ptr %41, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @fb_mode_is_equal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %69

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %69

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %69

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 9
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %69

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 10
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 7
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 7
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 8
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 8
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 11
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 11
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 12
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.fb_videomode, ptr %1, i32 0, i32 12
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %64, %66
  %68 = zext i1 %67 to i32
  br label %69

69:                                               ; preds = %62, %56, %50, %44, %38, %32, %26, %20, %14, %8, %2
  %70 = phi i32 [ 0, %56 ], [ 0, %50 ], [ 0, %44 ], [ 0, %38 ], [ 0, %32 ], [ 0, %26 ], [ 0, %20 ], [ 0, %14 ], [ 0, %8 ], [ 0, %2 ], [ %68, %62 ]
  ret i32 %70
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @fb_find_best_mode(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #6 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %42, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 4
  %7 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %37, %5
  %9 = phi ptr [ %3, %5 ], [ %40, %37 ]
  %10 = phi i32 [ -1, %5 ], [ %39, %37 ]
  %11 = phi ptr [ null, %5 ], [ %38, %37 ]
  %12 = getelementptr inbounds %struct.fb_modelist, ptr %9, i32 0, i32 1
  %13 = getelementptr inbounds %struct.fb_modelist, ptr %9, i32 0, i32 1, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, %6
  br i1 %15, label %37, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.fb_modelist, ptr %9, i32 0, i32 1, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %7, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %37, label %21

21:                                               ; preds = %16
  %22 = sub i32 %14, %6
  %23 = sub i32 %18, %19
  %24 = add i32 %23, %22
  %25 = icmp ugt i32 %10, %24
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  %27 = icmp eq i32 %10, %24
  %28 = icmp ne ptr %11, null
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.fb_modelist, ptr %9, i32 0, i32 1, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.fb_videomode, ptr %11, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp ugt i32 %32, %34
  %36 = select i1 %35, ptr %12, ptr %11
  br label %37

37:                                               ; preds = %30, %26, %21, %16, %8
  %38 = phi ptr [ %11, %26 ], [ %11, %16 ], [ %11, %8 ], [ %12, %21 ], [ %36, %30 ]
  %39 = phi i32 [ %10, %26 ], [ %10, %16 ], [ %10, %8 ], [ %24, %21 ], [ %10, %30 ]
  %40 = load ptr, ptr %9, align 4
  %41 = icmp eq ptr %40, %1
  br i1 %41, label %42, label %8

42:                                               ; preds = %37, %2
  %43 = phi ptr [ null, %2 ], [ %38, %37 ]
  ret ptr %43
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @fb_find_nearest_mode(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #7 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %50, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 1
  br label %11

11:                                               ; preds = %44, %5
  %12 = phi ptr [ %3, %5 ], [ %48, %44 ]
  %13 = phi ptr [ null, %5 ], [ %47, %44 ]
  %14 = phi i32 [ -1, %5 ], [ %46, %44 ]
  %15 = phi i32 [ -1, %5 ], [ %45, %44 ]
  %16 = getelementptr inbounds %struct.fb_modelist, ptr %12, i32 0, i32 1
  %17 = getelementptr inbounds %struct.fb_modelist, ptr %12, i32 0, i32 1, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %18, %7
  %20 = tail call i32 @llvm.abs.i32(i32 %19, i1 false)
  %21 = getelementptr inbounds %struct.fb_modelist, ptr %12, i32 0, i32 1, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %22, %9
  %24 = tail call i32 @llvm.abs.i32(i32 %23, i1 false)
  %25 = add i32 %24, %20
  %26 = icmp ugt i32 %14, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %11
  %28 = getelementptr inbounds %struct.fb_modelist, ptr %12, i32 0, i32 1, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %10, align 4
  %31 = sub i32 %29, %30
  %32 = tail call i32 @llvm.abs.i32(i32 %31, i1 false)
  br label %44

33:                                               ; preds = %11
  %34 = icmp eq i32 %14, %25
  br i1 %34, label %35, label %44

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.fb_modelist, ptr %12, i32 0, i32 1, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %10, align 4
  %39 = sub i32 %37, %38
  %40 = tail call i32 @llvm.abs.i32(i32 %39, i1 false)
  %41 = icmp ugt i32 %15, %40
  %42 = tail call i32 @llvm.umin.i32(i32 %15, i32 %40)
  %43 = select i1 %41, ptr %16, ptr %13
  br label %44

44:                                               ; preds = %35, %33, %27
  %45 = phi i32 [ %32, %27 ], [ %15, %33 ], [ %42, %35 ]
  %46 = phi i32 [ %25, %27 ], [ %14, %33 ], [ %14, %35 ]
  %47 = phi ptr [ %16, %27 ], [ %13, %33 ], [ %43, %35 ]
  %48 = load ptr, ptr %12, align 4
  %49 = icmp eq ptr %48, %1
  br i1 %49, label %50, label %11

50:                                               ; preds = %44, %2
  %51 = phi ptr [ null, %2 ], [ %47, %44 ]
  ret ptr %51
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @fb_match_mode(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #7 {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 22
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 23
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 18
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 19
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 20
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 21
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 24
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 25
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 255
  br label %25

25:                                               ; preds = %74, %2
  %26 = phi ptr [ %1, %2 ], [ %27, %74 ]
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %1
  br i1 %28, label %79, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.fb_modelist, ptr %27, i32 0, i32 1, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %3
  br i1 %32, label %33, label %74

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.fb_modelist, ptr %27, i32 0, i32 1, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, %5
  br i1 %36, label %37, label %74

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.fb_modelist, ptr %27, i32 0, i32 1, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, %7
  br i1 %40, label %41, label %74

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.fb_modelist, ptr %27, i32 0, i32 1, i32 9
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, %9
  br i1 %44, label %45, label %74

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.fb_modelist, ptr %27, i32 0, i32 1, i32 10
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %11
  br i1 %48, label %49, label %74

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.fb_modelist, ptr %27, i32 0, i32 1, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, %13
  br i1 %52, label %53, label %74

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.fb_modelist, ptr %27, i32 0, i32 1, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, %15
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.fb_modelist, ptr %27, i32 0, i32 1, i32 7
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, %17
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.fb_modelist, ptr %27, i32 0, i32 1, i32 8
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, %19
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.fb_modelist, ptr %27, i32 0, i32 1, i32 11
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, %21
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.fb_modelist, ptr %27, i32 0, i32 1, i32 12
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, %24
  %73 = zext i1 %72 to i32
  br label %74

74:                                               ; preds = %69, %65, %61, %57, %53, %49, %45, %41, %37, %33, %29
  %75 = phi i32 [ 0, %65 ], [ 0, %61 ], [ 0, %57 ], [ 0, %53 ], [ 0, %49 ], [ 0, %45 ], [ 0, %41 ], [ 0, %37 ], [ 0, %33 ], [ 0, %29 ], [ %73, %69 ]
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %25, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.fb_modelist, ptr %27, i32 0, i32 1
  br label %79

79:                                               ; preds = %77, %25
  %80 = phi ptr [ %78, %77 ], [ null, %25 ]
  ret ptr %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fb_add_videomode(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 9
  %7 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 10
  %8 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 5
  %9 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 7
  %11 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 8
  %12 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 11
  %13 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 12
  br label %14

14:                                               ; preds = %74, %2
  %15 = phi ptr [ %1, %2 ], [ %16, %74 ]
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %77, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.fb_modelist, ptr %16, i32 0, i32 1, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %3, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %74

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.fb_modelist, ptr %16, i32 0, i32 1, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %4, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %74

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.fb_modelist, ptr %16, i32 0, i32 1, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %5, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.fb_modelist, ptr %16, i32 0, i32 1, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %6, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %74

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.fb_modelist, ptr %16, i32 0, i32 1, i32 10
  %40 = load i32, ptr %39, align 4
  %41 = load i32, ptr %7, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %74

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.fb_modelist, ptr %16, i32 0, i32 1, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr %8, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.fb_modelist, ptr %16, i32 0, i32 1, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr %9, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.fb_modelist, ptr %16, i32 0, i32 1, i32 7
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %10, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.fb_modelist, ptr %16, i32 0, i32 1, i32 8
  %60 = load i32, ptr %59, align 4
  %61 = load i32, ptr %11, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.fb_modelist, ptr %16, i32 0, i32 1, i32 11
  %65 = load i32, ptr %64, align 4
  %66 = load i32, ptr %12, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.fb_modelist, ptr %16, i32 0, i32 1, i32 12
  %70 = load i32, ptr %69, align 4
  %71 = load i32, ptr %13, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  br label %74

74:                                               ; preds = %68, %63, %58, %53, %48, %43, %38, %33, %28, %23, %18
  %75 = phi i32 [ 0, %63 ], [ 0, %58 ], [ 0, %53 ], [ 0, %48 ], [ 0, %43 ], [ 0, %38 ], [ 0, %33 ], [ 0, %28 ], [ 0, %23 ], [ 0, %18 ], [ %73, %68 ]
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %14, label %86

77:                                               ; preds = %14
  %78 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %79 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %78, i32 noundef 3264, i32 noundef 64) #14
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.fb_modelist, ptr %79, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %82, ptr noundef align 4 dereferenceable(56) %0, i32 56, i1 false)
  %83 = load ptr, ptr %1, align 4
  %84 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  store ptr %79, ptr %84, align 4
  store ptr %83, ptr %79, align 8
  %85 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  store ptr %1, ptr %85, align 4
  store volatile ptr %79, ptr %1, align 4
  br label %86

86:                                               ; preds = %81, %77, %74
  %87 = phi i32 [ -12, %77 ], [ 0, %81 ], [ 0, %74 ]
  ret i32 %87
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fb_delete_videomode(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %80, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 9
  %10 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 10
  %11 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 5
  %12 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 7
  %14 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 8
  %15 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 11
  %16 = getelementptr inbounds %struct.fb_videomode, ptr %0, i32 0, i32 12
  br label %17

17:                                               ; preds = %78, %5
  %18 = phi ptr [ %3, %5 ], [ %19, %78 ]
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.fb_modelist, ptr %18, i32 0, i32 1, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %6, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.fb_modelist, ptr %18, i32 0, i32 1, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %7, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %78

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.fb_modelist, ptr %18, i32 0, i32 1, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %8, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %78

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.fb_modelist, ptr %18, i32 0, i32 1, i32 9
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %9, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %78

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.fb_modelist, ptr %18, i32 0, i32 1, i32 10
  %41 = load i32, ptr %40, align 4
  %42 = load i32, ptr %10, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %78

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.fb_modelist, ptr %18, i32 0, i32 1, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = load i32, ptr %11, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.fb_modelist, ptr %18, i32 0, i32 1, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = load i32, ptr %12, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.fb_modelist, ptr %18, i32 0, i32 1, i32 7
  %56 = load i32, ptr %55, align 4
  %57 = load i32, ptr %13, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.fb_modelist, ptr %18, i32 0, i32 1, i32 8
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr %14, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.fb_modelist, ptr %18, i32 0, i32 1, i32 11
  %66 = load i32, ptr %65, align 4
  %67 = load i32, ptr %15, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.fb_modelist, ptr %18, i32 0, i32 1, i32 12
  %71 = load i32, ptr %70, align 4
  %72 = load i32, ptr %16, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %76, ptr %77, align 4
  store volatile ptr %19, ptr %76, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %75, align 4
  tail call void @kfree(ptr noundef %18) #13
  br label %78

78:                                               ; preds = %74, %69, %64, %59, %54, %49, %44, %39, %34, %29, %24, %17
  %79 = icmp eq ptr %19, %1
  br i1 %79, label %80, label %17

80:                                               ; preds = %78, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fb_destroy_modelist(ptr noundef readonly %0) #0 {
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
  tail call void @kfree(ptr noundef %5) #13
  %10 = icmp eq ptr %6, %0
  br i1 %10, label %11, label %4

11:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fb_videomode_to_modelist(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  store volatile ptr %2, ptr %2, align 4
  %4 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %4, align 4
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %6, %3
  %7 = phi i32 [ %11, %6 ], [ 0, %3 ]
  %8 = getelementptr %struct.fb_videomode, ptr %0, i32 %7
  %9 = tail call i32 @fb_add_videomode(ptr noundef %8, ptr noundef %2)
  %10 = icmp ne i32 %9, 0
  %11 = add nuw nsw i32 %7, 1
  %12 = icmp eq i32 %11, %1
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fb_find_best_display(ptr nocapture noundef readonly %0, ptr noundef %1) #9 {
  %3 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %84, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %84, label %9

9:                                                ; preds = %6
  %10 = load volatile ptr, ptr %1, align 4
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %84, label %12

12:                                               ; preds = %22, %9
  %13 = phi i1 [ false, %22 ], [ true, %9 ]
  %14 = phi ptr [ %17, %22 ], [ null, %9 ]
  %15 = phi ptr [ %23, %22 ], [ %10, %9 ]
  %16 = getelementptr inbounds %struct.fb_modelist, ptr %15, i32 0, i32 1
  %17 = select i1 %13, ptr %16, ptr %14
  %18 = getelementptr inbounds %struct.fb_modelist, ptr %15, i32 0, i32 1, i32 13
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load ptr, ptr %15, align 4
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %12

25:                                               ; preds = %22, %12
  %26 = phi ptr [ %16, %12 ], [ null, %22 ]
  %27 = getelementptr inbounds %struct.fb_monspecs, ptr %0, i32 0, i32 22
  %28 = load i16, ptr %27, align 2
  %29 = and i16 %28, 2
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %84

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.fb_monspecs, ptr %0, i32 0, i32 25
  %33 = load i8, ptr %32, align 2
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %81, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.fb_monspecs, ptr %0, i32 0, i32 26
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %81, label %39

39:                                               ; preds = %35
  %40 = zext i8 %33 to i32
  %41 = mul nuw nsw i32 %40, 7200
  %42 = udiv i32 %41, 254
  %43 = zext i8 %37 to i32
  %44 = mul nuw nsw i32 %43, 7200
  %45 = udiv i32 %44, 254
  br label %46

46:                                               ; preds = %74, %39
  %47 = phi ptr [ %77, %74 ], [ %10, %39 ]
  %48 = phi i32 [ %76, %74 ], [ -1, %39 ]
  %49 = phi ptr [ %75, %74 ], [ null, %39 ]
  %50 = getelementptr inbounds %struct.fb_modelist, ptr %47, i32 0, i32 1
  %51 = getelementptr inbounds %struct.fb_modelist, ptr %47, i32 0, i32 1, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = icmp ult i32 %52, %42
  br i1 %53, label %74, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.fb_modelist, ptr %47, i32 0, i32 1, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = icmp ult i32 %56, %45
  br i1 %57, label %74, label %58

58:                                               ; preds = %54
  %59 = sub i32 %52, %42
  %60 = sub i32 %56, %45
  %61 = add i32 %60, %59
  %62 = icmp ugt i32 %48, %61
  br i1 %62, label %74, label %63

63:                                               ; preds = %58
  %64 = icmp eq i32 %48, %61
  %65 = icmp ne ptr %49, null
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.fb_modelist, ptr %47, i32 0, i32 1, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.fb_videomode, ptr %49, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = icmp ugt i32 %69, %71
  %73 = select i1 %72, ptr %50, ptr %49
  br label %74

74:                                               ; preds = %67, %63, %58, %54, %46
  %75 = phi ptr [ %49, %63 ], [ %49, %54 ], [ %49, %46 ], [ %50, %58 ], [ %73, %67 ]
  %76 = phi i32 [ %48, %63 ], [ %48, %54 ], [ %48, %46 ], [ %61, %58 ], [ %48, %67 ]
  %77 = load ptr, ptr %47, align 4
  %78 = icmp eq ptr %77, %1
  br i1 %78, label %79, label %46

79:                                               ; preds = %74
  %80 = icmp eq ptr %75, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %79, %35, %31
  %82 = icmp eq ptr %26, null
  %83 = select i1 %82, ptr %17, ptr %26
  br label %84

84:                                               ; preds = %81, %79, %25, %9, %6, %2
  %85 = phi ptr [ null, %9 ], [ %75, %79 ], [ null, %6 ], [ null, %2 ], [ %26, %25 ], [ %83, %81 ]
  ret ptr %85
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }

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
