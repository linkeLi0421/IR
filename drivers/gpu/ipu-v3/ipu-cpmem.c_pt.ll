; ModuleID = '/llk/IR/drivers/gpu/ipu-v3/ipu-cpmem.c_pt.bc'
source_filename = "../drivers/gpu/ipu-v3/ipu-cpmem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_cpmem_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_cpmem_zero\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_cpmem_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_cpmem_set_resolution:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_cpmem_set_resolution\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_cpmem_set_resolution:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_cpmem_skip_odd_chroma_rows:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_cpmem_skip_odd_chroma_rows\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_cpmem_skip_odd_chroma_rows:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_cpmem_set_stride:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_cpmem_set_stride\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_cpmem_set_stride:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_cpmem_set_high_priority:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_cpmem_set_high_priority\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_cpmem_set_high_priority:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_cpmem_set_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_cpmem_set_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_cpmem_set_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_cpmem_set_uv_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_cpmem_set_uv_offset\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_cpmem_set_uv_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_cpmem_interlaced_scan:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_cpmem_interlaced_scan\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_cpmem_interlaced_scan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_cpmem_set_axi_id:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_cpmem_set_axi_id\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_cpmem_set_axi_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_cpmem_get_burstsize:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_cpmem_get_burstsize\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_cpmem_get_burstsize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_cpmem_set_burstsize:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_cpmem_set_burstsize\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_cpmem_set_burstsize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_cpmem_set_block_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_cpmem_set_block_mode\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_cpmem_set_block_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_cpmem_set_rotation:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_cpmem_set_rotation\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_cpmem_set_rotation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_cpmem_set_format_rgb:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_cpmem_set_format_rgb\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_cpmem_set_format_rgb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_cpmem_set_format_passthrough:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_cpmem_set_format_passthrough\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_cpmem_set_format_passthrough:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_cpmem_set_yuv_interleaved:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_cpmem_set_yuv_interleaved\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_cpmem_set_yuv_interleaved:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_cpmem_set_yuv_planar_full:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_cpmem_set_yuv_planar_full\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_cpmem_set_yuv_planar_full:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_cpmem_set_fmt:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_cpmem_set_fmt\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_cpmem_set_fmt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_cpmem_set_image:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_cpmem_set_image\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_cpmem_set_image:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_cpmem_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_cpmem_dump\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_cpmem_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ipu_rgb = type { %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32 }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.ipuv3_channel = type { i32, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.ipu_soc = type { ptr, ptr, i32, %struct.spinlock, %struct.mutex, %struct.list_head, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ipu_ch_param = type { [2 x %struct.ipu_cpmem_word] }
%struct.ipu_cpmem_word = type { [5 x i32], [3 x i32] }
%struct.ipu_image = type { %struct.v4l2_pix_format, %struct.v4l2_rect, i32, i32, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.71, i32, i32 }
%union.anon.71 = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.ipu_cpmem = type { ptr, i32, %struct.spinlock, i32, ptr }

