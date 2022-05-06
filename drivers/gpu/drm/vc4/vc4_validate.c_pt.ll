; ModuleID = '/llk/IR/drivers/gpu/drm/vc4/vc4_validate.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_validate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cmd_info = type { i16, ptr, ptr }
%struct.vc4_exec_info = type { i64, i64, ptr, i32, i32, ptr, ptr, i32, [4 x ptr], i32, %struct.list_head, %struct.list_head, [2 x i32], ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.vc4_bo = type { %struct.drm_gem_cma_object, i64, i64, i8, %struct.list_head, i32, %struct.list_head, ptr, i32, %struct.refcount_struct, i32, %struct.mutex }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_vc4_submit_cl = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, [2 x i32], i32, i8, [3 x i8], i32, i64, i32, i32, i32, i32 }
%struct.drm_vc4_submit_rcl_surface = type { i32, i32, i16, i16 }
%struct.vc4_shader_state = type { i32, i32 }
%struct.vc4_validated_shader_info = type { i32, i32, i32, ptr, i32, ptr, i8 }
%struct.vc4_texture_sample_info = type { i8, [4 x i32] }
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.76, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.77, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.73 = type { i32, ptr }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.76 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.77 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }

@.str = private unnamed_addr constant [38 x i8] c"BO index %d greater than BO count %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Trying to use shader BO as something other than a shader\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Surface dimensions (%d,%d) too large\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"buffer tiling %d unsupported\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Overflow in %dx%d (%dx%d) fbo size (%d + %d > %zd)\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"0x%08x: packet %d out of bounds\0A\00", align 1
@cmd_info = internal unnamed_addr constant [255 x %struct.cmd_info] [%struct.cmd_info { i16 1, ptr @.str.12, ptr null }, %struct.cmd_info { i16 1, ptr @.str.13, ptr null }, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info { i16 1, ptr @.str.14, ptr @validate_flush }, %struct.cmd_info { i16 1, ptr @.str.15, ptr null }, %struct.cmd_info { i16 1, ptr @.str.16, ptr @validate_start_tile_binning }, %struct.cmd_info { i16 1, ptr @.str.17, ptr @validate_increment_semaphore }, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info { i16 14, ptr @.str.18, ptr @validate_indexed_prim_list }, %struct.cmd_info { i16 10, ptr @.str.19, ptr @validate_gl_array_primitive }, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info { i16 2, ptr @.str.20, ptr null }, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info { i16 5, ptr @.str.21, ptr @validate_gl_shader_state }, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info { i16 4, ptr @.str.22, ptr null }, %struct.cmd_info { i16 5, ptr @.str.23, ptr null }, %struct.cmd_info { i16 5, ptr @.str.24, ptr null }, %struct.cmd_info { i16 5, ptr @.str.25, ptr null }, %struct.cmd_info { i16 3, ptr @.str.26, ptr null }, %struct.cmd_info { i16 5, ptr @.str.27, ptr null }, %struct.cmd_info { i16 9, ptr @.str.28, ptr null }, %struct.cmd_info { i16 5, ptr @.str.29, ptr null }, %struct.cmd_info zeroinitializer, %struct.cmd_info { i16 9, ptr @.str.30, ptr null }, %struct.cmd_info { i16 9, ptr @.str.31, ptr null }, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info { i16 16, ptr @.str.32, ptr @validate_tile_binning_config }, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info zeroinitializer, %struct.cmd_info { i16 9, ptr @.str.33, ptr @validate_gem_handles }], align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"0x%08x: packet %d invalid\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"0x%08x: packet %d (%s) length 0x%08x exceeds bounds (0x%08x)\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"0x%08x: packet %d (%s) failed to validate\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Bin CL missing VC4_PACKET_START_TILE_BINNING\0A\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"Bin CL missing VC4_PACKET_INCREMENT_SEMAPHORE + VC4_PACKET_FLUSH\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"unknown cpp: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"VC4_PACKET_HALT\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"VC4_PACKET_NOP\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"VC4_PACKET_FLUSH\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"VC4_PACKET_FLUSH_ALL\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"VC4_PACKET_START_TILE_BINNING\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"VC4_PACKET_INCREMENT_SEMAPHORE\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"VC4_PACKET_GL_INDEXED_PRIMITIVE\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"VC4_PACKET_GL_ARRAY_PRIMITIVE\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"VC4_PACKET_PRIMITIVE_LIST_FORMAT\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"VC4_PACKET_GL_SHADER_STATE\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"VC4_PACKET_CONFIGURATION_BITS\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"VC4_PACKET_FLAT_SHADE_FLAGS\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"VC4_PACKET_POINT_SIZE\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"VC4_PACKET_LINE_WIDTH\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"VC4_PACKET_RHT_X_BOUNDARY\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"VC4_PACKET_DEPTH_OFFSET\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"VC4_PACKET_CLIP_WINDOW\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"VC4_PACKET_VIEWPORT_OFFSET\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"VC4_PACKET_CLIPPER_XY_SCALING\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"VC4_PACKET_CLIPPER_Z_SCALING\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"VC4_PACKET_TILE_BINNING_MODE_CONFIG\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"VC4_PACKET_GEM_HANDLES\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"Bin CL must end with VC4_PACKET_FLUSH\0A\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"Duplicate VC4_PACKET_START_TILE_BINNING\0A\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"missing VC4_PACKET_TILE_BINNING_MODE_CONFIG\0A\00", align 1
@.str.37 = private unnamed_addr constant [53 x i8] c"Bin CL must end with VC4_PACKET_INCREMENT_SEMAPHORE\0A\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"shader state must precede primitives\0A\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"IB access overflow (%d + %d*%d > %zd)\0A\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"primitive vertex count overflow\0A\00", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"More requests for shader states than declared\0A\00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c"high bits set in GL shader rec reference\0A\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c"Duplicate VC4_PACKET_TILE_BINNING_MODE_CONFIG\0A\00", align 1
@.str.44 = private unnamed_addr constant [40 x i8] c"Tile binning config of %dx%d too small\0A\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"unsupported binning config flags 0x%02x\0A\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"Failed to allocate binner memory: %d\0A\00", align 1
@validate_gl_shader_rec.shader_reloc_offsets = internal unnamed_addr constant [3 x i32] [i32 4, i32 16, i32 28], align 4
@.str.48 = private unnamed_addr constant [62 x i8] c"overflowed shader recs reading %d handles from %d bytes left\0A\00", align 1
@.str.49 = private unnamed_addr constant [62 x i8] c"overflowed shader recs copying %db packet from %d bytes left\0A\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"Shader handle %d too big\0A\00", align 1
@.str.51 = private unnamed_addr constant [39 x i8] c"Thread mode of CL and FS do not match\0A\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"cs and vs cannot be threaded\0A\00", align 1
@.str.53 = private unnamed_addr constant [40 x i8] c"Shaders must be at offset 0 of the BO.\0A\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"Uniforms src buffer overflow\0A\00", align 1
@.str.55 = private unnamed_addr constant [36 x i8] c"BO offset overflow (%d + %d > %zu)\0A\00", align 1
@.str.56 = private unnamed_addr constant [44 x i8] c"primitives use index %d out of supplied %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"UBO offset greater than UBO size\0A\00", align 1
@.str.58 = private unnamed_addr constant [44 x i8] c"UBO clamp would allow reads outside of UBO\0A\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"Cube map stride set twice\0A\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"Cube map stride not set\0A\00", align 1
@.str.61 = private unnamed_addr constant [31 x i8] c"Texture format %d unsupported\0A\00", align 1
@.str.62 = private unnamed_addr constant [73 x i8] c"Level %d (%dx%d -> %dx%d) size %db overflowed buffer bounds (offset %d)\0A\00", align 1
@.str.63 = private unnamed_addr constant [34 x i8] c"\016[drm] Texture p0 at %d: 0x%08x\0A\00", align 1
@.str.64 = private unnamed_addr constant [34 x i8] c"\016[drm] Texture p1 at %d: 0x%08x\0A\00", align 1
@.str.65 = private unnamed_addr constant [34 x i8] c"\016[drm] Texture p2 at %d: 0x%08x\0A\00", align 1
@.str.66 = private unnamed_addr constant [34 x i8] c"\016[drm] Texture p3 at %d: 0x%08x\0A\00", align 1
@switch.table.vc4_validate_shader_recs.67 = private unnamed_addr constant [8 x i32] [i32 32, i32 32, i32 32, i32 16, i32 32, i32 32, i32 32, i32 8], align 4
@switch.table.vc4_validate_shader_recs.68 = private unnamed_addr constant [8 x i32] [i32 32, i32 16, i32 32, i32 16, i32 32, i32 32, i32 32, i32 16], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vc4_use_bo(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %1, i32 noundef %4) #8
  br label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr ptr, ptr %9, i32 %1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.vc4_bo, ptr %11, i32 0, i32 7
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #8
  br label %16