@__kstrtab_ipu_cpmem_zero = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_cpmem_zero = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_cpmem_zero = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_cpmem_zero to i32), ptr @__kstrtab_ipu_cpmem_zero, ptr @__kstrtabns_ipu_cpmem_zero }, section "___ksymtab_gpl+ipu_cpmem_zero", align 4
@__kstrtab_ipu_cpmem_set_resolution = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_cpmem_set_resolution = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_cpmem_set_resolution = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_cpmem_set_resolution to i32), ptr @__kstrtab_ipu_cpmem_set_resolution, ptr @__kstrtabns_ipu_cpmem_set_resolution }, section "___ksymtab_gpl+ipu_cpmem_set_resolution", align 4
@__kstrtab_ipu_cpmem_skip_odd_chroma_rows = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_cpmem_skip_odd_chroma_rows = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_cpmem_skip_odd_chroma_rows = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_cpmem_skip_odd_chroma_rows to i32), ptr @__kstrtab_ipu_cpmem_skip_odd_chroma_rows, ptr @__kstrtabns_ipu_cpmem_skip_odd_chroma_rows }, section "___ksymtab_gpl+ipu_cpmem_skip_odd_chroma_rows", align 4
@__kstrtab_ipu_cpmem_set_stride = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_cpmem_set_stride = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_cpmem_set_stride = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_cpmem_set_stride to i32), ptr @__kstrtab_ipu_cpmem_set_stride, ptr @__kstrtabns_ipu_cpmem_set_stride }, section "___ksymtab_gpl+ipu_cpmem_set_stride", align 4
@__kstrtab_ipu_cpmem_set_high_priority = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_cpmem_set_high_priority = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_cpmem_set_high_priority = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_cpmem_set_high_priority to i32), ptr @__kstrtab_ipu_cpmem_set_high_priority, ptr @__kstrtabns_ipu_cpmem_set_high_priority }, section "___ksymtab_gpl+ipu_cpmem_set_high_priority", align 4
@ipu_cpmem_set_buffer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [31 x i8] c"drivers/gpu/ipu-v3/ipu-cpmem.c\00", align 1
@__kstrtab_ipu_cpmem_set_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_cpmem_set_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_cpmem_set_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_cpmem_set_buffer to i32), ptr @__kstrtab_ipu_cpmem_set_buffer, ptr @__kstrtabns_ipu_cpmem_set_buffer }, section "___ksymtab_gpl+ipu_cpmem_set_buffer", align 4
@ipu_cpmem_set_uv_offset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ipu_cpmem_set_uv_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_cpmem_set_uv_offset = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_cpmem_set_uv_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_cpmem_set_uv_offset to i32), ptr @__kstrtab_ipu_cpmem_set_uv_offset, ptr @__kstrtabns_ipu_cpmem_set_uv_offset }, section "___ksymtab_gpl+ipu_cpmem_set_uv_offset", align 4
@__kstrtab_ipu_cpmem_interlaced_scan = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_cpmem_interlaced_scan = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_cpmem_interlaced_scan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_cpmem_interlaced_scan to i32), ptr @__kstrtab_ipu_cpmem_interlaced_scan, ptr @__kstrtabns_ipu_cpmem_interlaced_scan }, section "___ksymtab_gpl+ipu_cpmem_interlaced_scan", align 4
@__kstrtab_ipu_cpmem_set_axi_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_cpmem_set_axi_id = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_cpmem_set_axi_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_cpmem_set_axi_id to i32), ptr @__kstrtab_ipu_cpmem_set_axi_id, ptr @__kstrtabns_ipu_cpmem_set_axi_id }, section "___ksymtab_gpl+ipu_cpmem_set_axi_id", align 4
@__kstrtab_ipu_cpmem_get_burstsize = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_cpmem_get_burstsize = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_cpmem_get_burstsize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_cpmem_get_burstsize to i32), ptr @__kstrtab_ipu_cpmem_get_burstsize, ptr @__kstrtabns_ipu_cpmem_get_burstsize }, section "___ksymtab_gpl+ipu_cpmem_get_burstsize", align 4
@__kstrtab_ipu_cpmem_set_burstsize = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_cpmem_set_burstsize = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_cpmem_set_burstsize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_cpmem_set_burstsize to i32), ptr @__kstrtab_ipu_cpmem_set_burstsize, ptr @__kstrtabns_ipu_cpmem_set_burstsize }, section "___ksymtab_gpl+ipu_cpmem_set_burstsize", align 4
@__kstrtab_ipu_cpmem_set_block_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_cpmem_set_block_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_cpmem_set_block_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_cpmem_set_block_mode to i32), ptr @__kstrtab_ipu_cpmem_set_block_mode, ptr @__kstrtabns_ipu_cpmem_set_block_mode }, section "___ksymtab_gpl+ipu_cpmem_set_block_mode", align 4
@__kstrtab_ipu_cpmem_set_rotation = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_cpmem_set_rotation = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_cpmem_set_rotation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_cpmem_set_rotation to i32), ptr @__kstrtab_ipu_cpmem_set_rotation, ptr @__kstrtabns_ipu_cpmem_set_rotation }, section "___ksymtab_gpl+ipu_cpmem_set_rotation", align 4
@__kstrtab_ipu_cpmem_set_format_rgb = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_cpmem_set_format_rgb = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_cpmem_set_format_rgb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_cpmem_set_format_rgb to i32), ptr @__kstrtab_ipu_cpmem_set_format_rgb, ptr @__kstrtabns_ipu_cpmem_set_format_rgb }, section "___ksymtab_gpl+ipu_cpmem_set_format_rgb", align 4
@__kstrtab_ipu_cpmem_set_format_passthrough = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_cpmem_set_format_passthrough = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_cpmem_set_format_passthrough = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_cpmem_set_format_passthrough to i32), ptr @__kstrtab_ipu_cpmem_set_format_passthrough, ptr @__kstrtabns_ipu_cpmem_set_format_passthrough }, section "___ksymtab_gpl+ipu_cpmem_set_format_passthrough", align 4
@__kstrtab_ipu_cpmem_set_yuv_interleaved = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_cpmem_set_yuv_interleaved = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_cpmem_set_yuv_interleaved = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_cpmem_set_yuv_interleaved to i32), ptr @__kstrtab_ipu_cpmem_set_yuv_interleaved, ptr @__kstrtabns_ipu_cpmem_set_yuv_interleaved }, section "___ksymtab_gpl+ipu_cpmem_set_yuv_interleaved", align 4
@ipu_cpmem_set_yuv_planar_full.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ipu_cpmem_set_yuv_planar_full = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_cpmem_set_yuv_planar_full = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_cpmem_set_yuv_planar_full = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_cpmem_set_yuv_planar_full to i32), ptr @__kstrtab_ipu_cpmem_set_yuv_planar_full, ptr @__kstrtabns_ipu_cpmem_set_yuv_planar_full }, section "___ksymtab_gpl+ipu_cpmem_set_yuv_planar_full", align 4
@def_xbgr_32 = internal constant %struct.ipu_rgb { %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 24, i32 8, i32 0 }, i32 32 }, align 4
@def_xrgb_32 = internal constant %struct.ipu_rgb { %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 24, i32 8, i32 0 }, i32 32 }, align 4
@def_rgbx_32 = internal constant %struct.ipu_rgb { %struct.fb_bitfield { i32 24, i32 8, i32 0 }, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, i32 32 }, align 4
@def_bgrx_32 = internal constant %struct.ipu_rgb { %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 24, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, i32 32 }, align 4
@def_bgr_24 = internal constant %struct.ipu_rgb { %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 24 }, align 4
@def_rgb_24 = internal constant %struct.ipu_rgb { %struct.fb_bitfield { i32 16, i32 8, i32 0 }, %struct.fb_bitfield { i32 8, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 24 }, align 4
@def_rgb_16 = internal constant %struct.ipu_rgb { %struct.fb_bitfield { i32 11, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 6, i32 0 }, %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 16 }, align 4
@def_bgr_16 = internal constant %struct.ipu_rgb { %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 6, i32 0 }, %struct.fb_bitfield { i32 11, i32 5, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 16 }, align 4
@def_argb_16 = internal constant %struct.ipu_rgb { %struct.fb_bitfield { i32 10, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 5, i32 0 }, %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield { i32 15, i32 1, i32 0 }, i32 16 }, align 4
@def_abgr_16 = internal constant %struct.ipu_rgb { %struct.fb_bitfield { i32 0, i32 5, i32 0 }, %struct.fb_bitfield { i32 5, i32 5, i32 0 }, %struct.fb_bitfield { i32 10, i32 5, i32 0 }, %struct.fb_bitfield { i32 15, i32 1, i32 0 }, i32 16 }, align 4
@def_rgba_16 = internal constant %struct.ipu_rgb { %struct.fb_bitfield { i32 11, i32 5, i32 0 }, %struct.fb_bitfield { i32 6, i32 5, i32 0 }, %struct.fb_bitfield { i32 1, i32 5, i32 0 }, %struct.fb_bitfield { i32 0, i32 1, i32 0 }, i32 16 }, align 4
@def_bgra_16 = internal constant %struct.ipu_rgb { %struct.fb_bitfield { i32 1, i32 5, i32 0 }, %struct.fb_bitfield { i32 6, i32 5, i32 0 }, %struct.fb_bitfield { i32 11, i32 5, i32 0 }, %struct.fb_bitfield { i32 0, i32 1, i32 0 }, i32 16 }, align 4
@def_argb_16_4444 = internal constant %struct.ipu_rgb { %struct.fb_bitfield { i32 8, i32 4, i32 0 }, %struct.fb_bitfield { i32 4, i32 4, i32 0 }, %struct.fb_bitfield { i32 0, i32 4, i32 0 }, %struct.fb_bitfield { i32 12, i32 4, i32 0 }, i32 16 }, align 4
@__kstrtab_ipu_cpmem_set_fmt = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_cpmem_set_fmt = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_cpmem_set_fmt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_cpmem_set_fmt to i32), ptr @__kstrtab_ipu_cpmem_set_fmt, ptr @__kstrtabns_ipu_cpmem_set_fmt }, section "___ksymtab_gpl+ipu_cpmem_set_fmt", align 4
@__kstrtab_ipu_cpmem_set_image = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_cpmem_set_image = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_cpmem_set_image = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_cpmem_set_image to i32), ptr @__kstrtab_ipu_cpmem_set_image, ptr @__kstrtabns_ipu_cpmem_set_image }, section "___ksymtab_gpl+ipu_cpmem_set_image", align 4
@__kstrtab_ipu_cpmem_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_cpmem_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_cpmem_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_cpmem_dump to i32), ptr @__kstrtab_ipu_cpmem_dump, ptr @__kstrtabns_ipu_cpmem_dump }, section "___ksymtab_gpl+ipu_cpmem_dump", align 4
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab_ipu_cpmem_dump, ptr @__ksymtab_ipu_cpmem_get_burstsize, ptr @__ksymtab_ipu_cpmem_interlaced_scan, ptr @__ksymtab_ipu_cpmem_set_axi_id, ptr @__ksymtab_ipu_cpmem_set_block_mode, ptr @__ksymtab_ipu_cpmem_set_buffer, ptr @__ksymtab_ipu_cpmem_set_burstsize, ptr @__ksymtab_ipu_cpmem_set_fmt, ptr @__ksymtab_ipu_cpmem_set_format_passthrough, ptr @__ksymtab_ipu_cpmem_set_format_rgb, ptr @__ksymtab_ipu_cpmem_set_high_priority, ptr @__ksymtab_ipu_cpmem_set_image, ptr @__ksymtab_ipu_cpmem_set_resolution, ptr @__ksymtab_ipu_cpmem_set_rotation, ptr @__ksymtab_ipu_cpmem_set_stride, ptr @__ksymtab_ipu_cpmem_set_uv_offset, ptr @__ksymtab_ipu_cpmem_set_yuv_interleaved, ptr @__ksymtab_ipu_cpmem_set_yuv_planar_full, ptr @__ksymtab_ipu_cpmem_skip_odd_chroma_rows, ptr @__ksymtab_ipu_cpmem_zero], section "llvm.metadata"
@switch.table.ipu_cpmem_set_format_passthrough = private unnamed_addr constant [4 x i32] [i32 10240, i32 6144, i32 2048, i32 0], align 4
@switch.table.ipu_cpmem_set_format_passthrough.2 = private unnamed_addr constant [4 x i32] [i32 1032192, i32 507904, i32 311296, i32 245760], align 4
@switch.table.ipu_cpmem_set_fmt = private unnamed_addr constant [16 x i32] [i32 0, i32 67108864, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 268435456, i32 335544320, i32 402653184, i32 0, i32 134217728, i32 0, i32 201326592], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_cpmem_zero(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipu_soc, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %0, align 4
  %8 = getelementptr %struct.ipu_ch_param, ptr %6, i32 %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %10 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %11 = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %12 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %13 = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %14 = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %15 = getelementptr i8, ptr %8, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %16 = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %17 = getelementptr i8, ptr %8, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %18 = getelementptr i8, ptr %8, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %19 = getelementptr i8, ptr %8, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %20 = getelementptr i8, ptr %8, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %21 = getelementptr i8, ptr %8, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %22 = getelementptr i8, ptr %8, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %23 = getelementptr i8, ptr %8, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #5, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_cpmem_set_resolution(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = add i32 %1, -1
  %5 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ipu_soc, ptr %6, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %0, align 4
  %11 = getelementptr %struct.ipu_ch_param, ptr %9, i32 %10
  %12 = getelementptr [5 x i32], ptr %11, i32 0, i32 3
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %14 = and i32 %13, 536870911
  %15 = shl i32 %4, 29
  %16 = or i32 %14, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %16) #5, !srcloc !9
  %17 = getelementptr [5 x i32], ptr %11, i32 0, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %19 = and i32 %18, -1024
  %20 = lshr i32 %4, 3
  %21 = or i32 %19, %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %21) #5, !srcloc !9
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr inbounds %struct.ipu_soc, ptr %22, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %0, align 4
  %27 = getelementptr %struct.ipu_ch_param, ptr %25, i32 %26, i32 0, i32 0, i32 0, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %29 = and i32 %28, -4193281
  %30 = shl i32 %2, 10
  %31 = add i32 %30, -1024
  %32 = or i32 %29, %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %32) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_cpmem_skip_odd_chroma_rows(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipu_soc, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %0, align 4
  %8 = getelementptr %struct.ipu_ch_param, ptr %6, i32 %7, i32 0, i32 0, i32 0, i32 2
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %10 = or i32 %9, 1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_cpmem_set_stride(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ipu_soc, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  %9 = getelementptr %struct.ipu_ch_param, ptr %7, i32 %8, i32 0, i32 1, i32 0, i32 3
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %11 = and i32 %10, -1048513
  %12 = shl i32 %1, 6
  %13 = add i32 %12, -64
  %14 = or i32 %11, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %14) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_cpmem_set_high_priority(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipu_soc, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ipu_soc, ptr %3, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %0, align 4
  %12 = getelementptr %struct.ipu_ch_param, ptr %10, i32 %11, i32 0, i32 1, i32 0, i32 2
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %14 = and i32 %13, -1610612737
  %15 = or i32 %14, 536870912
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %15) #5, !srcloc !9
  br label %16

16:                                               ; preds = %7, %1
  %17 = load i32, ptr %0, align 4
  %18 = lshr i32 %17, 3
  %19 = and i32 %18, 536870908
  %20 = add nuw nsw i32 %19, 20
  %21 = getelementptr inbounds %struct.ipu_soc, ptr %3, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 %20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %25 = load i32, ptr %0, align 4
  %26 = and i32 %25, 31
  %27 = shl nuw i32 1, %26
  %28 = or i32 %27, %24
  %29 = lshr i32 %25, 3
  %30 = and i32 %29, 536870908
  %31 = add nuw nsw i32 %30, 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %32 = load ptr, ptr %21, align 4
  %33 = getelementptr i8, ptr %32, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %28) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_cpmem_set_buffer(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, 7
  %5 = icmp ne i32 %4, 0
  %6 = load i1, ptr @ipu_cpmem_set_buffer.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !17

9:                                                ; preds = %3
  store i1 true, ptr @ipu_cpmem_set_buffer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 274, i32 noundef 9, ptr noundef null) #5
  br label %10