16:                                               ; preds = %15, %7, %6
  %17 = phi ptr [ null, %6 ], [ null, %15 ], [ %11, %7 ]
  ret ptr %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @vc4_check_tex_size(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = zext i8 %6 to i32
  switch i8 %6, label %10 [
    i8 1, label %11
    i8 2, label %11
    i8 4, label %13
    i8 8, label %9
  ]

9:                                                ; preds = %7
  br label %13

10:                                               ; preds = %7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %8) #8
  br label %11

11:                                               ; preds = %10, %7, %7
  %12 = phi i32 [ 1, %10 ], [ 8, %7 ], [ 8, %7 ]
  switch i8 %6, label %15 [
    i8 1, label %16
    i8 2, label %13
    i8 4, label %13
    i8 8, label %13
  ]

13:                                               ; preds = %11, %11, %11, %9, %7
  %14 = phi i32 [ %12, %11 ], [ %12, %11 ], [ %12, %11 ], [ 2, %9 ], [ 4, %7 ]
  br label %16

15:                                               ; preds = %11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %8) #8
  br label %16

16:                                               ; preds = %15, %13, %11
  %17 = phi i32 [ %12, %15 ], [ %14, %13 ], [ %12, %11 ]
  %18 = phi i32 [ 1, %15 ], [ 4, %13 ], [ 8, %11 ]
  %19 = icmp ugt i32 %4, 4096
  %20 = icmp ugt i32 %5, 4096
  %21 = or i1 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %4, i32 noundef %5) #8
  br label %61

23:                                               ; preds = %16
  switch i8 %3, label %46 [
    i8 0, label %24
    i8 1, label %28
    i8 2, label %38
  ]

24:                                               ; preds = %23
  %25 = add nsw i32 %4, -1
  %26 = add nsw i32 %17, -1
  %27 = or i32 %26, %25
  br label %48

28:                                               ; preds = %23
  %29 = add nsw i32 %4, -1
  %30 = shl nuw nsw i32 %17, 3
  %31 = add nsw i32 %30, -1
  %32 = or i32 %31, %29
  %33 = add nsw i32 %5, -1
  %34 = shl nuw nsw i32 %18, 3
  %35 = add nsw i32 %34, -1
  %36 = or i32 %35, %33
  %37 = add i32 %36, 1
  br label %48

38:                                               ; preds = %23
  %39 = add nsw i32 %4, -1
  %40 = add nsw i32 %17, -1
  %41 = or i32 %40, %39
  %42 = add nsw i32 %5, -1
  %43 = add nsw i32 %18, -1
  %44 = or i32 %43, %42
  %45 = add i32 %44, 1
  br label %48

46:                                               ; preds = %23
  %47 = zext i8 %3 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %47) #8
  br label %61

48:                                               ; preds = %38, %28, %24
  %49 = phi i32 [ %41, %38 ], [ %32, %28 ], [ %27, %24 ]
  %50 = phi i32 [ %45, %38 ], [ %37, %28 ], [ %5, %24 ]
  %51 = add i32 %49, 1
  %52 = mul i32 %51, %8
  %53 = mul i32 %52, %50
  %54 = add i32 %53, %2
  %55 = icmp ult i32 %54, %53
  %56 = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 5
  %57 = load i32, ptr %56, align 8
  %58 = icmp ugt i32 %54, %57
  %59 = select i1 %55, i1 true, i1 %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %4, i32 noundef %5, i32 noundef %51, i32 noundef %50, i32 noundef %53, i32 noundef %2, i32 noundef %57) #8
  br label %61

61:                                               ; preds = %60, %48, %46, %22
  %62 = phi i1 [ false, %22 ], [ false, %46 ], [ false, %60 ], [ true, %48 ]
  ret i1 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_validate_bin_cl(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.vc4_exec_info, ptr %3, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %6, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  br label %9

9:                                                ; preds = %50, %4
  %10 = phi i32 [ 0, %4 ], [ %52, %50 ]
  %11 = phi i32 [ 0, %4 ], [ %30, %50 ]
  %12 = icmp ult i32 %11, %8
  br i1 %12, label %13, label %54

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %1, i32 %10
  %15 = getelementptr i8, ptr %2, i32 %11
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i8 %16, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %11, i32 noundef 255) #8
  br label %73

20:                                               ; preds = %13
  %21 = getelementptr [255 x %struct.cmd_info], ptr @cmd_info, i32 0, i32 %17, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = zext i8 %16 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %11, i32 noundef %25) #8
  br label %73

26:                                               ; preds = %20
  %27 = getelementptr [255 x %struct.cmd_info], ptr @cmd_info, i32 0, i32 %17
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = add i32 %11, %29
  %31 = icmp ugt i32 %30, %8
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = zext i8 %16 to i32
  %34 = zext i16 %28 to i32
  %35 = add i32 %11, %8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %11, i32 noundef %33, ptr noundef nonnull %22, i32 noundef %34, i32 noundef %35) #8
  br label %73

36:                                               ; preds = %26
  %37 = icmp eq i8 %16, -2
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %14, ptr align 1 %15, i32 %29, i1 false)
  br label %39

39:                                               ; preds = %38, %36
  %40 = getelementptr [255 x %struct.cmd_info], ptr @cmd_info, i32 0, i32 %17, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %14, i32 1
  %45 = getelementptr i8, ptr %15, i32 1
  %46 = tail call i32 %41(ptr noundef %3, ptr noundef %44, ptr noundef %45) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = zext i8 %16 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %11, i32 noundef %49, ptr noundef nonnull %22) #8
  br label %73

50:                                               ; preds = %43, %39
  %51 = select i1 %37, i32 0, i32 %29
  %52 = add i32 %51, %10
  %53 = icmp eq i8 %16, 0
  br i1 %53, label %54, label %9

54:                                               ; preds = %50, %9
  %55 = phi i32 [ %10, %9 ], [ %52, %50 ]
  %56 = getelementptr inbounds %struct.vc4_exec_info, ptr %3, i32 0, i32 25
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, %55
  %59 = getelementptr inbounds %struct.vc4_exec_info, ptr %3, i32 0, i32 26
  store i32 %58, ptr %59, align 8
  %60 = getelementptr inbounds %struct.vc4_exec_info, ptr %3, i32 0, i32 18
  %61 = load i8, ptr %60, align 1, !range !8
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9) #8
  br label %73

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.vc4_exec_info, ptr %3, i32 0, i32 19
  %66 = load i8, ptr %65, align 2, !range !8
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.vc4_exec_info, ptr %3, i32 0, i32 20
  %70 = load i8, ptr %69, align 1, !range !8
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %64
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.10) #8
  br label %73

73:                                               ; preds = %72, %68, %63, %48, %32, %24, %19
  %74 = phi i32 [ -22, %72 ], [ -22, %63 ], [ 0, %68 ], [ -22, %19 ], [ -22, %32 ], [ -22, %48 ], [ -22, %24 ]
  ret i32 %74
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_validate_shader_recs(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [11 x ptr], align 4
  %4 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 16
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %519, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 14
  %9 = getelementptr inbounds i8, ptr %3, i32 12
  %10 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 33
  %11 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 30
  %12 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 31
  %13 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 7
  %14 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 6
  %15 = getelementptr inbounds [11 x ptr], ptr %3, i32 0, i32 1
  %16 = getelementptr inbounds [11 x ptr], ptr %3, i32 0, i32 2
  %17 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 37
  %18 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 34
  %19 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 35
  %20 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 1
  %21 = getelementptr inbounds %struct.vc4_exec_info, ptr %1, i32 0, i32 36
  br label %22

22:                                               ; preds = %515, %7
  %23 = phi i32 [ 0, %7 ], [ %516, %515 ]
  %24 = load ptr, ptr %8, align 8
  %25 = getelementptr %struct.vc4_shader_state, ptr %24, i32 %23
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %9, i8 0, i32 32, i1 false) #8, !annotation !9
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 7
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 8, i32 %27
  %30 = and i32 %26, 8
  %31 = icmp eq i32 %30, 0
  %32 = shl nuw nsw i32 %29, 2
  %33 = add nuw nsw i32 %32, 100
  %34 = shl nuw nsw i32 %29, 3
  %35 = add nuw nsw i32 %34, 36
  %36 = select i1 %31, i32 %35, i32 %33
  %37 = add nuw nsw i32 %29, 3
  %38 = shl nuw nsw i32 %37, 2
  %39 = load i32, ptr %10, align 4
  %40 = icmp ult i32 %39, %38
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.48, i32 noundef %37, i32 noundef %39) #8
  br label %514

42:                                               ; preds = %22
  %43 = load ptr, ptr %11, align 8
  %44 = getelementptr i8, ptr %43, i32 %38
  store ptr %44, ptr %11, align 8
  %45 = sub i32 %39, %38
  store i32 %45, ptr %10, align 4
  %46 = icmp ugt i32 %36, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.49, i32 noundef %36, i32 noundef %45) #8
  br label %514

48:                                               ; preds = %42
  %49 = load ptr, ptr %12, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %49, ptr noundef align 1 %44, i32 %36, i1 false) #8
  %50 = load ptr, ptr %11, align 8
  %51 = getelementptr i8, ptr %50, i32 %36
  store ptr %51, ptr %11, align 8
  %52 = add nuw nsw i32 %36, 15
  %53 = and i32 %52, -16
  %54 = sub nsw i32 %53, %36
  %55 = icmp ugt i32 %54, %38
  br i1 %55, label %56, label %57, !prof !10

56:                                               ; preds = %48
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/vc4/vc4_validate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 791, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

57:                                               ; preds = %48
  %58 = load ptr, ptr %12, align 4
  %59 = getelementptr i8, ptr %58, i32 %53
  store ptr %59, ptr %12, align 4
  %60 = load i32, ptr %10, align 4
  %61 = sub i32 %60, %36
  store i32 %61, ptr %10, align 4
  %62 = load i32, ptr %13, align 4
  %63 = load i32, ptr %43, align 4
  %64 = icmp ugt i32 %63, %62
  br i1 %64, label %81, label %83

65:                                               ; preds = %83
  %66 = getelementptr i32, ptr %43, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp ugt i32 %67, %62
  br i1 %68, label %81, label %69

69:                                               ; preds = %65
  %70 = getelementptr ptr, ptr %84, i32 %67
  %71 = load ptr, ptr %70, align 4
  store ptr %71, ptr %15, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %514, label %73

73:                                               ; preds = %69
  %74 = getelementptr i32, ptr %43, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = icmp ugt i32 %75, %62
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = getelementptr ptr, ptr %84, i32 %75
  %79 = load ptr, ptr %78, align 4
  store ptr %79, ptr %16, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %514, label %88

81:                                               ; preds = %73, %65, %57
  %82 = phi i32 [ %63, %57 ], [ %67, %65 ], [ %75, %73 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.50, i32 noundef %82) #8
  br label %514

83:                                               ; preds = %57
  %84 = load ptr, ptr %14, align 8
  %85 = getelementptr ptr, ptr %84, i32 %63
  %86 = load ptr, ptr %85, align 4
  store ptr %86, ptr %3, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %514, label %65

88:                                               ; preds = %106, %77
  %89 = phi i32 [ %107, %106 ], [ 3, %77 ]
  %90 = getelementptr i32, ptr %43, i32 %89
  %91 = load i32, ptr %90, align 4
  %92 = icmp ugt i32 %62, %91
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %91, i32 noundef %62) #8
  br label %101

94:                                               ; preds = %88
  %95 = getelementptr ptr, ptr %84, i32 %91
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.vc4_bo, ptr %96, i32 0, i32 7
  %98 = load ptr, ptr %97, align 8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %94
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #8
  br label %101

101:                                              ; preds = %100, %93
  %102 = getelementptr [11 x ptr], ptr %3, i32 0, i32 %89
  store ptr null, ptr %102, align 4
  br label %514