10:                                               ; preds = %9, %3
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ipu_soc, ptr %14, i32 0, i32 14
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %0, align 4
  %19 = getelementptr %struct.ipu_ch_param, ptr %17, i32 %18, i32 0, i32 1
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %21 = and i32 %20, 536870911
  %22 = shl i32 %2, 26
  %23 = and i32 %22, -536870912
  %24 = or i32 %21, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %24) #5, !srcloc !9
  %25 = getelementptr [5 x i32], ptr %19, i32 0, i32 1
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %27 = and i32 %26, -67108864
  %28 = lshr i32 %2, 6
  %29 = or i32 %27, %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %29) #5, !srcloc !9
  br label %42

30:                                               ; preds = %10
  %31 = lshr i32 %2, 3
  %32 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ipu_soc, ptr %33, i32 0, i32 14
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %0, align 4
  %38 = getelementptr %struct.ipu_ch_param, ptr %36, i32 %37, i32 0, i32 1
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %40 = and i32 %39, -536870912
  %41 = or i32 %40, %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %41) #5, !srcloc !9
  br label %42

42:                                               ; preds = %30, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_cpmem_set_uv_offset(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %1
  %5 = and i32 %4, 7
  %6 = icmp ne i32 %5, 0
  %7 = load i1, ptr @ipu_cpmem_set_uv_offset.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !17

10:                                               ; preds = %3
  store i1 true, ptr @ipu_cpmem_set_uv_offset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 285, i32 noundef 9, ptr noundef null) #5
  br label %11

11:                                               ; preds = %10, %3
  %12 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ipu_soc, ptr %13, i32 0, i32 14
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %0, align 4
  %18 = getelementptr %struct.ipu_ch_param, ptr %16, i32 %17
  %19 = getelementptr [5 x i32], ptr %18, i32 0, i32 1
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %21 = and i32 %20, 16383
  %22 = shl i32 %1, 11
  %23 = and i32 %22, -16384
  %24 = or i32 %21, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %24) #5, !srcloc !9
  %25 = getelementptr [5 x i32], ptr %18, i32 0, i32 2
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %27 = and i32 %26, -16
  %28 = lshr i32 %1, 21
  %29 = or i32 %27, %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %29) #5, !srcloc !9
  %30 = load ptr, ptr %12, align 4
  %31 = getelementptr inbounds %struct.ipu_soc, ptr %30, i32 0, i32 14
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %0, align 4
  %35 = getelementptr %struct.ipu_ch_param, ptr %33, i32 %34, i32 0, i32 0, i32 0, i32 2
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %37 = and i32 %36, -67108849
  %38 = shl i32 %2, 1
  %39 = and i32 %38, -16
  %40 = or i32 %37, %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %40) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_cpmem_interlaced_scan(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %1, 0
  %5 = sub i32 0, %1
  %6 = sdiv i32 %5, -8
  %7 = add nsw i32 %6, 1048576
  %8 = sdiv i32 %1, 8
  %9 = select i1 %4, i32 %5, i32 %1
  %10 = select i1 %4, i32 %7, i32 %8
  %11 = shl i32 %9, 1
  %12 = add i32 %11, -1
  switch i32 %2, label %20 [
    i32 842093913, label %13
    i32 842094169, label %13
    i32 842094158, label %16
    i32 1345466932, label %18
    i32 909203022, label %21
  ]

13:                                               ; preds = %3, %3
  %14 = sdiv i32 %9, 2
  %15 = add nsw i32 %14, -1
  br label %21

16:                                               ; preds = %3
  %17 = add i32 %9, -1
  br label %21

18:                                               ; preds = %3
  %19 = add i32 %9, -1
  br label %21

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %18, %16, %13, %3
  %22 = phi i32 [ 0, %20 ], [ %19, %18 ], [ %17, %16 ], [ %15, %13 ], [ %12, %3 ]
  %23 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ipu_soc, ptr %24, i32 0, i32 14
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %0, align 4
  %29 = getelementptr %struct.ipu_ch_param, ptr %27, i32 %28, i32 0, i32 0, i32 0, i32 3
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %31 = or i32 %30, 131072
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %31) #5, !srcloc !9
  %32 = load ptr, ptr %23, align 4
  %33 = getelementptr inbounds %struct.ipu_soc, ptr %32, i32 0, i32 14
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %0, align 4
  %37 = getelementptr %struct.ipu_ch_param, ptr %35, i32 %36, i32 0, i32 1
  %38 = getelementptr [5 x i32], ptr %37, i32 0, i32 1
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %40 = and i32 %39, 67108863
  %41 = shl i32 %10, 26
  %42 = or i32 %40, %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %42) #5, !srcloc !9
  %43 = getelementptr [5 x i32], ptr %37, i32 0, i32 2
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %45 = and i32 %44, -16384
  %46 = lshr i32 %10, 6
  %47 = or i32 %45, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %47) #5, !srcloc !9
  %48 = load ptr, ptr %23, align 4
  %49 = getelementptr inbounds %struct.ipu_soc, ptr %48, i32 0, i32 14
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %50, align 4
  %52 = load i32, ptr %0, align 4
  %53 = getelementptr %struct.ipu_ch_param, ptr %51, i32 %52, i32 0, i32 1, i32 0, i32 3
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %55 = and i32 %54, -1048513
  %56 = shl i32 %12, 6
  %57 = or i32 %55, %56
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %57) #5, !srcloc !9
  %58 = icmp eq i32 %22, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %21
  %60 = load ptr, ptr %23, align 4
  %61 = getelementptr inbounds %struct.ipu_soc, ptr %60, i32 0, i32 14
  %62 = load ptr, ptr %61, align 4
  %63 = load ptr, ptr %62, align 4
  %64 = load i32, ptr %0, align 4
  %65 = getelementptr %struct.ipu_ch_param, ptr %63, i32 %64, i32 0, i32 1, i32 0, i32 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %67 = and i32 %66, -16384
  %68 = or i32 %67, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %68) #5, !srcloc !9
  br label %69