103:                                              ; preds = %94
  %104 = getelementptr [11 x ptr], ptr %3, i32 0, i32 %89
  store ptr %96, ptr %104, align 4
  %105 = icmp eq ptr %96, null
  br i1 %105, label %514, label %106

106:                                              ; preds = %103
  %107 = add nuw nsw i32 %89, 1
  %108 = icmp eq i32 %107, %37
  br i1 %108, label %109, label %88

109:                                              ; preds = %106
  %110 = load ptr, ptr %3, align 4
  %111 = getelementptr inbounds %struct.vc4_bo, ptr %110, i32 0, i32 7
  %112 = load ptr, ptr %111, align 8
  %113 = load i16, ptr %44, align 2
  %114 = and i16 %113, 1
  %115 = xor i16 %114, 1
  %116 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %112, i32 0, i32 6
  %117 = load i8, ptr %116, align 4, !range !8
  %118 = zext i8 %117 to i16
  %119 = icmp eq i16 %115, %118
  br i1 %119, label %121, label %120

120:                                              ; preds = %109
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.51) #8
  br label %514

121:                                              ; preds = %109
  %122 = load ptr, ptr %15, align 4
  %123 = getelementptr inbounds %struct.vc4_bo, ptr %122, i32 0, i32 7
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %124, i32 0, i32 6
  %126 = load i8, ptr %125, align 4, !range !8
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %121
  %129 = load ptr, ptr %16, align 4
  %130 = getelementptr inbounds %struct.vc4_bo, ptr %129, i32 0, i32 7
  %131 = load ptr, ptr %130, align 8
  %132 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %131, i32 0, i32 6
  %133 = load i8, ptr %132, align 4, !range !8
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %128
  %136 = getelementptr i8, ptr %44, i32 4
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %110, i32 0, i32 1
  %139 = load i32, ptr %138, align 8
  %140 = add i32 %139, %137
  %141 = getelementptr i8, ptr %49, i32 4
  store i32 %140, ptr %141, align 4
  %142 = icmp eq i32 %137, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %135
  %144 = getelementptr i8, ptr %49, i32 4
  br label %151

145:                                              ; preds = %128, %121
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.52) #8
  br label %514

146:                                              ; preds = %435
  %147 = getelementptr i8, ptr %44, i32 100
  %148 = getelementptr %struct.vc4_shader_state, ptr %24, i32 %23, i32 1
  %149 = tail call i32 @llvm.umax.i32(i32 %29, i32 1) #8
  br label %461

150:                                              ; preds = %449, %135
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.53) #8
  br label %514

151:                                              ; preds = %449, %143
  %152 = phi i32 [ %453, %449 ], [ 4, %143 ]
  %153 = phi i32 [ %447, %449 ], [ 0, %143 ]
  %154 = phi ptr [ %451, %449 ], [ %110, %143 ]
  %155 = getelementptr inbounds %struct.vc4_bo, ptr %154, i32 0, i32 7
  %156 = load ptr, ptr %155, align 8
  %157 = icmp eq ptr %156, null
  br i1 %157, label %514, label %158

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %156, i32 0, i32 1
  %160 = load i32, ptr %159, align 4
  %161 = load i32, ptr %17, align 4
  %162 = icmp ugt i32 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.54) #8
  br label %514

164:                                              ; preds = %158
  %165 = load ptr, ptr %18, align 8
  %166 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %156, i32 0, i32 2
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr i32, ptr %165, i32 %167
  %169 = load ptr, ptr %19, align 4
  %170 = load i32, ptr %156, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %169, ptr align 1 %168, i32 %170, i1 false) #8
  %171 = load i32, ptr %166, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %164
  %174 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %156, i32 0, i32 3
  %175 = icmp eq i32 %153, 2
  br label %182

176:                                              ; preds = %420, %164
  %177 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %156, i32 0, i32 4
  %178 = load i32, ptr %177, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %435, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.vc4_validated_shader_info, ptr %156, i32 0, i32 5
  br label %424

182:                                              ; preds = %420, %173
  %183 = phi i32 [ 0, %173 ], [ %421, %420 ]
  %184 = load ptr, ptr %174, align 4
  %185 = getelementptr %struct.vc4_texture_sample_info, ptr %184, i32 %183
  %186 = getelementptr i32, ptr %165, i32 %183
  %187 = load i32, ptr %186, align 4
  %188 = getelementptr %struct.vc4_texture_sample_info, ptr %184, i32 %183, i32 1
  %189 = load i32, ptr %188, align 4
  %190 = getelementptr i8, ptr %168, i32 %189
  %191 = load i32, ptr %190, align 4
  %192 = getelementptr %struct.vc4_texture_sample_info, ptr %184, i32 %183, i32 1, i32 1
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr i8, ptr %168, i32 %193
  %195 = load i32, ptr %194, align 4
  %196 = getelementptr %struct.vc4_texture_sample_info, ptr %184, i32 %183, i32 1, i32 2
  %197 = load i32, ptr %196, align 4
  %198 = icmp eq i32 %197, -1
  br i1 %198, label %202, label %199

199:                                              ; preds = %182
  %200 = getelementptr i8, ptr %168, i32 %197
  %201 = load i32, ptr %200, align 4
  br label %202

202:                                              ; preds = %199, %182
  %203 = phi i32 [ %201, %199 ], [ 0, %182 ]
  %204 = getelementptr %struct.vc4_texture_sample_info, ptr %184, i32 %183, i32 1, i32 3
  %205 = load i32, ptr %204, align 4
  %206 = icmp eq i32 %205, -1
  br i1 %206, label %210, label %207

207:                                              ; preds = %202
  %208 = getelementptr i8, ptr %168, i32 %205
  %209 = load i32, ptr %208, align 4
  br label %210

210:                                              ; preds = %207, %202
  %211 = phi i32 [ %209, %207 ], [ 0, %202 ]
  %212 = load ptr, ptr %19, align 4
  %213 = getelementptr i8, ptr %212, i32 %189
  %214 = and i32 %191, -4096
  %215 = and i32 %191, 15
  %216 = lshr i32 %195, 8
  %217 = and i32 %216, 2047
  %218 = lshr i32 %195, 20
  %219 = and i32 %218, 2047
  %220 = load i32, ptr %13, align 4
  %221 = icmp ugt i32 %220, %187
  br i1 %221, label %223, label %222

222:                                              ; preds = %210
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %187, i32 noundef %220) #8
  br label %514

223:                                              ; preds = %210
  %224 = load ptr, ptr %14, align 8
  %225 = getelementptr ptr, ptr %224, i32 %187
  %226 = load ptr, ptr %225, align 4
  %227 = getelementptr inbounds %struct.vc4_bo, ptr %226, i32 0, i32 7
  %228 = load ptr, ptr %227, align 8
  %229 = icmp eq ptr %228, null
  br i1 %229, label %231, label %230

230:                                              ; preds = %223
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #8
  br label %514

231:                                              ; preds = %223
  %232 = icmp eq ptr %226, null
  br i1 %232, label %514, label %233

233:                                              ; preds = %231
  %234 = load i8, ptr %185, align 4, !range !8
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %251, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.drm_gem_object, ptr %226, i32 0, i32 5
  %238 = load i32, ptr %237, align 8
  %239 = add i32 %238, -4
  %240 = icmp ugt i32 %191, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %236
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.57) #8
  br label %411

242:                                              ; preds = %236
  %243 = sub i32 -4, %191
  %244 = add i32 %243, %238
  %245 = icmp ugt i32 %195, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %242
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.58) #8
  br label %411

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %226, i32 0, i32 1
  %249 = load i32, ptr %248, align 8
  %250 = add i32 %249, %191
  store i32 %250, ptr %213, align 4
  br label %420

251:                                              ; preds = %233
  %252 = icmp eq i32 %217, 0
  %253 = select i1 %252, i32 2048, i32 %217
  %254 = icmp eq i32 %219, 0
  %255 = select i1 %254, i32 2048, i32 %219
  %256 = and i32 %191, 512
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %274, label %258

258:                                              ; preds = %251
  %259 = and i32 %203, -1073741824
  %260 = icmp eq i32 %259, 1073741824
  %261 = and i32 %203, 1073737728
  %262 = select i1 %260, i32 %261, i32 0
  %263 = and i32 %211, -1073741824
  %264 = icmp eq i32 %263, 1073741824
  br i1 %264, label %265, label %270

265:                                              ; preds = %258
  %266 = icmp eq i32 %262, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %265
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.59) #8
  br label %411

268:                                              ; preds = %265
  %269 = and i32 %211, 1073737728
  br label %270

270:                                              ; preds = %268, %258
  %271 = phi i32 [ %269, %268 ], [ %262, %258 ]
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %270
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.60) #8
  br label %411

274:                                              ; preds = %270, %251
  %275 = phi i32 [ %271, %270 ], [ 0, %251 ]
  %276 = lshr i32 %191, 4
  %277 = and i32 %276, 15
  %278 = lshr i32 %195, 27
  %279 = and i32 %278, 16
  %280 = or i32 %279, %277
  switch i32 %280, label %282 [
    i32 8, label %283
    i32 10, label %281
    i32 6, label %281
    i32 2, label %289
    i32 3, label %289
    i32 4, label %289
    i32 7, label %289
    i32 9, label %289
    i32 11, label %289
    i32 5, label %281
    i32 16, label %313
    i32 0, label %288
    i32 1, label %288
  ]

281:                                              ; preds = %274, %274, %274
  br label %289

282:                                              ; preds = %274
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.61, i32 noundef %280) #8
  br label %411

283:                                              ; preds = %274
  %284 = add nuw nsw i32 %253, 3
  %285 = lshr i32 %284, 2
  %286 = add nuw nsw i32 %255, 3
  %287 = lshr i32 %286, 2
  br label %289

288:                                              ; preds = %274, %274
  br label %289

289:                                              ; preds = %288, %283, %281, %274, %274, %274, %274, %274, %274
  %290 = phi i32 [ 2, %283 ], [ 8, %274 ], [ 8, %274 ], [ 8, %274 ], [ 8, %274 ], [ 8, %274 ], [ 8, %274 ], [ 8, %281 ], [ 4, %288 ]
  %291 = phi i32 [ 8, %283 ], [ 2, %274 ], [ 2, %274 ], [ 2, %274 ], [ 2, %274 ], [ 2, %274 ], [ 2, %274 ], [ 1, %281 ], [ 4, %288 ]
  %292 = phi i32 [ %287, %283 ], [ %255, %274 ], [ %255, %274 ], [ %255, %274 ], [ %255, %274 ], [ %255, %274 ], [ %255, %274 ], [ %255, %281 ], [ %255, %288 ]
  %293 = phi i32 [ %285, %283 ], [ %253, %274 ], [ %253, %274 ], [ %253, %274 ], [ %253, %274 ], [ %253, %274 ], [ %253, %274 ], [ %253, %281 ], [ %253, %288 ]
  %294 = phi i32 [ 4, %283 ], [ 4, %274 ], [ 4, %274 ], [ 4, %274 ], [ 4, %274 ], [ 4, %274 ], [ 4, %274 ], [ 8, %281 ], [ 4, %288 ]
  %295 = phi i32 [ 8, %283 ], [ 32, %274 ], [ 32, %274 ], [ 32, %274 ], [ 32, %274 ], [ 32, %274 ], [ 32, %274 ], [ 32, %281 ], [ 16, %288 ]
  %296 = icmp ult i32 %295, %293
  br i1 %296, label %297, label %312

297:                                              ; preds = %289
  %298 = add nsw i32 %291, -1
  %299 = icmp ult i32 %298, 8
  br i1 %299, label %301, label %300

300:                                              ; preds = %301, %297
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %291) #8
  br label %309

301:                                              ; preds = %297
  %302 = trunc i32 %298 to i8
  %303 = lshr i8 -117, %302
  %304 = and i8 %303, 1
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %300, label %306

306:                                              ; preds = %301
  %307 = getelementptr inbounds [8 x i32], ptr @switch.table.vc4_validate_shader_recs.68, i32 0, i32 %298
  %308 = load i32, ptr %307, align 4
  br label %309

309:                                              ; preds = %306, %300
  %310 = phi i32 [ 4, %300 ], [ %308, %306 ]
  %311 = icmp ult i32 %310, %292
  br i1 %311, label %313, label %312

312:                                              ; preds = %309, %289
  br label %313

313:                                              ; preds = %312, %309, %274
  %314 = phi i32 [ %294, %309 ], [ %294, %312 ], [ 4, %274 ]
  %315 = phi i32 [ %293, %309 ], [ %293, %312 ], [ %253, %274 ]
  %316 = phi i32 [ %292, %309 ], [ %292, %312 ], [ %255, %274 ]
  %317 = phi i32 [ %291, %309 ], [ %291, %312 ], [ 4, %274 ]
  %318 = phi i32 [ %290, %309 ], [ %290, %312 ], [ 4, %274 ]
  %319 = phi i32 [ 1, %309 ], [ 2, %312 ], [ 0, %274 ]
  %320 = mul i32 %275, 5
  %321 = add i32 %320, %214
  %322 = trunc i32 %319 to i8
  %323 = trunc i32 %317 to i8
  %324 = tail call zeroext i1 @vc4_check_tex_size(ptr undef, ptr noundef nonnull %226, i32 noundef %321, i8 noundef zeroext %322, i32 noundef %315, i32 noundef %316, i8 noundef zeroext %323) #8
  br i1 %324, label %325, label %411

325:                                              ; preds = %313
  %326 = icmp eq i32 %215, 0
  br i1 %326, label %402, label %327