69:                                               ; preds = %59, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_cpmem_set_axi_id(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ipu_soc, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  %9 = getelementptr %struct.ipu_ch_param, ptr %7, i32 %8, i32 0, i32 1, i32 0, i32 2
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %11 = and i32 %10, -1610612737
  %12 = shl i32 %1, 29
  %13 = and i32 %12, 1610612736
  %14 = or i32 %11, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %14) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_cpmem_get_burstsize(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipu_soc, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %0, align 4
  %8 = getelementptr %struct.ipu_ch_param, ptr %6, i32 %7, i32 0, i32 1, i32 0, i32 2
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %10 = lshr i32 %9, 14
  %11 = and i32 %10, 127
  %12 = add nuw nsw i32 %11, 1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_cpmem_set_burstsize(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ipu_soc, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  %9 = getelementptr %struct.ipu_ch_param, ptr %7, i32 %8, i32 0, i32 1, i32 0, i32 2
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %11 = and i32 %10, -2080769
  %12 = shl i32 %1, 14
  %13 = add i32 %12, -16384
  %14 = or i32 %11, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %14) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_cpmem_set_block_mode(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipu_soc, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %0, align 4
  %8 = getelementptr %struct.ipu_ch_param, ptr %6, i32 %7, i32 0, i32 0, i32 0, i32 3
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %10 = and i32 %9, -6291457
  %11 = or i32 %10, 2097152
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %11) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_cpmem_set_rotation(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 255
  %4 = tail call i32 asm "rbit $0, $1", "=r,r"(i32 %3) #6, !srcloc !19
  %5 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ipu_soc, ptr %6, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %0, align 4
  %11 = getelementptr %struct.ipu_ch_param, ptr %9, i32 %10, i32 0, i32 0, i32 0, i32 3
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %13 = and i32 %12, -58720257
  %14 = lshr i32 %4, 6
  %15 = and i32 %14, 58720256
  %16 = or i32 %13, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %16) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_cpmem_set_format_rgb(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ipu_rgb, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fb_bitfield, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = add i32 %6, %7
  %9 = sub i32 %4, %8
  %10 = getelementptr inbounds %struct.ipu_rgb, ptr %1, i32 0, i32 1
  %11 = getelementptr inbounds %struct.ipu_rgb, ptr %1, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %10, align 4
  %14 = add i32 %12, %13
  %15 = sub i32 %4, %14
  %16 = getelementptr inbounds %struct.ipu_rgb, ptr %1, i32 0, i32 2
  %17 = getelementptr inbounds %struct.ipu_rgb, ptr %1, i32 0, i32 2, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %16, align 4
  %20 = add i32 %18, %19
  %21 = sub i32 %4, %20
  %22 = getelementptr inbounds %struct.ipu_rgb, ptr %1, i32 0, i32 3
  %23 = getelementptr inbounds %struct.ipu_rgb, ptr %1, i32 0, i32 3, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %22, align 4
  %26 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ipu_soc, ptr %27, i32 0, i32 14
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr %0, align 4
  %32 = getelementptr %struct.ipu_ch_param, ptr %30, i32 %31, i32 0, i32 1, i32 0, i32 3
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %34 = and i32 %33, -7340033
  %35 = shl i32 %6, 20
  %36 = add i32 %35, -1048576
  %37 = or i32 %34, %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %37) #5, !srcloc !9
  %38 = load ptr, ptr %26, align 4
  %39 = getelementptr inbounds %struct.ipu_soc, ptr %38, i32 0, i32 14
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = load i32, ptr %0, align 4
  %43 = getelementptr %struct.ipu_ch_param, ptr %41, i32 %42, i32 0, i32 1, i32 0, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %45 = and i32 %44, -32
  %46 = or i32 %45, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %46) #5, !srcloc !9
  %47 = load i32, ptr %11, align 4
  %48 = load ptr, ptr %26, align 4
  %49 = getelementptr inbounds %struct.ipu_soc, ptr %48, i32 0, i32 14
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %50, align 4
  %52 = load i32, ptr %0, align 4
  %53 = getelementptr %struct.ipu_ch_param, ptr %51, i32 %52, i32 0, i32 1, i32 0, i32 3
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %55 = and i32 %54, -58720257
  %56 = shl i32 %47, 23
  %57 = add i32 %56, -8388608
  %58 = or i32 %55, %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %58) #5, !srcloc !9
  %59 = load ptr, ptr %26, align 4
  %60 = getelementptr inbounds %struct.ipu_soc, ptr %59, i32 0, i32 14
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %61, align 4
  %63 = load i32, ptr %0, align 4
  %64 = getelementptr %struct.ipu_ch_param, ptr %62, i32 %63, i32 0, i32 1, i32 0, i32 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %66 = and i32 %65, -993
  %67 = shl i32 %15, 5
  %68 = or i32 %66, %67
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %68) #5, !srcloc !9
  %69 = load i32, ptr %17, align 4
  %70 = load ptr, ptr %26, align 4
  %71 = getelementptr inbounds %struct.ipu_soc, ptr %70, i32 0, i32 14
  %72 = load ptr, ptr %71, align 4
  %73 = load ptr, ptr %72, align 4
  %74 = load i32, ptr %0, align 4
  %75 = getelementptr %struct.ipu_ch_param, ptr %73, i32 %74, i32 0, i32 1, i32 0, i32 3
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %77 = and i32 %76, -469762049
  %78 = shl i32 %69, 26
  %79 = add i32 %78, -67108864
  %80 = or i32 %77, %79
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %80) #5, !srcloc !9
  %81 = load ptr, ptr %26, align 4
  %82 = getelementptr inbounds %struct.ipu_soc, ptr %81, i32 0, i32 14
  %83 = load ptr, ptr %82, align 4
  %84 = load ptr, ptr %83, align 4
  %85 = load i32, ptr %0, align 4
  %86 = getelementptr %struct.ipu_ch_param, ptr %84, i32 %85, i32 0, i32 1, i32 0, i32 4
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %88 = and i32 %87, -31745
  %89 = shl i32 %21, 10
  %90 = or i32 %88, %89
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %90) #5, !srcloc !9
  %91 = load i32, ptr %23, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %117, label %93

93:                                               ; preds = %2
  %94 = add i32 %24, %25
  %95 = sub i32 %4, %94
  %96 = load ptr, ptr %26, align 4
  %97 = getelementptr inbounds %struct.ipu_soc, ptr %96, i32 0, i32 14
  %98 = load ptr, ptr %97, align 4
  %99 = load ptr, ptr %98, align 4
  %100 = load i32, ptr %0, align 4
  %101 = getelementptr %struct.ipu_ch_param, ptr %99, i32 %100, i32 0, i32 1, i32 0, i32 3
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %103 = and i32 %102, 536870911
  %104 = shl i32 %91, 29
  %105 = add i32 %104, -536870912
  %106 = or i32 %103, %105
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %106) #5, !srcloc !9
  %107 = load ptr, ptr %26, align 4
  %108 = getelementptr inbounds %struct.ipu_soc, ptr %107, i32 0, i32 14
  %109 = load ptr, ptr %108, align 4
  %110 = load ptr, ptr %109, align 4
  %111 = load i32, ptr %0, align 4
  %112 = getelementptr %struct.ipu_ch_param, ptr %110, i32 %111, i32 0, i32 1, i32 0, i32 4
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %114 = and i32 %113, -1015809
  %115 = shl i32 %95, 15
  %116 = or i32 %114, %115
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %116) #5, !srcloc !9
  br label %137

117:                                              ; preds = %2
  %118 = load ptr, ptr %26, align 4
  %119 = getelementptr inbounds %struct.ipu_soc, ptr %118, i32 0, i32 14
  %120 = load ptr, ptr %119, align 4
  %121 = load ptr, ptr %120, align 4
  %122 = load i32, ptr %0, align 4
  %123 = getelementptr %struct.ipu_ch_param, ptr %121, i32 %122, i32 0, i32 1, i32 0, i32 3
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %125 = or i32 %124, -536870912
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %125) #5, !srcloc !9
  %126 = load i32, ptr %3, align 4
  %127 = load ptr, ptr %26, align 4
  %128 = getelementptr inbounds %struct.ipu_soc, ptr %127, i32 0, i32 14
  %129 = load ptr, ptr %128, align 4
  %130 = load ptr, ptr %129, align 4
  %131 = load i32, ptr %0, align 4
  %132 = getelementptr %struct.ipu_ch_param, ptr %130, i32 %131, i32 0, i32 1, i32 0, i32 4
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %134 = and i32 %133, -1015809
  %135 = shl i32 %126, 15
  %136 = or i32 %134, %135
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %136) #5, !srcloc !9
  br label %137

137:                                              ; preds = %117, %93
  %138 = load i32, ptr %3, align 4
  %139 = add i32 %138, -8
  %140 = tail call i32 @llvm.fshl.i32(i32 %139, i32 %139, i32 29)
  %141 = icmp ult i32 %140, 4
  br i1 %141, label %142, label %174

142:                                              ; preds = %137
  %143 = getelementptr inbounds [4 x i32], ptr @switch.table.ipu_cpmem_set_format_passthrough.2, i32 0, i32 %140
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr inbounds [4 x i32], ptr @switch.table.ipu_cpmem_set_format_passthrough, i32 0, i32 %140
  %146 = load i32, ptr %145, align 4
  %147 = load ptr, ptr %26, align 4
  %148 = getelementptr inbounds %struct.ipu_soc, ptr %147, i32 0, i32 14
  %149 = load ptr, ptr %148, align 4
  %150 = load ptr, ptr %149, align 4
  %151 = load i32, ptr %0, align 4
  %152 = getelementptr %struct.ipu_ch_param, ptr %150, i32 %151, i32 0, i32 0, i32 0, i32 3
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %154 = and i32 %153, -14337
  %155 = or i32 %154, %146
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %155) #5, !srcloc !9
  %156 = load ptr, ptr %26, align 4
  %157 = getelementptr inbounds %struct.ipu_soc, ptr %156, i32 0, i32 14
  %158 = load ptr, ptr %157, align 4
  %159 = load ptr, ptr %158, align 4
  %160 = load i32, ptr %0, align 4
  %161 = getelementptr %struct.ipu_ch_param, ptr %159, i32 %160, i32 0, i32 1, i32 0, i32 2
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %163 = and i32 %162, -2080769
  %164 = or i32 %163, %144
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %164) #5, !srcloc !9
  %165 = load ptr, ptr %26, align 4
  %166 = getelementptr inbounds %struct.ipu_soc, ptr %165, i32 0, i32 14
  %167 = load ptr, ptr %166, align 4
  %168 = load ptr, ptr %167, align 4
  %169 = load i32, ptr %0, align 4
  %170 = getelementptr %struct.ipu_ch_param, ptr %168, i32 %169, i32 0, i32 1, i32 0, i32 2
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %172 = and i32 %171, -31457281
  %173 = or i32 %172, 14680064
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %173) #5, !srcloc !9
  br label %174

174:                                              ; preds = %142, %137
  %175 = phi i32 [ 0, %142 ], [ -22, %137 ]
  ret i32 %175
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_cpmem_set_format_passthrough(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = add i32 %1, -8
  %4 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 29)
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %39

6:                                                ; preds = %2
  %7 = getelementptr inbounds [4 x i32], ptr @switch.table.ipu_cpmem_set_format_passthrough, i32 0, i32 %4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds [4 x i32], ptr @switch.table.ipu_cpmem_set_format_passthrough.2, i32 0, i32 %4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ipu_soc, ptr %12, i32 0, i32 14
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %0, align 4
  %17 = getelementptr %struct.ipu_ch_param, ptr %15, i32 %16, i32 0, i32 0, i32 0, i32 3
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %19 = and i32 %18, -14337
  %20 = or i32 %19, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %20) #5, !srcloc !9
  %21 = load ptr, ptr %11, align 4
  %22 = getelementptr inbounds %struct.ipu_soc, ptr %21, i32 0, i32 14
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %0, align 4
  %26 = getelementptr %struct.ipu_ch_param, ptr %24, i32 %25, i32 0, i32 1, i32 0, i32 2
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %28 = and i32 %27, -2080769
  %29 = or i32 %28, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %29) #5, !srcloc !9
  %30 = load ptr, ptr %11, align 4
  %31 = getelementptr inbounds %struct.ipu_soc, ptr %30, i32 0, i32 14
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %0, align 4
  %35 = getelementptr %struct.ipu_ch_param, ptr %33, i32 %34, i32 0, i32 1, i32 0, i32 2
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %37 = and i32 %36, -31457281
  %38 = or i32 %37, 12582912
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %38) #5, !srcloc !9
  br label %39

39:                                               ; preds = %6, %2
  %40 = phi i32 [ 0, %6 ], [ -22, %2 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_cpmem_set_yuv_interleaved(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  switch i32 %1, label %61 [
    i32 1498831189, label %3
    i32 1448695129, label %32
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ipu_soc, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %0, align 4
  %10 = getelementptr %struct.ipu_ch_param, ptr %8, i32 %9, i32 0, i32 0, i32 0, i32 3
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %12 = and i32 %11, -14337
  %13 = or i32 %12, 6144
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %13) #5, !srcloc !9
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.ipu_soc, ptr %14, i32 0, i32 14
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %0, align 4
  %19 = getelementptr %struct.ipu_ch_param, ptr %17, i32 %18, i32 0, i32 1, i32 0, i32 2
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %21 = and i32 %20, -31457281
  %22 = or i32 %21, 20971520
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %22) #5, !srcloc !9
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr inbounds %struct.ipu_soc, ptr %23, i32 0, i32 14
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %0, align 4
  %28 = getelementptr %struct.ipu_ch_param, ptr %26, i32 %27, i32 0, i32 1, i32 0, i32 2
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %30 = and i32 %29, -2080769
  %31 = or i32 %30, 507904
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %31) #5, !srcloc !9
  br label %61

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ipu_soc, ptr %34, i32 0, i32 14
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %0, align 4
  %39 = getelementptr %struct.ipu_ch_param, ptr %37, i32 %38, i32 0, i32 0, i32 0, i32 3
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %41 = and i32 %40, -14337
  %42 = or i32 %41, 6144
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %42) #5, !srcloc !9
  %43 = load ptr, ptr %33, align 4
  %44 = getelementptr inbounds %struct.ipu_soc, ptr %43, i32 0, i32 14
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %45, align 4
  %47 = load i32, ptr %0, align 4
  %48 = getelementptr %struct.ipu_ch_param, ptr %46, i32 %47, i32 0, i32 1, i32 0, i32 2
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %50 = and i32 %49, -31457281
  %51 = or i32 %50, 16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %51) #5, !srcloc !9
  %52 = load ptr, ptr %33, align 4
  %53 = getelementptr inbounds %struct.ipu_soc, ptr %52, i32 0, i32 14
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %54, align 4
  %56 = load i32, ptr %0, align 4
  %57 = getelementptr %struct.ipu_ch_param, ptr %55, i32 %56, i32 0, i32 1, i32 0, i32 2
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %59 = and i32 %58, -2080769
  %60 = or i32 %59, 507904
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %60) #5, !srcloc !9
  br label %61

61:                                               ; preds = %32, %3, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_cpmem_set_yuv_planar_full(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = or i32 %3, %2
  %6 = and i32 %5, 7
  %7 = icmp ne i32 %6, 0
  %8 = load i1, ptr @ipu_cpmem_set_yuv_planar_full.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !17

11:                                               ; preds = %4
  store i1 true, ptr @ipu_cpmem_set_yuv_planar_full.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 476, i32 noundef 9, ptr noundef null) #5
  br label %12

12:                                               ; preds = %11, %4
  %13 = add i32 %1, -1
  %14 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ipu_soc, ptr %15, i32 0, i32 14
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %0, align 4
  %20 = getelementptr %struct.ipu_ch_param, ptr %18, i32 %19, i32 0, i32 1, i32 0, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %22 = and i32 %21, -16384
  %23 = or i32 %22, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %23) #5, !srcloc !9
  %24 = load ptr, ptr %14, align 4
  %25 = getelementptr inbounds %struct.ipu_soc, ptr %24, i32 0, i32 14
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %0, align 4
  %29 = getelementptr %struct.ipu_ch_param, ptr %27, i32 %28
  %30 = getelementptr [5 x i32], ptr %29, i32 0, i32 1
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %32 = and i32 %31, 16383
  %33 = shl i32 %2, 11
  %34 = and i32 %33, -16384
  %35 = or i32 %32, %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %35) #5, !srcloc !9
  %36 = getelementptr [5 x i32], ptr %29, i32 0, i32 2
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %38 = and i32 %37, -16
  %39 = lshr i32 %2, 21
  %40 = or i32 %38, %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %40) #5, !srcloc !9
  %41 = load ptr, ptr %14, align 4
  %42 = getelementptr inbounds %struct.ipu_soc, ptr %41, i32 0, i32 14
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %43, align 4
  %45 = load i32, ptr %0, align 4
  %46 = getelementptr %struct.ipu_ch_param, ptr %44, i32 %45, i32 0, i32 0, i32 0, i32 2
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %48 = and i32 %47, -67108849
  %49 = shl i32 %3, 1
  %50 = and i32 %49, -16
  %51 = or i32 %48, %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %51) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_cpmem_set_fmt(ptr noundef %0, i32 noundef %1) #0 {
  switch i32 %1, label %241 [
    i32 842093913, label %3
    i32 842094169, label %3
    i32 909202777, label %23
    i32 909203033, label %23
    i32 875713881, label %43
    i32 875714137, label %43
    i32 842094158, label %62
    i32 909203022, label %82
    i32 1498831189, label %102
    i32 1448695129, label %131
    i32 875708993, label %160
    i32 875709016, label %160
    i32 875713089, label %162
    i32 875713112, label %162
    i32 875708754, label %164
    i32 875714642, label %164
    i32 943806546, label %164
    i32 875708738, label %166
    i32 875714626, label %166
    i32 943806530, label %166
    i32 875710274, label %168
    i32 943798338, label %168
    i32 875710290, label %170
    i32 943798354, label %170
    i32 909199186, label %172
    i32 943797586, label %172
    i32 909199170, label %174
    i32 943797570, label %174
    i32 892424769, label %176
    i32 892420673, label %178
    i32 892420434, label %180
    i32 892420418, label %182
    i32 842093121, label %184
  ]

3:                                                ; preds = %2, %2
  %4 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ipu_soc, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %0, align 4
  %10 = getelementptr %struct.ipu_ch_param, ptr %8, i32 %9, i32 0, i32 1, i32 0, i32 2
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %12 = and i32 %11, -31457281
  %13 = or i32 %12, 4194304
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %13) #5, !srcloc !9
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.ipu_soc, ptr %14, i32 0, i32 14
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %0, align 4
  %19 = getelementptr %struct.ipu_ch_param, ptr %17, i32 %18, i32 0, i32 1, i32 0, i32 2
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %21 = and i32 %20, -2080769
  %22 = or i32 %21, 507904
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %22) #5, !srcloc !9
  br label %186

23:                                               ; preds = %2, %2
  %24 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ipu_soc, ptr %25, i32 0, i32 14
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %0, align 4
  %30 = getelementptr %struct.ipu_ch_param, ptr %28, i32 %29, i32 0, i32 1, i32 0, i32 2
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %32 = and i32 %31, -31457281
  %33 = or i32 %32, 2097152
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %33) #5, !srcloc !9
  %34 = load ptr, ptr %24, align 4
  %35 = getelementptr inbounds %struct.ipu_soc, ptr %34, i32 0, i32 14
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %0, align 4
  %39 = getelementptr %struct.ipu_ch_param, ptr %37, i32 %38, i32 0, i32 1, i32 0, i32 2
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %41 = and i32 %40, -2080769
  %42 = or i32 %41, 507904
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %42) #5, !srcloc !9
  br label %186

43:                                               ; preds = %2, %2
  %44 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ipu_soc, ptr %45, i32 0, i32 14
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %47, align 4
  %49 = load i32, ptr %0, align 4
  %50 = getelementptr %struct.ipu_ch_param, ptr %48, i32 %49, i32 0, i32 1, i32 0, i32 2
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %52 = and i32 %51, -31457281
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %52) #5, !srcloc !9
  %53 = load ptr, ptr %44, align 4
  %54 = getelementptr inbounds %struct.ipu_soc, ptr %53, i32 0, i32 14
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %0, align 4
  %58 = getelementptr %struct.ipu_ch_param, ptr %56, i32 %57, i32 0, i32 1, i32 0, i32 2
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %60 = and i32 %59, -2080769
  %61 = or i32 %60, 507904
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %61) #5, !srcloc !9
  br label %186