327:                                              ; preds = %325
  %328 = add nsw i32 %318, -1
  %329 = add nsw i32 %314, -1
  %330 = shl nuw nsw i32 %318, 3
  %331 = add nsw i32 %330, -1
  %332 = shl nuw nsw i32 %314, 3
  %333 = add nsw i32 %332, -1
  %334 = add nsw i32 %317, -1
  %335 = icmp ult i32 %334, 8
  %336 = trunc i32 %334 to i8
  %337 = lshr i8 -117, %336
  %338 = and i8 %337, 1
  %339 = icmp eq i8 %338, 0
  %340 = getelementptr inbounds [8 x i32], ptr @switch.table.vc4_validate_shader_recs.67, i32 0, i32 %334
  %341 = add nsw i32 %317, -1
  %342 = icmp ult i32 %341, 8
  %343 = trunc i32 %341 to i8
  %344 = lshr i8 -117, %343
  %345 = and i8 %344, 1
  %346 = icmp eq i8 %345, 0
  %347 = getelementptr inbounds [8 x i32], ptr @switch.table.vc4_validate_shader_recs.68, i32 0, i32 %341
  br label %348

348:                                              ; preds = %398, %327
  %349 = phi i32 [ %214, %327 ], [ %399, %398 ]
  %350 = phi i32 [ %319, %327 ], [ %390, %398 ]
  %351 = phi i32 [ 1, %327 ], [ %400, %398 ]
  %352 = lshr i32 %315, %351
  %353 = tail call i32 @llvm.umax.i32(i32 %352, i32 1) #8
  %354 = lshr i32 %316, %351
  %355 = tail call i32 @llvm.umax.i32(i32 %354, i32 1) #8
  switch i32 %350, label %386 [
    i32 1, label %356
    i32 2, label %380
  ]

356:                                              ; preds = %348
  %357 = xor i1 %335, true
  %358 = select i1 %357, i1 true, i1 %339
  br i1 %358, label %359, label %360

359:                                              ; preds = %356
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %317) #8
  br label %362

360:                                              ; preds = %356
  %361 = load i32, ptr %340, align 4
  br label %362

362:                                              ; preds = %360, %359
  %363 = phi i32 [ 4, %359 ], [ %361, %360 ]
  %364 = icmp ult i32 %363, %353
  br i1 %364, label %365, label %380

365:                                              ; preds = %362
  %366 = xor i1 %342, true
  %367 = select i1 %366, i1 true, i1 %346
  br i1 %367, label %368, label %369

368:                                              ; preds = %365
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %317) #8
  br label %371

369:                                              ; preds = %365
  %370 = load i32, ptr %347, align 4
  br label %371

371:                                              ; preds = %369, %368
  %372 = phi i32 [ 4, %368 ], [ %370, %369 ]
  %373 = icmp ult i32 %372, %355
  br i1 %373, label %374, label %380

374:                                              ; preds = %371
  %375 = add nsw i32 %353, -1
  %376 = or i32 %375, %331
  %377 = add nsw i32 %355, -1
  %378 = or i32 %377, %333
  %379 = add i32 %378, 1
  br label %389

380:                                              ; preds = %371, %362, %348
  %381 = add nsw i32 %353, -1
  %382 = or i32 %381, %328
  %383 = add nsw i32 %355, -1
  %384 = or i32 %383, %329
  %385 = add i32 %384, 1
  br label %389

386:                                              ; preds = %348
  %387 = add nsw i32 %353, -1
  %388 = or i32 %387, %328
  br label %389

389:                                              ; preds = %386, %380, %374
  %390 = phi i32 [ %350, %386 ], [ 2, %380 ], [ 1, %374 ]
  %391 = phi i32 [ %388, %386 ], [ %382, %380 ], [ %376, %374 ]
  %392 = phi i32 [ %355, %386 ], [ %385, %380 ], [ %379, %374 ]
  %393 = add i32 %391, 1
  %394 = mul i32 %393, %317
  %395 = mul i32 %394, %392
  %396 = icmp ult i32 %349, %395
  br i1 %396, label %397, label %398

397:                                              ; preds = %389
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.62, i32 noundef %351, i32 noundef %353, i32 noundef %355, i32 noundef %393, i32 noundef %392, i32 noundef %395, i32 noundef %349) #8
  br label %411

398:                                              ; preds = %389
  %399 = sub i32 %349, %395
  %400 = add nuw nsw i32 %351, 1
  %401 = icmp eq i32 %351, %215
  br i1 %401, label %402, label %348

402:                                              ; preds = %398, %325
  %403 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %226, i32 0, i32 1
  %404 = load i32, ptr %403, align 8
  %405 = add i32 %404, %191
  store i32 %405, ptr %213, align 4
  br i1 %175, label %406, label %420

406:                                              ; preds = %402
  %407 = load i64, ptr %20, align 8
  %408 = getelementptr inbounds %struct.vc4_bo, ptr %226, i32 0, i32 2
  %409 = load i64, ptr %408, align 8
  %410 = tail call i64 @llvm.umax.i64(i64 %407, i64 %409) #8
  store i64 %410, ptr %20, align 8
  br label %420

411:                                              ; preds = %397, %313, %282, %273, %267, %246, %241
  %412 = load i32, ptr %188, align 4
  %413 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %412, i32 noundef %191) #9
  %414 = load i32, ptr %192, align 4
  %415 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %414, i32 noundef %195) #9
  %416 = load i32, ptr %196, align 4
  %417 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %416, i32 noundef %203) #9
  %418 = load i32, ptr %204, align 4
  %419 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %418, i32 noundef %211) #9
  br label %514

420:                                              ; preds = %406, %402, %247
  %421 = add nuw i32 %183, 1
  %422 = load i32, ptr %166, align 4
  %423 = icmp ult i32 %421, %422
  br i1 %423, label %182, label %176

424:                                              ; preds = %424, %180
  %425 = phi i32 [ 0, %180 ], [ %432, %424 ]
  %426 = load ptr, ptr %181, align 4
  %427 = getelementptr i32, ptr %426, i32 %425
  %428 = load i32, ptr %427, align 4
  %429 = load i32, ptr %21, align 8
  %430 = load ptr, ptr %19, align 4
  %431 = getelementptr i32, ptr %430, i32 %428
  store i32 %429, ptr %431, align 4
  %432 = add nuw i32 %425, 1
  %433 = load i32, ptr %177, align 4
  %434 = icmp ult i32 %432, %433
  br i1 %434, label %424, label %435

435:                                              ; preds = %424, %176
  %436 = load i32, ptr %21, align 8
  %437 = getelementptr i8, ptr %144, i32 %152
  store i32 %436, ptr %437, align 4
  %438 = load i32, ptr %159, align 4
  %439 = load ptr, ptr %18, align 8
  %440 = getelementptr i8, ptr %439, i32 %438
  store ptr %440, ptr %18, align 8
  %441 = load i32, ptr %156, align 4
  %442 = load ptr, ptr %19, align 4
  %443 = getelementptr i8, ptr %442, i32 %441
  store ptr %443, ptr %19, align 4
  %444 = load i32, ptr %156, align 4
  %445 = load i32, ptr %21, align 8
  %446 = add i32 %445, %444
  store i32 %446, ptr %21, align 8
  %447 = add nuw nsw i32 %153, 1
  %448 = icmp eq i32 %447, 3
  br i1 %448, label %146, label %449

449:                                              ; preds = %435
  %450 = getelementptr [11 x ptr], ptr %3, i32 0, i32 %447
  %451 = load ptr, ptr %450, align 4
  %452 = getelementptr [3 x i32], ptr @validate_gl_shader_rec.shader_reloc_offsets, i32 0, i32 %447
  %453 = load i32, ptr %452, align 4
  %454 = getelementptr i8, ptr %44, i32 %453
  %455 = load i32, ptr %454, align 4
  %456 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %451, i32 0, i32 1
  %457 = load i32, ptr %456, align 8
  %458 = add i32 %457, %455
  %459 = getelementptr i8, ptr %49, i32 %453
  store i32 %458, ptr %459, align 4
  %460 = icmp eq i32 %455, 0
  br i1 %460, label %151, label %150

461:                                              ; preds = %507, %146
  %462 = phi i32 [ 0, %146 ], [ %512, %507 ]
  %463 = add nuw nsw i32 %462, 3
  %464 = getelementptr [11 x ptr], ptr %3, i32 0, i32 %463
  %465 = load ptr, ptr %464, align 4
  %466 = shl i32 %462, 3
  %467 = add nuw nsw i32 %466, 36
  %468 = getelementptr i8, ptr %44, i32 %467
  %469 = load i32, ptr %468, align 4
  %470 = getelementptr i8, ptr %468, i32 4
  %471 = load i8, ptr %470, align 1
  %472 = zext i8 %471 to i32
  %473 = add nuw nsw i32 %472, 1
  %474 = getelementptr i8, ptr %468, i32 5
  %475 = load i8, ptr %474, align 1
  %476 = zext i8 %475 to i32
  %477 = load i64, ptr %20, align 8
  %478 = getelementptr inbounds %struct.vc4_bo, ptr %465, i32 0, i32 2
  %479 = load i64, ptr %478, align 8
  %480 = tail call i64 @llvm.umax.i64(i64 %477, i64 %479) #8
  store i64 %480, ptr %20, align 8
  %481 = load i32, ptr %25, align 4
  %482 = and i32 %481, 8
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %490, label %484

484:                                              ; preds = %461
  %485 = shl i32 %462, 2
  %486 = getelementptr i8, ptr %147, i32 %485
  %487 = load i32, ptr %486, align 4
  %488 = and i32 %487, -256
  %489 = or i32 %488, %476
  br label %490

490:                                              ; preds = %484, %461
  %491 = phi i32 [ %489, %484 ], [ %476, %461 ]
  %492 = getelementptr inbounds %struct.drm_gem_object, ptr %465, i32 0, i32 5
  %493 = load i32, ptr %492, align 8
  %494 = icmp ult i32 %493, %469
  br i1 %494, label %498, label %495

495:                                              ; preds = %490
  %496 = sub i32 %493, %469
  %497 = icmp ugt i32 %496, %472
  br i1 %497, label %499, label %498

498:                                              ; preds = %495, %490
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.55, i32 noundef %469, i32 noundef %473, i32 noundef %493) #8
  br label %514

499:                                              ; preds = %495
  %500 = icmp eq i32 %491, 0
  br i1 %500, label %507, label %501

501:                                              ; preds = %499
  %502 = sub i32 %496, %473
  %503 = udiv i32 %502, %491
  %504 = load i32, ptr %148, align 4
  %505 = icmp ugt i32 %504, %503
  br i1 %505, label %506, label %507

506:                                              ; preds = %501
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.56, i32 noundef %504, i32 noundef %503) #8
  br label %514

507:                                              ; preds = %501, %499
  %508 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %465, i32 0, i32 1
  %509 = load i32, ptr %508, align 8
  %510 = add i32 %509, %469
  %511 = getelementptr i8, ptr %49, i32 %467
  store i32 %510, ptr %511, align 4
  %512 = add nuw nsw i32 %462, 1
  %513 = icmp eq i32 %512, %149
  br i1 %513, label %515, label %461

514:                                              ; preds = %506, %498, %411, %231, %230, %222, %163, %151, %150, %145, %120, %103, %101, %83, %81, %77, %69, %47, %41
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #8
  br label %519

515:                                              ; preds = %507
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #8
  %516 = add nuw i32 %23, 1
  %517 = load i32, ptr %4, align 8
  %518 = icmp ult i32 %516, %517
  br i1 %518, label %22, label %519

519:                                              ; preds = %515, %514, %2
  %520 = phi i32 [ -22, %514 ], [ 0, %2 ], [ 0, %515 ]
  ret i32 %520
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @validate_flush(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = add i32 %7, -1
  %9 = getelementptr i8, ptr %2, i32 -1
  %10 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 29
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %8
  %13 = icmp eq ptr %9, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.34) #8
  br label %17

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 20
  store i8 1, ptr %16, align 1
  br label %17