62:                                               ; preds = %2
  %63 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.ipu_soc, ptr %64, i32 0, i32 14
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %66, align 4
  %68 = load i32, ptr %0, align 4
  %69 = getelementptr %struct.ipu_ch_param, ptr %67, i32 %68, i32 0, i32 1, i32 0, i32 2
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %71 = and i32 %70, -31457281
  %72 = or i32 %71, 8388608
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %72) #5, !srcloc !9
  %73 = load ptr, ptr %63, align 4
  %74 = getelementptr inbounds %struct.ipu_soc, ptr %73, i32 0, i32 14
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr %75, align 4
  %77 = load i32, ptr %0, align 4
  %78 = getelementptr %struct.ipu_ch_param, ptr %76, i32 %77, i32 0, i32 1, i32 0, i32 2
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %80 = and i32 %79, -2080769
  %81 = or i32 %80, 507904
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %81) #5, !srcloc !9
  br label %241

82:                                               ; preds = %2
  %83 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.ipu_soc, ptr %84, i32 0, i32 14
  %86 = load ptr, ptr %85, align 4
  %87 = load ptr, ptr %86, align 4
  %88 = load i32, ptr %0, align 4
  %89 = getelementptr %struct.ipu_ch_param, ptr %87, i32 %88, i32 0, i32 1, i32 0, i32 2
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %91 = and i32 %90, -31457281
  %92 = or i32 %91, 6291456
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %92) #5, !srcloc !9
  %93 = load ptr, ptr %83, align 4
  %94 = getelementptr inbounds %struct.ipu_soc, ptr %93, i32 0, i32 14
  %95 = load ptr, ptr %94, align 4
  %96 = load ptr, ptr %95, align 4
  %97 = load i32, ptr %0, align 4
  %98 = getelementptr %struct.ipu_ch_param, ptr %96, i32 %97, i32 0, i32 1, i32 0, i32 2
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %100 = and i32 %99, -2080769
  %101 = or i32 %100, 507904
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %101) #5, !srcloc !9
  br label %241

102:                                              ; preds = %2
  %103 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.ipu_soc, ptr %104, i32 0, i32 14
  %106 = load ptr, ptr %105, align 4
  %107 = load ptr, ptr %106, align 4
  %108 = load i32, ptr %0, align 4
  %109 = getelementptr %struct.ipu_ch_param, ptr %107, i32 %108, i32 0, i32 0, i32 0, i32 3
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %111 = and i32 %110, -14337
  %112 = or i32 %111, 6144
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %112) #5, !srcloc !9
  %113 = load ptr, ptr %103, align 4
  %114 = getelementptr inbounds %struct.ipu_soc, ptr %113, i32 0, i32 14
  %115 = load ptr, ptr %114, align 4
  %116 = load ptr, ptr %115, align 4
  %117 = load i32, ptr %0, align 4
  %118 = getelementptr %struct.ipu_ch_param, ptr %116, i32 %117, i32 0, i32 1, i32 0, i32 2
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %120 = and i32 %119, -31457281
  %121 = or i32 %120, 20971520
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %121) #5, !srcloc !9
  %122 = load ptr, ptr %103, align 4
  %123 = getelementptr inbounds %struct.ipu_soc, ptr %122, i32 0, i32 14
  %124 = load ptr, ptr %123, align 4
  %125 = load ptr, ptr %124, align 4
  %126 = load i32, ptr %0, align 4
  %127 = getelementptr %struct.ipu_ch_param, ptr %125, i32 %126, i32 0, i32 1, i32 0, i32 2
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %129 = and i32 %128, -2080769
  %130 = or i32 %129, 507904
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %130) #5, !srcloc !9
  br label %241

131:                                              ; preds = %2
  %132 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.ipu_soc, ptr %133, i32 0, i32 14
  %135 = load ptr, ptr %134, align 4
  %136 = load ptr, ptr %135, align 4
  %137 = load i32, ptr %0, align 4
  %138 = getelementptr %struct.ipu_ch_param, ptr %136, i32 %137, i32 0, i32 0, i32 0, i32 3
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %140 = and i32 %139, -14337
  %141 = or i32 %140, 6144
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %141) #5, !srcloc !9
  %142 = load ptr, ptr %132, align 4
  %143 = getelementptr inbounds %struct.ipu_soc, ptr %142, i32 0, i32 14
  %144 = load ptr, ptr %143, align 4
  %145 = load ptr, ptr %144, align 4
  %146 = load i32, ptr %0, align 4
  %147 = getelementptr %struct.ipu_ch_param, ptr %145, i32 %146, i32 0, i32 1, i32 0, i32 2
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %147) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %149 = and i32 %148, -31457281
  %150 = or i32 %149, 16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %150) #5, !srcloc !9
  %151 = load ptr, ptr %132, align 4
  %152 = getelementptr inbounds %struct.ipu_soc, ptr %151, i32 0, i32 14
  %153 = load ptr, ptr %152, align 4
  %154 = load ptr, ptr %153, align 4
  %155 = load i32, ptr %0, align 4
  %156 = getelementptr %struct.ipu_ch_param, ptr %154, i32 %155, i32 0, i32 1, i32 0, i32 2
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %158 = and i32 %157, -2080769
  %159 = or i32 %158, 507904
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %159) #5, !srcloc !9
  br label %241

160:                                              ; preds = %2, %2
  %161 = tail call i32 @ipu_cpmem_set_format_rgb(ptr noundef %0, ptr noundef nonnull @def_xbgr_32)
  br label %186

162:                                              ; preds = %2, %2
  %163 = tail call i32 @ipu_cpmem_set_format_rgb(ptr noundef %0, ptr noundef nonnull @def_xrgb_32)
  br label %186

164:                                              ; preds = %2, %2, %2
  %165 = tail call i32 @ipu_cpmem_set_format_rgb(ptr noundef %0, ptr noundef nonnull @def_rgbx_32)
  br label %186

166:                                              ; preds = %2, %2, %2
  %167 = tail call i32 @ipu_cpmem_set_format_rgb(ptr noundef %0, ptr noundef nonnull @def_bgrx_32)
  br label %186

168:                                              ; preds = %2, %2
  %169 = tail call i32 @ipu_cpmem_set_format_rgb(ptr noundef %0, ptr noundef nonnull @def_bgr_24)
  br label %186

170:                                              ; preds = %2, %2
  %171 = tail call i32 @ipu_cpmem_set_format_rgb(ptr noundef %0, ptr noundef nonnull @def_rgb_24)
  br label %186

172:                                              ; preds = %2, %2
  %173 = tail call i32 @ipu_cpmem_set_format_rgb(ptr noundef %0, ptr noundef nonnull @def_rgb_16)
  br label %186

174:                                              ; preds = %2, %2
  %175 = tail call i32 @ipu_cpmem_set_format_rgb(ptr noundef %0, ptr noundef nonnull @def_bgr_16)
  br label %186

176:                                              ; preds = %2
  %177 = tail call i32 @ipu_cpmem_set_format_rgb(ptr noundef %0, ptr noundef nonnull @def_argb_16)
  br label %241

178:                                              ; preds = %2
  %179 = tail call i32 @ipu_cpmem_set_format_rgb(ptr noundef %0, ptr noundef nonnull @def_abgr_16)
  br label %241

180:                                              ; preds = %2
  %181 = tail call i32 @ipu_cpmem_set_format_rgb(ptr noundef %0, ptr noundef nonnull @def_rgba_16)
  br label %241

182:                                              ; preds = %2
  %183 = tail call i32 @ipu_cpmem_set_format_rgb(ptr noundef %0, ptr noundef nonnull @def_bgra_16)
  br label %241

184:                                              ; preds = %2
  %185 = tail call i32 @ipu_cpmem_set_format_rgb(ptr noundef %0, ptr noundef nonnull @def_argb_16_4444)
  br label %241

186:                                              ; preds = %174, %172, %170, %168, %166, %164, %162, %160, %43, %23, %3
  switch i32 %1, label %241 [
    i32 943797586, label %187
    i32 943797570, label %187
    i32 943798354, label %187
    i32 943798338, label %187
    i32 943806546, label %187
    i32 943806530, label %187
  ]

187:                                              ; preds = %186, %186, %186, %186, %186, %186
  %188 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.ipu_soc, ptr %189, i32 0, i32 14
  %191 = load ptr, ptr %190, align 4
  %192 = load ptr, ptr %191, align 4
  %193 = load i32, ptr %0, align 4
  %194 = getelementptr %struct.ipu_ch_param, ptr %192, i32 %193, i32 0, i32 1, i32 0, i32 3
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %194) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %196 = or i32 %195, -536870912
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 %196) #5, !srcloc !9
  %197 = load ptr, ptr %188, align 4
  %198 = load i32, ptr %0, align 4
  %199 = add i32 %198, -14
  %200 = icmp ult i32 %199, 16
  br i1 %200, label %201, label %241

201:                                              ; preds = %187
  %202 = trunc i32 %199 to i16
  %203 = lshr i16 -20989, %202
  %204 = and i16 %203, 1
  %205 = icmp eq i16 %204, 0
  br i1 %205, label %241, label %206