17:                                               ; preds = %15, %14
  %18 = phi i32 [ 0, %15 ], [ -22, %14 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @validate_start_tile_binning(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 18
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  store i8 1, ptr %4, align 1
  %8 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 17
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %3
  %12 = phi ptr [ @.str.35, %3 ], [ @.str.36, %7 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull %12) #8
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi i32 [ 0, %7 ], [ -22, %11 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @validate_increment_semaphore(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = add i32 %7, -2
  %9 = getelementptr i8, ptr %2, i32 -1
  %10 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 29
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %8
  %13 = icmp eq ptr %9, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.37) #8
  br label %17

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 19
  store i8 1, ptr %16, align 2
  br label %17

17:                                               ; preds = %15, %14
  %18 = phi i32 [ 0, %15 ], [ -22, %14 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @validate_indexed_prim_list(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr i8, ptr %2, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %2, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %2, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = load i8, ptr %2, align 1
  %11 = icmp ult i8 %10, 16
  %12 = select i1 %11, i32 1, i32 2
  %13 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 16
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.38) #8
  br label %64

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  %20 = add i32 %14, -1
  %21 = getelementptr %struct.vc4_shader_state, ptr %19, i32 %20, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %9, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 %9, ptr %21, align 4
  br label %25

25:                                               ; preds = %24, %17
  %26 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 12
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %29, %27
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %27, i32 noundef %29) #8
  br label %64

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 6
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr ptr, ptr %34, i32 %27
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.vc4_bo, ptr %36, i32 0, i32 7
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #8
  br label %64

41:                                               ; preds = %32
  %42 = icmp eq ptr %36, null
  br i1 %42, label %64, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 1
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds %struct.vc4_bo, ptr %36, i32 0, i32 2
  %47 = load i64, ptr %46, align 8
  %48 = tail call i64 @llvm.umax.i64(i64 %45, i64 %47)
  store i64 %48, ptr %44, align 8
  %49 = getelementptr inbounds %struct.drm_gem_object, ptr %36, i32 0, i32 5
  %50 = load i32, ptr %49, align 8
  %51 = icmp ult i32 %50, %7
  br i1 %51, label %58, label %52

52:                                               ; preds = %43
  %53 = sub i32 %50, %7
  %54 = xor i1 %11, true
  %55 = zext i1 %54 to i32
  %56 = lshr i32 %53, %55
  %57 = icmp ult i32 %56, %5
  br i1 %57, label %58, label %59

58:                                               ; preds = %52, %43
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.39, i32 noundef %7, i32 noundef %5, i32 noundef %12, i32 noundef %50) #8
  br label %64

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %36, i32 0, i32 1
  %61 = load i32, ptr %60, align 8
  %62 = add i32 %61, %7
  %63 = getelementptr i8, ptr %1, i32 5
  store i32 %62, ptr %63, align 4
  br label %64

64:                                               ; preds = %59, %58, %41, %40, %31, %16
  %65 = phi i32 [ -22, %16 ], [ -22, %58 ], [ 0, %59 ], [ -22, %41 ], [ -22, %31 ], [ -22, %40 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @validate_gl_array_primitive(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 16
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.38) #8
  br label %25

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %2, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %2, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %10
  %14 = icmp ult i32 %13, %12
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.40) #8
  br label %25

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 14
  %18 = load ptr, ptr %17, align 8
  %19 = add i32 %5, -1
  %20 = add i32 %13, -1
  %21 = getelementptr %struct.vc4_shader_state, ptr %18, i32 %19, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 %20, ptr %21, align 4
  br label %25

25:                                               ; preds = %24, %16, %15, %7
  %26 = phi i32 [ -22, %7 ], [ -22, %15 ], [ 0, %24 ], [ 0, %16 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @validate_gl_shader_state(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 16
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8
  %7 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 15
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.41) #8
  br label %44

11:                                               ; preds = %3
  %12 = load i32, ptr %2, align 4
  %13 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 14
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr %struct.vc4_shader_state, ptr %14, i32 %5
  store i32 %12, ptr %15, align 4
  %16 = load ptr, ptr %13, align 8
  %17 = getelementptr %struct.vc4_shader_state, ptr %16, i32 %5, i32 1
  store i32 0, ptr %17, align 4
  %18 = load ptr, ptr %13, align 8
  %19 = getelementptr %struct.vc4_shader_state, ptr %18, i32 %5
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %20, 16
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.42) #8
  br label %44

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 32
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %25, %20
  store i32 %26, ptr %1, align 4
  %27 = load ptr, ptr %13, align 8
  %28 = getelementptr %struct.vc4_shader_state, ptr %27, i32 %5
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 7
  %31 = and i32 %29, 8
  %32 = icmp eq i32 %31, 0
  %33 = icmp eq i32 %30, 0
  %34 = select i1 %33, i32 8, i32 %30
  %35 = shl nuw nsw i32 %34, 2
  %36 = add nuw nsw i32 %35, 100
  %37 = shl nuw nsw i32 %34, 3
  %38 = add nuw nsw i32 %37, 36
  %39 = select i1 %32, i32 %38, i32 %36
  %40 = add nuw nsw i32 %39, 15
  %41 = and i32 %40, -16
  %42 = load i32, ptr %24, align 8
  %43 = add i32 %41, %42
  store i32 %43, ptr %24, align 8
  br label %44

44:                                               ; preds = %23, %22, %10
  %45 = phi i32 [ -22, %10 ], [ -22, %22 ], [ 0, %23 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @validate_tile_binning_config(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_gem_object, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 17
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.43) #8
  br label %66

12:                                               ; preds = %3
  store i8 1, ptr %8, align 4
  %13 = getelementptr i8, ptr %2, i32 12
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 21
  store i8 %14, ptr %15, align 8
  %16 = getelementptr i8, ptr %2, i32 13
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 22
  store i8 %17, ptr %18, align 1
  %19 = zext i8 %14 to i32
  %20 = zext i8 %17 to i32
  %21 = getelementptr i8, ptr %2, i32 14
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %14, 0
  %24 = icmp eq i8 %17, 0
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.44, i32 noundef %19, i32 noundef %20) #8
  br label %66

27:                                               ; preds = %12
  %28 = zext i8 %22 to i32
  %29 = and i32 %28, 130
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.45, i32 noundef %28) #8
  br label %66

32:                                               ; preds = %27
  %33 = tail call i32 @vc4_v3d_get_bin_slot(ptr noundef %7) #8
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  switch i32 %33, label %36 [
    i32 -4, label %66
    i32 -512, label %66
  ]

36:                                               ; preds = %35
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46, i32 noundef %33) #8
  br label %66

37:                                               ; preds = %32
  %38 = shl nuw i32 1, %33
  %39 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 24
  %40 = load i32, ptr %39, align 8
  %41 = or i32 %40, %38
  store i32 %41, ptr %39, align 8
  %42 = getelementptr inbounds %struct.vc4_dev, ptr %7, i32 0, i32 24
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr inbounds %struct.vc4_dev, ptr %7, i32 0, i32 25
  %47 = load i32, ptr %46, align 8
  %48 = mul i32 %47, %33
  %49 = add i32 %48, %45
  %50 = mul nuw nsw i32 %19, 48
  %51 = mul nuw nsw i32 %50, %20
  %52 = add nuw nsw i32 %51, 4095
  %53 = and i32 %52, 8384512
  %54 = add i32 %49, %53
  %55 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 23
  store i32 %54, ptr %55, align 4
  %56 = and i8 %22, -125
  %57 = or i8 %56, 68
  %58 = getelementptr i8, ptr %1, i32 14
  store i8 %57, ptr %58, align 1
  %59 = load i32, ptr %55, align 4
  store i32 %59, ptr %1, align 4
  %60 = load i32, ptr %46, align 8
  %61 = add i32 %60, %49
  %62 = load i32, ptr %55, align 4
  %63 = sub i32 %61, %62
  %64 = getelementptr i8, ptr %1, i32 4
  store i32 %63, ptr %64, align 4
  %65 = getelementptr i8, ptr %1, i32 8
  store i32 %49, ptr %65, align 4
  br label %66

66:                                               ; preds = %37, %36, %35, %35, %31, %26, %11
  %67 = phi i32 [ -22, %11 ], [ -22, %26 ], [ -22, %31 ], [ 0, %37 ], [ %33, %35 ], [ %33, %35 ], [ %33, %36 ]
  ret i32 %67
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @validate_gem_handles(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #4 {
  %4 = getelementptr inbounds %struct.vc4_exec_info, ptr %0, i32 0, i32 12
  %5 = load i64, ptr %2, align 1
  store i64 %5, ptr %4, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_v3d_get_bin_slot(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2155796084, i64 2155796583, i64 2155796121, i64 2155796177, i64 2155796211, i64 2155796235, i64 2155796276, i64 2155796297, i64 2155796325, i64 2155796359}