206:                                              ; preds = %201
  %207 = getelementptr inbounds [16 x i32], ptr @switch.table.ipu_cpmem_set_fmt, i32 0, i32 %199
  %208 = load i32, ptr %207, align 4
  %209 = getelementptr inbounds %struct.ipu_soc, ptr %197, i32 0, i32 14
  %210 = load ptr, ptr %209, align 4
  %211 = load ptr, ptr %210, align 4
  %212 = getelementptr %struct.ipu_ch_param, ptr %211, i32 %198, i32 0, i32 1, i32 0, i32 2
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %212) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %214 = or i32 %213, 33554432
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %212, i32 %214) #5, !srcloc !9
  %215 = load ptr, ptr %188, align 4
  %216 = getelementptr inbounds %struct.ipu_soc, ptr %215, i32 0, i32 14
  %217 = load ptr, ptr %216, align 4
  %218 = load ptr, ptr %217, align 4
  %219 = load i32, ptr %0, align 4
  %220 = getelementptr %struct.ipu_ch_param, ptr %218, i32 %219, i32 0, i32 1, i32 0, i32 2
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %220) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %222 = and i32 %221, -469762049
  %223 = or i32 %222, %208
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 %223) #5, !srcloc !9
  %224 = load ptr, ptr %188, align 4
  %225 = getelementptr inbounds %struct.ipu_soc, ptr %224, i32 0, i32 14
  %226 = load ptr, ptr %225, align 4
  %227 = load ptr, ptr %226, align 4
  %228 = load i32, ptr %0, align 4
  %229 = getelementptr %struct.ipu_ch_param, ptr %227, i32 %228, i32 0, i32 1, i32 0, i32 4
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %229) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %231 = or i32 %230, 2097152
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %229, i32 %231) #5, !srcloc !9
  %232 = getelementptr inbounds %struct.ipu_soc, ptr %197, i32 0, i32 7
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr i8, ptr %233, i32 12
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %234) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %236 = load i32, ptr %0, align 4
  %237 = shl nuw i32 1, %236
  %238 = or i32 %237, %235
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %239 = load ptr, ptr %232, align 4
  %240 = getelementptr i8, ptr %239, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %240, i32 %238) #5, !srcloc !9
  br label %241

241:                                              ; preds = %206, %201, %187, %186, %184, %182, %180, %178, %176, %131, %102, %82, %62, %2
  %242 = phi i32 [ -22, %2 ], [ 0, %186 ], [ 0, %187 ], [ 0, %206 ], [ 0, %184 ], [ 0, %182 ], [ 0, %180 ], [ 0, %178 ], [ 0, %176 ], [ 0, %131 ], [ 0, %102 ], [ 0, %82 ], [ 0, %62 ], [ 0, %201 ]
  ret i32 %242
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_cpmem_set_image(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 1, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 1, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %5, -1
  %9 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ipu_soc, ptr %10, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %0, align 4
  %15 = getelementptr %struct.ipu_ch_param, ptr %13, i32 %14
  %16 = getelementptr [5 x i32], ptr %15, i32 0, i32 3
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %18 = and i32 %17, 536870911
  %19 = shl i32 %8, 29
  %20 = or i32 %18, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %20) #5, !srcloc !9
  %21 = getelementptr [5 x i32], ptr %15, i32 0, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %23 = and i32 %22, -1024
  %24 = lshr i32 %8, 3
  %25 = or i32 %23, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %25) #5, !srcloc !9
  %26 = load ptr, ptr %9, align 4
  %27 = getelementptr inbounds %struct.ipu_soc, ptr %26, i32 0, i32 14
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %0, align 4
  %31 = getelementptr %struct.ipu_ch_param, ptr %29, i32 %30, i32 0, i32 0, i32 0, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %33 = and i32 %32, -4193281
  %34 = shl i32 %7, 10
  %35 = add i32 %34, -1024
  %36 = or i32 %33, %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %36) #5, !srcloc !9
  %37 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %9, align 4
  %40 = getelementptr inbounds %struct.ipu_soc, ptr %39, i32 0, i32 14
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr %0, align 4
  %44 = getelementptr %struct.ipu_ch_param, ptr %42, i32 %43, i32 0, i32 1, i32 0, i32 3
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %46 = and i32 %45, -1048513
  %47 = shl i32 %38, 6
  %48 = add i32 %47, -64
  %49 = or i32 %46, %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %49) #5, !srcloc !9
  %50 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  switch i32 %51, label %71 [
    i32 1346520914, label %72
    i32 861030210, label %52
    i32 859981650, label %53
    i32 877807426, label %54
    i32 876758866, label %55
    i32 875713089, label %56
    i32 875713112, label %57
    i32 875708754, label %58
    i32 875714642, label %59
    i32 875708993, label %60
    i32 875709016, label %61
    i32 875708738, label %62
    i32 875714626, label %63
    i32 1498831189, label %64
    i32 1448695129, label %65
    i32 842093913, label %66
    i32 1345466932, label %67
    i32 842094169, label %68
    i32 842094158, label %69
    i32 909203022, label %70
  ]

52:                                               ; preds = %2
  br label %72

53:                                               ; preds = %2
  br label %72

54:                                               ; preds = %2
  br label %72

55:                                               ; preds = %2
  br label %72

56:                                               ; preds = %2
  br label %72

57:                                               ; preds = %2
  br label %72

58:                                               ; preds = %2
  br label %72

59:                                               ; preds = %2
  br label %72

60:                                               ; preds = %2
  br label %72

61:                                               ; preds = %2
  br label %72

62:                                               ; preds = %2
  br label %72

63:                                               ; preds = %2
  br label %72

64:                                               ; preds = %2
  br label %72

65:                                               ; preds = %2
  br label %72

66:                                               ; preds = %2
  br label %72

67:                                               ; preds = %2
  br label %72

68:                                               ; preds = %2
  br label %72

69:                                               ; preds = %2
  br label %72

70:                                               ; preds = %2
  br label %72

71:                                               ; preds = %2
  br label %72

72:                                               ; preds = %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %2
  %73 = phi i32 [ -22, %71 ], [ %51, %70 ], [ %51, %69 ], [ %51, %68 ], [ 909202777, %67 ], [ %51, %66 ], [ %51, %65 ], [ %51, %64 ], [ %51, %63 ], [ %51, %62 ], [ %51, %61 ], [ %51, %60 ], [ %51, %59 ], [ %51, %58 ], [ %51, %57 ], [ %51, %56 ], [ 875709016, %55 ], [ 875713112, %54 ], [ 875710274, %53 ], [ 875710290, %52 ], [ 909199186, %2 ]
  %74 = tail call i32 @ipu_cpmem_set_fmt(ptr noundef %0, i32 noundef %73)
  %75 = load i32, ptr %50, align 4
  switch i32 %75, label %276 [
    i32 842093913, label %76
    i32 842094169, label %118
    i32 1345466932, label %160
    i32 842094158, label %198
    i32 909203022, label %219
    i32 1498831189, label %237
    i32 1448695129, label %237
    i32 1346520914, label %237
    i32 876758866, label %245
    i32 877807426, label %245
    i32 875713089, label %245
    i32 875713112, label %245
    i32 875708754, label %245
    i32 875714642, label %245
    i32 875708993, label %245
    i32 875709016, label %245
    i32 875708738, label %245
    i32 875714626, label %245
    i32 859981650, label %253
    i32 861030210, label %253
    i32 825770306, label %261
    i32 1196573255, label %261
    i32 1195528775, label %261
    i32 1111967570, label %261
    i32 1497715271, label %261
    i32 844257602, label %268
    i32 909197895, label %268
    i32 909201991, label %268
    i32 909199186, label %268
    i32 540422489, label %268
  ]

76:                                               ; preds = %72
  %77 = load i32, ptr %3, align 4
  %78 = load i32, ptr %37, align 4
  %79 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 1, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = mul i32 %80, %78
  %82 = add i32 %81, %77
  %83 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 4
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = mul i32 %88, %78
  %90 = sdiv i32 %80, 2
  %91 = mul i32 %90, %78
  %92 = lshr i32 %91, 1
  %93 = sdiv i32 %77, 2
  %94 = sub i32 %93, %82
  %95 = add i32 %94, %92
  %96 = add i32 %95, %89
  br label %97

97:                                               ; preds = %86, %76
  %98 = phi i32 [ %96, %86 ], [ %84, %76 ]
  %99 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 5
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = mul i32 %104, %78
  %106 = lshr i32 %105, 2
  %107 = sdiv i32 %80, 2
  %108 = mul i32 %107, %78
  %109 = lshr i32 %108, 1
  %110 = sdiv i32 %77, 2
  %111 = sub i32 %110, %82
  %112 = add i32 %111, %109
  %113 = add i32 %112, %105
  %114 = add i32 %113, %106
  br label %115

115:                                              ; preds = %102, %97
  %116 = phi i32 [ %114, %102 ], [ %100, %97 ]
  %117 = lshr i32 %78, 1
  tail call void @ipu_cpmem_set_yuv_planar_full(ptr noundef %0, i32 noundef %117, i32 noundef %98, i32 noundef %116)
  br label %277

118:                                              ; preds = %72
  %119 = load i32, ptr %3, align 4
  %120 = load i32, ptr %37, align 4
  %121 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 1, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = mul i32 %122, %120
  %124 = add i32 %123, %119
  %125 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 4
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %118
  %129 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = mul i32 %130, %120
  %132 = lshr i32 %131, 2
  %133 = sdiv i32 %122, 2
  %134 = mul i32 %133, %120
  %135 = lshr i32 %134, 1
  %136 = sdiv i32 %119, 2
  %137 = sub i32 %136, %124
  %138 = add i32 %137, %135
  %139 = add i32 %138, %131
  %140 = add i32 %139, %132
  br label %141

141:                                              ; preds = %128, %118
  %142 = phi i32 [ %140, %128 ], [ %126, %118 ]
  %143 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 5
  %144 = load i32, ptr %143, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 1
  %148 = load i32, ptr %147, align 4
  %149 = mul i32 %148, %120
  %150 = sdiv i32 %122, 2
  %151 = mul i32 %150, %120
  %152 = lshr i32 %151, 1
  %153 = sdiv i32 %119, 2
  %154 = sub i32 %153, %124
  %155 = add i32 %154, %152
  %156 = add i32 %155, %149
  br label %157

157:                                              ; preds = %146, %141
  %158 = phi i32 [ %156, %146 ], [ %144, %141 ]
  %159 = lshr i32 %120, 1
  tail call void @ipu_cpmem_set_yuv_planar_full(ptr noundef %0, i32 noundef %159, i32 noundef %142, i32 noundef %158)
  br label %277

160:                                              ; preds = %72
  %161 = load i32, ptr %3, align 4
  %162 = load i32, ptr %37, align 4
  %163 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 1, i32 1
  %164 = load i32, ptr %163, align 4
  %165 = mul i32 %164, %162
  %166 = add i32 %165, %161
  %167 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 4
  %168 = load i32, ptr %167, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %160
  %171 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 1
  %172 = load i32, ptr %171, align 4
  %173 = mul i32 %172, %162
  %174 = lshr i32 %165, 1
  %175 = sdiv i32 %161, 2
  %176 = add i32 %174, %175
  %177 = sub i32 %176, %166
  %178 = add i32 %177, %173
  br label %179

179:                                              ; preds = %170, %160
  %180 = phi i32 [ %178, %170 ], [ %168, %160 ]
  %181 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 5
  %182 = load i32, ptr %181, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 1
  %186 = load i32, ptr %185, align 4
  %187 = mul i32 %186, %162
  %188 = lshr i32 %187, 1
  %189 = lshr i32 %165, 1
  %190 = sdiv i32 %161, 2
  %191 = add i32 %189, %190
  %192 = sub i32 %191, %166
  %193 = add i32 %192, %187
  %194 = add i32 %193, %188
  br label %195

195:                                              ; preds = %184, %179
  %196 = phi i32 [ %194, %184 ], [ %182, %179 ]
  %197 = lshr i32 %162, 1
  tail call void @ipu_cpmem_set_yuv_planar_full(ptr noundef %0, i32 noundef %197, i32 noundef %180, i32 noundef %196)
  br label %277

198:                                              ; preds = %72
  %199 = load i32, ptr %3, align 4
  %200 = load i32, ptr %37, align 4
  %201 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 1, i32 1
  %202 = load i32, ptr %201, align 4
  %203 = mul i32 %202, %200
  %204 = add i32 %203, %199
  %205 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 4
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %198
  %209 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 1
  %210 = load i32, ptr %209, align 4
  %211 = sdiv i32 %202, 2
  %212 = add i32 %210, %211
  %213 = mul i32 %212, %200
  %214 = sub i32 %213, %203
  br label %215

215:                                              ; preds = %208, %198
  %216 = phi i32 [ %214, %208 ], [ %206, %198 ]
  %217 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 5
  %218 = load i32, ptr %217, align 4
  tail call void @ipu_cpmem_set_yuv_planar_full(ptr noundef %0, i32 noundef %200, i32 noundef %216, i32 noundef %218)
  br label %277

219:                                              ; preds = %72
  %220 = load i32, ptr %3, align 4
  %221 = load i32, ptr %37, align 4
  %222 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 1, i32 1
  %223 = load i32, ptr %222, align 4
  %224 = mul i32 %223, %221
  %225 = add i32 %224, %220
  %226 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 4
  %227 = load i32, ptr %226, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %219
  %230 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 1
  %231 = load i32, ptr %230, align 4
  %232 = mul i32 %231, %221
  br label %233

233:                                              ; preds = %229, %219
  %234 = phi i32 [ %232, %229 ], [ %227, %219 ]
  %235 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 5
  %236 = load i32, ptr %235, align 4
  tail call void @ipu_cpmem_set_yuv_planar_full(ptr noundef %0, i32 noundef %221, i32 noundef %234, i32 noundef %236)
  br label %277

237:                                              ; preds = %72, %72, %72
  %238 = load i32, ptr %3, align 4
  %239 = shl i32 %238, 1
  %240 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 1, i32 1
  %241 = load i32, ptr %240, align 4
  %242 = load i32, ptr %37, align 4
  %243 = mul i32 %242, %241
  %244 = add i32 %243, %239
  br label %277

245:                                              ; preds = %72, %72, %72, %72, %72, %72, %72, %72, %72, %72
  %246 = load i32, ptr %3, align 4
  %247 = shl i32 %246, 2
  %248 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 1, i32 1
  %249 = load i32, ptr %248, align 4
  %250 = load i32, ptr %37, align 4
  %251 = mul i32 %250, %249
  %252 = add i32 %251, %247
  br label %277

253:                                              ; preds = %72, %72
  %254 = load i32, ptr %3, align 4
  %255 = mul i32 %254, 3
  %256 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 1, i32 1
  %257 = load i32, ptr %256, align 4
  %258 = load i32, ptr %37, align 4
  %259 = mul i32 %258, %257
  %260 = add i32 %259, %255
  br label %277

261:                                              ; preds = %72, %72, %72, %72, %72
  %262 = load i32, ptr %3, align 4
  %263 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 1, i32 1
  %264 = load i32, ptr %263, align 4
  %265 = load i32, ptr %37, align 4
  %266 = mul i32 %265, %264
  %267 = add i32 %266, %262
  br label %277

268:                                              ; preds = %72, %72, %72, %72, %72
  %269 = load i32, ptr %3, align 4
  %270 = shl i32 %269, 1
  %271 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 1, i32 1
  %272 = load i32, ptr %271, align 4
  %273 = load i32, ptr %37, align 4
  %274 = mul i32 %273, %272
  %275 = add i32 %274, %270
  br label %277

276:                                              ; preds = %72
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 877, i32 noundef 9, ptr noundef null) #5
  br label %277

277:                                              ; preds = %276, %268, %261, %253, %245, %237, %233, %215, %195, %157, %115
  %278 = phi i32 [ -22, %276 ], [ 0, %268 ], [ 0, %261 ], [ 0, %253 ], [ 0, %245 ], [ 0, %237 ], [ 0, %233 ], [ 0, %215 ], [ 0, %195 ], [ 0, %157 ], [ 0, %115 ]
  %279 = phi i32 [ 0, %276 ], [ %275, %268 ], [ %267, %261 ], [ %260, %253 ], [ %252, %245 ], [ %244, %237 ], [ %225, %233 ], [ %204, %215 ], [ %166, %195 ], [ %124, %157 ], [ %82, %115 ]
  %280 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 2
  %281 = load i32, ptr %280, align 4
  %282 = add i32 %281, %279
  %283 = and i32 %282, 7
  %284 = icmp ne i32 %283, 0
  %285 = load i1, ptr @ipu_cpmem_set_buffer.__already_done, align 1
  %286 = xor i1 %285, true
  %287 = select i1 %284, i1 %286, i1 false
  br i1 %287, label %288, label %289, !prof !17

288:                                              ; preds = %277
  store i1 true, ptr @ipu_cpmem_set_buffer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 274, i32 noundef 9, ptr noundef null) #5
  br label %289

289:                                              ; preds = %288, %277
  %290 = lshr i32 %282, 3
  %291 = load ptr, ptr %9, align 4
  %292 = getelementptr inbounds %struct.ipu_soc, ptr %291, i32 0, i32 14
  %293 = load ptr, ptr %292, align 4
  %294 = load ptr, ptr %293, align 4
  %295 = load i32, ptr %0, align 4
  %296 = getelementptr %struct.ipu_ch_param, ptr %294, i32 %295, i32 0, i32 1
  %297 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %296) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %298 = and i32 %297, -536870912
  %299 = or i32 %298, %290
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %296, i32 %299) #5, !srcloc !9
  %300 = getelementptr inbounds %struct.ipu_image, ptr %1, i32 0, i32 3
  %301 = load i32, ptr %300, align 4
  %302 = add i32 %301, %279
  tail call void @ipu_cpmem_set_buffer(ptr noundef %0, i32 noundef 1, i32 noundef %302)
  ret i32 %278
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local void @ipu_cpmem_dump(ptr nocapture noundef %0) #2 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_cpmem_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 20, i32 noundef 3520) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 14
  store ptr %4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ipu_cpmem, ptr %4, i32 0, i32 2
  store i32 0, ptr %8, align 4
  %9 = tail call ptr @devm_ioremap(ptr noundef %1, i32 noundef %2, i32 noundef 131072) #5
  store ptr %9, ptr %4, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ipu_cpmem, ptr %4, i32 0, i32 4
  store ptr %0, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %6, %3
  %14 = phi i32 [ 0, %11 ], [ -12, %3 ], [ -12, %6 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @ipu_cpmem_exit(ptr nocapture noundef %0) local_unnamed_addr #3 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

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
!8 = !{i64 2154855970}
!9 = !{i64 391083}
!10 = !{i64 391501}
!11 = !{i64 2154848388}
!12 = !{i64 2154848581}
!13 = !{i64 2154849088}
!14 = !{i64 2154849285}
!15 = !{i64 2154846795}
!16 = !{i64 2154847157}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2154850349}
!19 = !{i64 219359}
