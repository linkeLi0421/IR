; ModuleID = '/llk/IR/drivers/media/platform/s5p-jpeg/jpeg-core.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-jpeg/jpeg-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.s5p_jpeg_variant = type { i32, i32, i8, ptr, ptr, [4 x ptr], i32 }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s5p_jpeg_fmt = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_event_src_change = type { i32 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.s5p_jpeg = type { %struct.mutex, %struct.spinlock, %struct.v4l2_device, ptr, ptr, ptr, ptr, i32, i32, [4 x ptr], ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.s5p_jpeg_ctx = type { ptr, i32, i16, i16, i16, %struct.s5p_jpeg_q_data, %struct.s5p_jpeg_q_data, i32, %struct.v4l2_rect, %struct.v4l2_fh, i8, i8, %struct.v4l2_ctrl_handler, i32 }
%struct.s5p_jpeg_q_data = type { ptr, i32, i32, i32, %struct.s5p_jpeg_marker, %struct.s5p_jpeg_marker, i32, i32, i32 }
%struct.s5p_jpeg_marker = type { [4 x i32], [4 x i32], i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.75, i32 }
%union.anon.75 = type { i32 }
%struct.s5p_jpeg_addr = type { i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.70, %union.anon.71, i32, ptr, i32, %struct.anon.72, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.70 = type { i64 }
%union.anon.71 = type { ptr }
%struct.anon.72 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.76 }
%union.anon.76 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.78, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.78 = type { i8 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }

@samsung_jpeg_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-jpeg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5p_jpeg_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-jpeg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos3250_jpeg_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-jpeg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4_jpeg_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4212-jpeg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4_jpeg_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-jpeg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_jpeg_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-jpeg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5433_jpeg_drvdata }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author276 = internal constant [55 x i8] c"author=Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author277 = internal constant [51 x i8] c"author=Jacek Anaszewski <j.anaszewski@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description278 = internal constant [38 x i8] c"description=Samsung JPEG codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license279 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@s5p_jpeg_drvdata = internal global %struct.s5p_jpeg_variant { i32 0, i32 16, i8 0, ptr @s5p_jpeg_m2m_ops, ptr @s5p_jpeg_irq, [4 x ptr] [ptr @.str, ptr null, ptr null, ptr null], i32 1 }, align 4
@exynos3250_jpeg_drvdata = internal global %struct.s5p_jpeg_variant { i32 1, i32 32, i8 1, ptr @exynos3250_jpeg_m2m_ops, ptr @exynos3250_jpeg_irq, [4 x ptr] [ptr @.str, ptr @.str.2, ptr null, ptr null], i32 2 }, align 4
@exynos4_jpeg_drvdata = internal global %struct.s5p_jpeg_variant { i32 2, i32 64, i8 6, ptr @exynos4_jpeg_m2m_ops, ptr @exynos4_jpeg_irq, [4 x ptr] [ptr @.str, ptr null, ptr null, ptr null], i32 1 }, align 4
@exynos5420_jpeg_drvdata = internal global %struct.s5p_jpeg_variant { i32 3, i32 32, i8 3, ptr @exynos3250_jpeg_m2m_ops, ptr @exynos3250_jpeg_irq, [4 x ptr] [ptr @.str, ptr null, ptr null, ptr null], i32 1 }, align 4
@exynos5433_jpeg_drvdata = internal global %struct.s5p_jpeg_variant { i32 4, i32 64, i8 6, ptr @exynos4_jpeg_m2m_ops, ptr @exynos4_jpeg_irq, [4 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.2], i32 4 }, align 4
@s5p_jpeg_m2m_ops = internal constant %struct.v4l2_m2m_ops { ptr @s5p_jpeg_device_run, ptr @s5p_jpeg_job_ready, ptr null }, align 4
@.str = private unnamed_addr constant [5 x i8] c"jpeg\00", align 1
@qtbl_luminance = internal unnamed_addr constant [4 x [64 x i8]] [[64 x i8] c"\14\10\19'2.>D\10\12\17&&5AD\19\17\1F&5ADD'&&5ADDD2&5ADDDD.5ADDDDD>ADDDDDDDDDDDDDD", [64 x i8] c"\10\0B\0B\10\17\1B\1F\1E\0B\0C\0C\0F\14\17\17\1E\0B\0C\0D\10\17\1A#/\10\0F\10\17\1A%/@\17\14\17\1A'3@@\1B\17\1A%3@@@\1F\17#/@@@@\1E\1E/@@@@@", [64 x i8] c"\0C\08\08\0C\11\15\18\17\08\09\09\0B\0F\13\12\17\08\09\0A\0C\13\14\1B$\0C\0B\0C\15\14\1C$5\11\0F\13\14\1E'3;\15\13\14\1C'3;;\18\12\1B$3;;;\17\17$5;;;;", [64 x i8] c"\08\06\06\08\0C\0E\10\11\06\06\06\08\0A\0D\0C\0F\06\06\07\08\0D\0E\12\18\08\08\08\0E\0D\13\18#\0C\0A\0D\0D\14\1A\22'\0E\0D\0E\13\1A\22''\10\0C\12\18\22'''\11\0F\18#''''"], align 1
@qtbl_chrominance = internal unnamed_addr constant [4 x [64 x i8]] [[64 x i8] c"\15\19 &6DDD\19\1C\18&6DDD \18 +BDDD&&+5DDDD66BDDDDDDDDDDDDDDDDDDDDDDDDDDDDD", [64 x i8] c"\11\0F\11\15\14\1A&0\0F\13\12\11\14\1A#+\11\12\14\16\1A\1E.5\15\11\16\1C\1E'5@\14\14\1A\1E'0@@\1A\1A\1E'0?@@&#.5@@@@0+5@@@@@", [64 x i8] c"\0D\0B\0D\10\14\14\1D%\0B\0E\0E\0E\10\14\1A \0D\0E\0F\11\14\17#(\10\0E\11\15\17\1E(2\14\10\14\17\1E%2;\14\14\17\1E%0;;\1D\1A#(2;;;% (2;;;;", [64 x i8] c"\09\08\09\0B\0E\11\13\18\08\0A\09\0B\0E\0D\11\16\09\09\0D\0E\0D\0F\17\1A\0B\0B\0E\0E\0F\14\1A!\0E\0E\0D\0F\14\18!'\11\0D\0F\14\18 ''\13\11\17\1A!'''\18\16\1A!''''"], align 1
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"include/media/videobuf2-core.h\00", align 1
@exynos3250_jpeg_m2m_ops = internal constant %struct.v4l2_m2m_ops { ptr @exynos3250_jpeg_device_run, ptr @s5p_jpeg_job_ready, ptr null }, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@hactblg0 = internal unnamed_addr constant [162 x i8] c"\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Interrupt timeout occurred.\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Syntax error or unrecoverable error occurred.\0A\00", align 1
@exynos4_jpeg_m2m_ops = internal constant %struct.v4l2_m2m_ops { ptr @exynos4_jpeg_device_run, ptr @s5p_jpeg_job_ready, ptr null }, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"aclk\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"aclk_xiu\00", align 1
@s5p_jpeg_driver = internal global %struct.platform_driver { ptr @s5p_jpeg_probe, ptr @s5p_jpeg_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @samsung_jpeg_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5p_jpeg_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.8 = private unnamed_addr constant [9 x i8] c"s5p-jpeg\00", align 1
@s5p_jpeg_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5p_jpeg_runtime_suspend, ptr @s5p_jpeg_runtime_resume, ptr null }, align 4
@s5p_jpeg_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"&jpeg->lock\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"cannot find IRQ\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"cannot claim IRQ %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"failed to get clock: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Failed to register v4l2 device\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"\013%s: Failed to init mem2mem device\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"\013%s: Failed to allocate video device\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%s-enc\00", align 1
@s5p_jpeg_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @s5p_jpeg_open, ptr @s5p_jpeg_release }, align 4
@s5p_jpeg_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @s5p_jpeg_querycap, ptr @s5p_jpeg_enum_fmt_vid_cap, ptr null, ptr @s5p_jpeg_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr @s5p_jpeg_g_fmt, ptr null, ptr @s5p_jpeg_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5p_jpeg_s_fmt_vid_cap, ptr null, ptr @s5p_jpeg_s_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5p_jpeg_try_fmt_vid_cap, ptr null, ptr @s5p_jpeg_try_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr null, ptr @v4l2_m2m_ioctl_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5p_jpeg_g_selection, ptr @s5p_jpeg_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5p_jpeg_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, align 4
@.str.17 = private unnamed_addr constant [39 x i8] c"\013%s: Failed to register video device\0A\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"\016%s: encoder device registered as /dev/video%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"%s-dec\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"\016%s: decoder device registered as /dev/video%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"\016%s: Samsung S5P JPEG codec\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@sjpeg_formats = internal global [26 x %struct.s5p_jpeg_fmt] [%struct.s5p_jpeg_fmt { i32 1195724874, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 121 }, %struct.s5p_jpeg_fmt { i32 1448695129, i32 16, i32 1, i32 0, i32 4, i32 3, i32 1, i32 278 }, %struct.s5p_jpeg_fmt { i32 1448695129, i32 16, i32 1, i32 0, i32 1, i32 0, i32 1, i32 326 }, %struct.s5p_jpeg_fmt { i32 1448695129, i32 16, i32 1, i32 0, i32 2, i32 0, i32 1, i32 294 }, %struct.s5p_jpeg_fmt { i32 1431918169, i32 16, i32 1, i32 0, i32 1, i32 0, i32 1, i32 326 }, %struct.s5p_jpeg_fmt { i32 1431918169, i32 16, i32 1, i32 0, i32 2, i32 0, i32 1, i32 294 }, %struct.s5p_jpeg_fmt { i32 1498831189, i32 16, i32 1, i32 0, i32 2, i32 0, i32 1, i32 294 }, %struct.s5p_jpeg_fmt { i32 1498765654, i32 16, i32 1, i32 0, i32 2, i32 0, i32 1, i32 294 }, %struct.s5p_jpeg_fmt { i32 1346520914, i32 16, i32 1, i32 0, i32 0, i32 0, i32 0, i32 198 }, %struct.s5p_jpeg_fmt { i32 1346520914, i32 16, i32 1, i32 0, i32 2, i32 0, i32 0, i32 166 }, %struct.s5p_jpeg_fmt { i32 1380075346, i32 16, i32 1, i32 0, i32 2, i32 0, i32 0, i32 166 }, %struct.s5p_jpeg_fmt { i32 1346520914, i32 16, i32 1, i32 0, i32 0, i32 0, i32 0, i32 146 }, %struct.s5p_jpeg_fmt { i32 876758866, i32 32, i32 1, i32 0, i32 0, i32 0, i32 0, i32 198 }, %struct.s5p_jpeg_fmt { i32 876758866, i32 32, i32 1, i32 0, i32 2, i32 0, i32 0, i32 166 }, %struct.s5p_jpeg_fmt { i32 875714126, i32 24, i32 2, i32 0, i32 0, i32 0, i32 0, i32 326 }, %struct.s5p_jpeg_fmt { i32 842290766, i32 24, i32 2, i32 0, i32 0, i32 0, i32 0, i32 326 }, %struct.s5p_jpeg_fmt { i32 825644622, i32 16, i32 2, i32 0, i32 1, i32 0, i32 1, i32 326 }, %struct.s5p_jpeg_fmt { i32 909203022, i32 16, i32 2, i32 0, i32 1, i32 0, i32 1, i32 326 }, %struct.s5p_jpeg_fmt { i32 842094158, i32 12, i32 2, i32 0, i32 1, i32 1, i32 2, i32 326 }, %struct.s5p_jpeg_fmt { i32 842094158, i32 12, i32 2, i32 0, i32 3, i32 3, i32 2, i32 294 }, %struct.s5p_jpeg_fmt { i32 842094158, i32 12, i32 2, i32 0, i32 4, i32 4, i32 2, i32 278 }, %struct.s5p_jpeg_fmt { i32 825382478, i32 12, i32 2, i32 0, i32 3, i32 3, i32 2, i32 294 }, %struct.s5p_jpeg_fmt { i32 825382478, i32 12, i32 2, i32 0, i32 1, i32 1, i32 2, i32 358 }, %struct.s5p_jpeg_fmt { i32 842093913, i32 12, i32 3, i32 0, i32 1, i32 1, i32 2, i32 326 }, %struct.s5p_jpeg_fmt { i32 842093913, i32 12, i32 3, i32 0, i32 4, i32 4, i32 2, i32 294 }, %struct.s5p_jpeg_fmt { i32 1497715271, i32 8, i32 1, i32 0, i32 0, i32 0, i32 5, i32 326 }], align 4
@s5p_jpeg_qops = internal constant %struct.vb2_ops { ptr @s5p_jpeg_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @s5p_jpeg_buf_prepare, ptr null, ptr null, ptr @s5p_jpeg_start_streaming, ptr @s5p_jpeg_stop_streaming, ptr @s5p_jpeg_buf_queue, ptr null }, align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.22 = private unnamed_addr constant [47 x i8] c"\013%s data will not fit into plane (%lu < %lu)\0A\00", align 1
@__func__.s5p_jpeg_buf_prepare = private unnamed_addr constant [21 x i8] c"s5p_jpeg_buf_prepare\00", align 1
@s5p_jpeg_buf_queue.ev_src_ch = internal constant { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] } { i32 5, [4 x i8] undef, { %struct.v4l2_event_src_change, [60 x i8] } { %struct.v4l2_event_src_change { i32 1 }, [60 x i8] undef }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, align 8
@s5p_jpeg_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr @s5p_jpeg_g_volatile_ctrl, ptr @s5p_jpeg_try_ctrl, ptr @s5p_jpeg_s_ctrl }, align 4
@.str.23 = private unnamed_addr constant [44 x i8] c"drivers/media/platform/s5p-jpeg/jpeg-core.c\00", align 1
@exynos3250_decoded_subsampling = internal unnamed_addr constant [7 x i32] [i32 0, i32 1, i32 2, i32 5, i32 -1, i32 -1, i32 3], align 4
@exynos4x12_decoded_subsampling = internal unnamed_addr constant [4 x i32] [i32 5, i32 0, i32 1, i32 2], align 4
@.str.24 = private unnamed_addr constant [17 x i8] c"s5p-jpeg encoder\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"s5p-jpeg decoder\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"\013%s: %s queue busy\0A\00", align 1
@__func__.s5p_jpeg_s_fmt = private unnamed_addr constant [15 x i8] c"s5p_jpeg_s_fmt\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"\013%s: Fourcc format (0x%08x) invalid.\0A\00", align 1
@subs420_fourcc_dwngrd_schema = internal unnamed_addr constant [10 x i32] [i32 842094158, i32 825382478, i32 842094158, i32 825382478, i32 842094158, i32 825382478, i32 1497715271, i32 1497715271, i32 1497715271, i32 1497715271], align 4
@subs422_fourcc_dwngrd_schema = internal unnamed_addr constant [2 x i32] [i32 909203022, i32 825644622], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author276, ptr @__UNIQUE_ID_author277, ptr @__UNIQUE_ID_description278, ptr @__UNIQUE_ID_license279], section "llvm.metadata"

@__mod_of__samsung_jpeg_match_device_table = dso_local alias [7 x %struct.of_device_id], ptr @samsung_jpeg_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @s5p_jpeg_driver, ptr noundef nonnull @__this_module) #15
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @s5p_jpeg_driver) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_irq(i32 noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %5) #15
  %7 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %6, i32 0, i32 9, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %8, i32 0, i32 8
  %10 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %9) #15
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %11, i32 0, i32 7
  %13 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %12) #15
  %14 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %6, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @s5p_jpeg_enc_stream_stat(ptr noundef %19) #15
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %17, %2
  %23 = phi i1 [ %21, %17 ], [ false, %2 ]
  %24 = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @s5p_jpeg_timer_stat(ptr noundef %25) #15
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr %24, align 4
  %29 = tail call i32 @s5p_jpeg_result_stat_ok(ptr noundef %28) #15
  %30 = icmp ne i32 %29, 0
  %31 = load i32, ptr %14, align 4
  %32 = icmp ne i32 %31, 1
  %33 = xor i1 %30, true
  %34 = select i1 %32, i1 true, i1 %33
  %35 = select i1 %32, i1 %30, i1 false
  br i1 %34, label %40, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %24, align 4
  %38 = tail call i32 @s5p_jpeg_stream_stat_ok(ptr noundef %37) #15
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %36, %22
  %41 = phi i1 [ %35, %22 ], [ %39, %36 ]
  br i1 %23, label %42, label %44

42:                                               ; preds = %40
  %43 = load ptr, ptr %24, align 4
  tail call void @s5p_jpeg_clear_enc_stream_stat(ptr noundef %43) #15
  br label %51

44:                                               ; preds = %40
  br i1 %27, label %47, label %45

45:                                               ; preds = %44
  %46 = load ptr, ptr %24, align 4
  tail call void @s5p_jpeg_clear_timer_stat(ptr noundef %46) #15
  br label %51

47:                                               ; preds = %44
  br i1 %41, label %48, label %51

48:                                               ; preds = %47
  %49 = load ptr, ptr %24, align 4
  %50 = tail call i32 @s5p_jpeg_compressed_size(ptr noundef %49) #15
  br label %51

51:                                               ; preds = %48, %47, %45, %42
  %52 = phi i32 [ 0, %42 ], [ 0, %45 ], [ %50, %48 ], [ 0, %47 ]
  %53 = phi i32 [ 6, %42 ], [ 6, %45 ], [ 5, %48 ], [ 6, %47 ]
  %54 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %13, i32 0, i32 3
  %55 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %10, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %54, ptr noundef align 8 dereferenceable(16) %55, i32 16, i1 false)
  %56 = getelementptr inbounds %struct.vb2_buffer, ptr %10, i32 0, i32 5
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds %struct.vb2_buffer, ptr %13, i32 0, i32 5
  store i64 %57, ptr %58, align 8
  %59 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %13, i32 0, i32 1
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, -458753
  store i32 %61, ptr %59, align 8
  %62 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %10, i32 0, i32 1
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 458752
  %65 = or i32 %64, %61
  store i32 %65, ptr %59, align 8
  tail call void @vb2_buffer_done(ptr noundef %10, i32 noundef %53) #15
  %66 = load i32, ptr %14, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %51
  %69 = getelementptr inbounds %struct.vb2_buffer, ptr %13, i32 0, i32 4
  %70 = load i32, ptr %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.vb2_buffer, ptr %13, i32 0, i32 10, i32 0, i32 4
  %74 = load i32, ptr %73, align 8
  %75 = icmp ult i32 %74, %52
  %76 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %77 = xor i1 %76, true
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %79, label %80, !prof !8

79:                                               ; preds = %72
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1163, i32 noundef 9, ptr noundef null) #15
  br label %80

80:                                               ; preds = %79, %72
  br i1 %75, label %81, label %83

81:                                               ; preds = %80
  %82 = load i32, ptr %73, align 8
  br label %83

83:                                               ; preds = %81, %80
  %84 = phi i32 [ %82, %81 ], [ %52, %80 ]
  %85 = getelementptr inbounds %struct.vb2_buffer, ptr %13, i32 0, i32 10, i32 0, i32 3
  store i32 %84, ptr %85, align 4
  br label %86

86:                                               ; preds = %83, %68, %51
  tail call void @vb2_buffer_done(ptr noundef %13, i32 noundef %53) #15
  %87 = load ptr, ptr %24, align 4
  %88 = tail call i32 @s5p_jpeg_get_subsampling_mode(ptr noundef %87) #15
  %89 = trunc i32 %88 to i16
  %90 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %6, i32 0, i32 4
  store i16 %89, ptr %90, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  %91 = load i16, ptr %3, align 4
  %92 = add i16 %91, 1
  store i16 %92, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %93 = load ptr, ptr %24, align 4
  tail call void @s5p_jpeg_clear_int(ptr noundef %93) #15
  %94 = load ptr, ptr %4, align 4
  %95 = load ptr, ptr %7, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %94, ptr noundef %95) #15
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_jpeg_device_run(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_jpeg, ptr %2, i32 0, i32 1
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 9, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %6, i32 0, i32 8
  %8 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %7) #15
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %9, i32 0, i32 7
  %11 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %10) #15
  %12 = tail call ptr @vb2_plane_cookie(ptr noundef %8, i32 noundef 0) #15
  %13 = load i32, ptr %12, align 4
  %14 = tail call ptr @vb2_plane_cookie(ptr noundef %11, i32 noundef 0) #15
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.s5p_jpeg, ptr %2, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_reset(ptr noundef %17) #15
  %18 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_poweron(ptr noundef %18) #15
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  tail call void @s5p_jpeg_proc_mode(ptr noundef %19, i32 noundef %21) #15
  %22 = load i32, ptr %20, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %99

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp ne i32 %27, 1346520914
  %29 = load ptr, ptr %16, align 4
  %30 = zext i1 %28 to i32
  tail call void @s5p_jpeg_input_raw_mode(ptr noundef %29, i32 noundef %30) #15
  %31 = load ptr, ptr %16, align 4
  %32 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 4
  %33 = load i16, ptr %32, align 4
  %34 = zext i16 %33 to i32
  tail call void @s5p_jpeg_subsampling_mode(ptr noundef %31, i32 noundef %34) #15
  %35 = load ptr, ptr %16, align 4
  %36 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 3
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  tail call void @s5p_jpeg_dri(ptr noundef %35, i32 noundef %38) #15
  %39 = load ptr, ptr %16, align 4
  %40 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5, i32 1
  %41 = load i32, ptr %40, align 4
  tail call void @s5p_jpeg_x(ptr noundef %39, i32 noundef %41) #15
  %42 = load ptr, ptr %16, align 4
  %43 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5, i32 2
  %44 = load i32, ptr %43, align 4
  tail call void @s5p_jpeg_y(ptr noundef %42, i32 noundef %44) #15
  %45 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_imgadr(ptr noundef %45, i32 noundef %13) #15
  %46 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_jpgadr(ptr noundef %46, i32 noundef %15) #15
  %47 = load ptr, ptr %16, align 4
  %48 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 6, i32 8
  %49 = load i32, ptr %48, align 4
  tail call void @s5p_jpeg_enc_stream_int(ptr noundef %47, i32 noundef %49) #15
  %50 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_coef(ptr noundef %50, i32 noundef 1, i32 noundef 1, i32 noundef 77) #15
  %51 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_coef(ptr noundef %51, i32 noundef 1, i32 noundef 2, i32 noundef 151) #15
  %52 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_coef(ptr noundef %52, i32 noundef 1, i32 noundef 3, i32 noundef 30) #15
  %53 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_coef(ptr noundef %53, i32 noundef 2, i32 noundef 1, i32 noundef 44) #15
  %54 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_coef(ptr noundef %54, i32 noundef 2, i32 noundef 2, i32 noundef 87) #15
  %55 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_coef(ptr noundef %55, i32 noundef 2, i32 noundef 3, i32 noundef 131) #15
  %56 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_coef(ptr noundef %56, i32 noundef 3, i32 noundef 1, i32 noundef 131) #15
  %57 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_coef(ptr noundef %57, i32 noundef 3, i32 noundef 2, i32 noundef 110) #15
  %58 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_coef(ptr noundef %58, i32 noundef 3, i32 noundef 3, i32 noundef 19) #15
  %59 = load ptr, ptr %16, align 4
  %60 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 2
  %61 = load i16, ptr %60, align 4
  %62 = zext i16 %61 to i32
  %63 = getelementptr [4 x [64 x i8]], ptr @qtbl_luminance, i32 0, i32 %62
  %64 = getelementptr i8, ptr %59, i32 1024
  br label %65

65:                                               ; preds = %65, %24
  %66 = phi i32 [ 0, %24 ], [ %72, %65 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !13
  tail call void @arm_heavy_mb() #15
  %67 = getelementptr i8, ptr %63, i32 %66
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = shl i32 %66, 2
  %71 = getelementptr i8, ptr %64, i32 %70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #15, !srcloc !14
  %72 = add nuw nsw i32 %66, 1
  %73 = icmp eq i32 %72, 64
  br i1 %73, label %74, label %65

74:                                               ; preds = %65
  %75 = load ptr, ptr %16, align 4
  %76 = load i16, ptr %60, align 4
  %77 = zext i16 %76 to i32
  %78 = getelementptr [4 x [64 x i8]], ptr @qtbl_chrominance, i32 0, i32 %77
  %79 = getelementptr i8, ptr %75, i32 1280
  br label %80

80:                                               ; preds = %80, %74
  %81 = phi i32 [ 0, %74 ], [ %87, %80 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !13
  tail call void @arm_heavy_mb() #15
  %82 = getelementptr i8, ptr %78, i32 %81
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = shl i32 %81, 2
  %86 = getelementptr i8, ptr %79, i32 %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #15, !srcloc !14
  %87 = add nuw nsw i32 %81, 1
  %88 = icmp eq i32 %87, 64
  br i1 %88, label %89, label %80

89:                                               ; preds = %80
  %90 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_qtbl(ptr noundef %90, i32 noundef 1, i32 noundef 0) #15
  %91 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_qtbl(ptr noundef %91, i32 noundef 2, i32 noundef 1) #15
  %92 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_qtbl(ptr noundef %92, i32 noundef 3, i32 noundef 1) #15
  %93 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_htbl_ac(ptr noundef %93, i32 noundef 1) #15
  %94 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_htbl_dc(ptr noundef %94, i32 noundef 1) #15
  %95 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_htbl_ac(ptr noundef %95, i32 noundef 2) #15
  %96 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_htbl_dc(ptr noundef %96, i32 noundef 2) #15
  %97 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_htbl_ac(ptr noundef %97, i32 noundef 3) #15
  %98 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_htbl_dc(ptr noundef %98, i32 noundef 3) #15
  br label %111

99:                                               ; preds = %1
  %100 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_rst_int_enable(ptr noundef %100, i1 noundef zeroext true) #15
  %101 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_data_num_int_enable(ptr noundef %101, i1 noundef zeroext true) #15
  %102 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_final_mcu_num_int_enable(ptr noundef %102, i1 noundef zeroext true) #15
  %103 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 6
  %104 = load ptr, ptr %103, align 4
  %105 = load i32, ptr %104, align 4
  %106 = icmp ne i32 %105, 1448695129
  %107 = load ptr, ptr %16, align 4
  %108 = zext i1 %106 to i32
  tail call void @s5p_jpeg_outform_raw(ptr noundef %107, i32 noundef %108) #15
  %109 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_jpgadr(ptr noundef %109, i32 noundef %13) #15
  %110 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_imgadr(ptr noundef %110, i32 noundef %15) #15
  br label %111

111:                                              ; preds = %99, %89
  %112 = load ptr, ptr %16, align 4
  tail call void @s5p_jpeg_start(ptr noundef %112) #15
  %113 = load ptr, ptr %0, align 4
  %114 = getelementptr inbounds %struct.s5p_jpeg, ptr %113, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %114, i32 noundef %4) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @s5p_jpeg_job_ready(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 13
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 10
  %11 = load i8, ptr %10, align 4, !range !15
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %5, %1
  %14 = phi i32 [ %12, %9 ], [ 0, %5 ], [ 1, %1 ]
  ret i32 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_poweron(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_proc_mode(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_input_raw_mode(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_subsampling_mode(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_dri(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_x(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_y(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_imgadr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_jpgadr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_enc_stream_int(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_coef(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_qtbl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_htbl_ac(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_htbl_dc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_rst_int_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_data_num_int_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_final_mcu_num_int_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_outform_raw(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_start(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_jpeg_enc_stream_stat(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_jpeg_timer_stat(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_jpeg_result_stat_ok(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_jpeg_stream_stat_ok(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_clear_enc_stream_stat(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_clear_timer_stat(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_jpeg_compressed_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_jpeg_get_subsampling_mode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_jpeg_clear_int(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos3250_jpeg_irq(i32 noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @exynos3250_jpeg_get_timer_status(ptr noundef %5) #15
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 4
  tail call void @exynos3250_jpeg_clear_timer_status(ptr noundef %9) #15
  %10 = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.3) #16
  br label %12

12:                                               ; preds = %8, %2
  %13 = load ptr, ptr %4, align 4
  %14 = tail call i32 @exynos3250_jpeg_get_int_status(ptr noundef %13) #15
  %15 = load ptr, ptr %4, align 4
  tail call void @exynos3250_jpeg_clear_int_status(ptr noundef %15, i32 noundef %14) #15
  %16 = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp ne i32 %21, 3
  %23 = and i32 %14, 16
  %24 = icmp eq i32 %23, 0
  %25 = or i1 %24, %22
  br i1 %25, label %29, label %26

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 10
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.4) #16
  br label %29

29:                                               ; preds = %26, %12
  %30 = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %31) #15
  %33 = icmp eq ptr %32, null
  br i1 %33, label %97, label %34

34:                                               ; preds = %29
  %35 = and i32 %14, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %32, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load ptr, ptr %4, align 4
  tail call void @exynos3250_jpeg_rstart(ptr noundef %42) #15
  br label %97

43:                                               ; preds = %37, %34
  %44 = load i32, ptr %16, align 4
  %45 = and i32 %44, 3616
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %4, align 4
  %49 = tail call i32 @exynos3250_jpeg_compressed_size(ptr noundef %48) #15
  br label %52

50:                                               ; preds = %43
  %51 = and i1 %7, %25
  br i1 %51, label %97, label %52

52:                                               ; preds = %50, %47
  %53 = phi i32 [ %49, %47 ], [ 0, %50 ]
  %54 = phi i32 [ 5, %47 ], [ 6, %50 ]
  %55 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %32, i32 0, i32 9, i32 10
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %56, i32 0, i32 8
  %58 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %57) #15
  %59 = load ptr, ptr %55, align 4
  %60 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %59, i32 0, i32 7
  %61 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %60) #15
  %62 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %58, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %62, ptr noundef align 8 dereferenceable(16) %63, i32 16, i1 false)
  %64 = getelementptr inbounds %struct.vb2_buffer, ptr %58, i32 0, i32 5
  %65 = load i64, ptr %64, align 8
  %66 = getelementptr inbounds %struct.vb2_buffer, ptr %61, i32 0, i32 5
  store i64 %65, ptr %66, align 8
  tail call void @vb2_buffer_done(ptr noundef %58, i32 noundef %54) #15
  %67 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %32, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %52
  %71 = getelementptr inbounds %struct.vb2_buffer, ptr %61, i32 0, i32 4
  %72 = load i32, ptr %71, align 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.vb2_buffer, ptr %61, i32 0, i32 10, i32 0, i32 4
  %76 = load i32, ptr %75, align 8
  %77 = icmp ult i32 %76, %53
  %78 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %79 = xor i1 %78, true
  %80 = select i1 %77, i1 %79, i1 false
  br i1 %80, label %81, label %82, !prof !8

81:                                               ; preds = %74
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1163, i32 noundef 9, ptr noundef null) #15
  br label %82

82:                                               ; preds = %81, %74
  br i1 %77, label %83, label %85

83:                                               ; preds = %82
  %84 = load i32, ptr %75, align 8
  br label %85

85:                                               ; preds = %83, %82
  %86 = phi i32 [ %84, %83 ], [ %53, %82 ]
  %87 = getelementptr inbounds %struct.vb2_buffer, ptr %61, i32 0, i32 10, i32 0, i32 3
  store i32 %86, ptr %87, align 4
  br label %88

88:                                               ; preds = %85, %70, %52
  tail call void @vb2_buffer_done(ptr noundef %61, i32 noundef %54) #15
  %89 = load ptr, ptr %4, align 4
  %90 = tail call i32 @exynos3250_jpeg_get_subsampling_mode(ptr noundef %89) #15
  %91 = trunc i32 %90 to i16
  %92 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %32, i32 0, i32 4
  store i16 %91, ptr %92, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  %93 = load i16, ptr %3, align 4
  %94 = add i16 %93, 1
  store i16 %94, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %95 = load ptr, ptr %30, align 4
  %96 = load ptr, ptr %55, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %95, ptr noundef %96) #15
  br label %100

97:                                               ; preds = %50, %41, %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  %98 = load i16, ptr %3, align 4
  %99 = add i16 %98, 1
  store i16 %99, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %100

100:                                              ; preds = %97, %88
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos3250_jpeg_device_run(ptr noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_jpeg, ptr %2, i32 0, i32 1
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.s5p_jpeg, ptr %2, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  tail call void @exynos3250_jpeg_reset(ptr noundef %6) #15
  %7 = load ptr, ptr %5, align 4
  tail call void @exynos3250_jpeg_set_dma_num(ptr noundef %7) #15
  %8 = load ptr, ptr %5, align 4
  tail call void @exynos3250_jpeg_poweron(ptr noundef %8) #15
  %9 = load ptr, ptr %5, align 4
  tail call void @exynos3250_jpeg_clk_set(ptr noundef %9) #15
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  tail call void @exynos3250_jpeg_proc_mode(ptr noundef %10, i32 noundef %12) #15
  %13 = load i32, ptr %11, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %126

15:                                               ; preds = %1
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %18, align 4
  tail call void @exynos3250_jpeg_input_raw_fmt(ptr noundef %16, i32 noundef %19) #15
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 3
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  tail call void @exynos3250_jpeg_dri(ptr noundef %20, i32 noundef %23) #15
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 2
  %26 = load i16, ptr %25, align 4
  %27 = zext i16 %26 to i32
  %28 = getelementptr [4 x [64 x i8]], ptr @qtbl_luminance, i32 0, i32 %27
  %29 = getelementptr i8, ptr %24, i32 1024
  br label %30

30:                                               ; preds = %30, %15
  %31 = phi i32 [ 0, %15 ], [ %37, %30 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !13
  tail call void @arm_heavy_mb() #15
  %32 = getelementptr i8, ptr %28, i32 %31
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl i32 %31, 2
  %36 = getelementptr i8, ptr %29, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #15, !srcloc !14
  %37 = add nuw nsw i32 %31, 1
  %38 = icmp eq i32 %37, 64
  br i1 %38, label %39, label %30

39:                                               ; preds = %30
  %40 = load ptr, ptr %5, align 4
  %41 = load i16, ptr %25, align 4
  %42 = zext i16 %41 to i32
  %43 = getelementptr [4 x [64 x i8]], ptr @qtbl_chrominance, i32 0, i32 %42
  %44 = getelementptr i8, ptr %40, i32 1280
  br label %45

45:                                               ; preds = %45, %39
  %46 = phi i32 [ 0, %39 ], [ %52, %45 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !13
  tail call void @arm_heavy_mb() #15
  %47 = getelementptr i8, ptr %43, i32 %46
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = shl i32 %46, 2
  %51 = getelementptr i8, ptr %44, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #15, !srcloc !14
  %52 = add nuw nsw i32 %46, 1
  %53 = icmp eq i32 %52, 64
  br i1 %53, label %54, label %45

54:                                               ; preds = %45
  %55 = load ptr, ptr %5, align 4
  tail call void @exynos3250_jpeg_qtbl(ptr noundef %55, i32 noundef 1, i32 noundef 0) #15
  %56 = load ptr, ptr %5, align 4
  tail call void @exynos3250_jpeg_qtbl(ptr noundef %56, i32 noundef 2, i32 noundef 1) #15
  %57 = load ptr, ptr %5, align 4
  tail call void @exynos3250_jpeg_qtbl(ptr noundef %57, i32 noundef 3, i32 noundef 1) #15
  %58 = getelementptr inbounds %struct.s5p_jpeg, ptr %2, i32 0, i32 11
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %59, i32 0, i32 2
  %61 = load i8, ptr %60, align 4
  %62 = and i8 %61, 2
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %54
  %65 = load ptr, ptr %5, align 4
  tail call fastcc void @s5p_jpeg_set_hdctbl(ptr noundef %65)
  %66 = load ptr, ptr %5, align 4
  tail call fastcc void @s5p_jpeg_set_hdctblg(ptr noundef %66)
  %67 = load ptr, ptr %5, align 4
  tail call fastcc void @s5p_jpeg_set_hactbl(ptr noundef %67)
  %68 = load ptr, ptr %5, align 4
  %69 = getelementptr i8, ptr %68, i32 2240
  br label %70

70:                                               ; preds = %70, %64
  %71 = phi i32 [ 0, %64 ], [ %77, %70 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %72 = getelementptr i8, ptr @hactblg0, i32 %71
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = shl i32 %71, 2
  %76 = getelementptr i8, ptr %69, i32 %75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #15, !srcloc !14
  %77 = add nuw nsw i32 %71, 1
  %78 = icmp eq i32 %77, 162
  br i1 %78, label %79, label %70

79:                                               ; preds = %70, %54
  %80 = load ptr, ptr %5, align 4
  tail call void @exynos3250_jpeg_htbl_ac(ptr noundef %80, i32 noundef 1) #15
  %81 = load ptr, ptr %5, align 4
  tail call void @exynos3250_jpeg_htbl_dc(ptr noundef %81, i32 noundef 1) #15
  %82 = load ptr, ptr %5, align 4
  tail call void @exynos3250_jpeg_htbl_ac(ptr noundef %82, i32 noundef 2) #15
  %83 = load ptr, ptr %5, align 4
  tail call void @exynos3250_jpeg_htbl_dc(ptr noundef %83, i32 noundef 2) #15
  %84 = load ptr, ptr %5, align 4
  tail call void @exynos3250_jpeg_htbl_ac(ptr noundef %84, i32 noundef 3) #15
  %85 = load ptr, ptr %5, align 4
  tail call void @exynos3250_jpeg_htbl_dc(ptr noundef %85, i32 noundef 3) #15
  %86 = load ptr, ptr %5, align 4
  %87 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 8
  %88 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 8, i32 2
  %89 = load i32, ptr %88, align 4
  tail call void @exynos3250_jpeg_set_x(ptr noundef %86, i32 noundef %89) #15
  %90 = load ptr, ptr %5, align 4
  %91 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 8, i32 3
  %92 = load i32, ptr %91, align 4
  tail call void @exynos3250_jpeg_set_y(ptr noundef %90, i32 noundef %92) #15
  %93 = load ptr, ptr %5, align 4
  %94 = load ptr, ptr %17, align 4
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5, i32 1
  %97 = load i32, ptr %96, align 4
  tail call void @exynos3250_jpeg_stride(ptr noundef %93, i32 noundef %95, i32 noundef %97) #15
  %98 = load ptr, ptr %5, align 4
  %99 = load i32, ptr %87, align 4
  %100 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 8, i32 1
  %101 = load i32, ptr %100, align 4
  tail call void @exynos3250_jpeg_offset(ptr noundef %98, i32 noundef %99, i32 noundef %101) #15
  tail call fastcc void @exynos3250_jpeg_set_img_addr(ptr noundef %0)
  %102 = load ptr, ptr %0, align 4
  %103 = load i32, ptr %11, align 4
  %104 = icmp eq i32 %103, 0
  %105 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 9, i32 10
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %106, i32 0, i32 8
  %108 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %106, i32 0, i32 7
  %109 = select i1 %104, ptr %108, ptr %107
  %110 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %109) #15
  %111 = tail call ptr @vb2_plane_cookie(ptr noundef %110, i32 noundef 0) #15
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr inbounds %struct.s5p_jpeg, ptr %102, i32 0, i32 6
  %114 = load ptr, ptr %113, align 4
  tail call void @exynos3250_jpeg_jpgadr(ptr noundef %114, i32 noundef %112) #15
  %115 = load ptr, ptr %5, align 4
  %116 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 4
  %117 = load i16, ptr %116, align 4
  %118 = zext i16 %117 to i32
  tail call void @exynos3250_jpeg_subsampling_mode(ptr noundef %115, i32 noundef %118) #15
  %119 = load ptr, ptr %5, align 4
  %120 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 6, i32 8
  %121 = load i32, ptr %120, align 4
  tail call void @exynos3250_jpeg_enc_stream_bound(ptr noundef %119, i32 noundef %121) #15
  %122 = load ptr, ptr %17, align 4
  %123 = load i32, ptr %122, align 4
  switch i32 %123, label %156 [
    i32 1346520914, label %124
    i32 1380075346, label %124
    i32 876758866, label %124
  ]

124:                                              ; preds = %79, %79, %79
  %125 = load ptr, ptr %5, align 4
  tail call void @exynos3250_jpeg_set_y16(ptr noundef %125, i1 noundef zeroext true) #15
  br label %156

126:                                              ; preds = %1
  tail call fastcc void @exynos3250_jpeg_set_img_addr(ptr noundef %0)
  %127 = load ptr, ptr %0, align 4
  %128 = load i32, ptr %11, align 4
  %129 = icmp eq i32 %128, 0
  %130 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 9, i32 10
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %131, i32 0, i32 8
  %133 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %131, i32 0, i32 7
  %134 = select i1 %129, ptr %133, ptr %132
  %135 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %134) #15
  %136 = tail call ptr @vb2_plane_cookie(ptr noundef %135, i32 noundef 0) #15
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.s5p_jpeg, ptr %127, i32 0, i32 6
  %139 = load ptr, ptr %138, align 4
  tail call void @exynos3250_jpeg_jpgadr(ptr noundef %139, i32 noundef %137) #15
  %140 = load ptr, ptr %5, align 4
  %141 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 6
  %142 = load ptr, ptr %141, align 4
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 6, i32 1
  %145 = load i32, ptr %144, align 4
  tail call void @exynos3250_jpeg_stride(ptr noundef %140, i32 noundef %143, i32 noundef %145) #15
  %146 = load ptr, ptr %5, align 4
  tail call void @exynos3250_jpeg_offset(ptr noundef %146, i32 noundef 0, i32 noundef 0) #15
  %147 = load ptr, ptr %5, align 4
  %148 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 7
  %149 = load i32, ptr %148, align 4
  tail call void @exynos3250_jpeg_dec_scaling_ratio(ptr noundef %147, i32 noundef %149) #15
  %150 = load ptr, ptr %5, align 4
  %151 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5, i32 8
  %152 = load i32, ptr %151, align 4
  tail call void @exynos3250_jpeg_dec_stream_size(ptr noundef %150, i32 noundef %152) #15
  %153 = load ptr, ptr %5, align 4
  %154 = load ptr, ptr %141, align 4
  %155 = load i32, ptr %154, align 4
  tail call void @exynos3250_jpeg_output_raw_fmt(ptr noundef %153, i32 noundef %155) #15
  br label %156

156:                                              ; preds = %126, %124, %79
  %157 = load ptr, ptr %5, align 4
  tail call void @exynos3250_jpeg_interrupts_enable(ptr noundef %157) #15
  %158 = load ptr, ptr %5, align 4
  %159 = load i32, ptr %11, align 4
  tail call void @exynos3250_jpeg_coef(ptr noundef %158, i32 noundef %159) #15
  %160 = load ptr, ptr %5, align 4
  tail call void @exynos3250_jpeg_set_timer(ptr noundef %160, i32 noundef 268435456) #15
  %161 = getelementptr inbounds %struct.s5p_jpeg, ptr %2, i32 0, i32 12
  store i32 0, ptr %161, align 4
  %162 = load ptr, ptr %5, align 4
  tail call void @exynos3250_jpeg_start(ptr noundef %162) #15
  %163 = load ptr, ptr %0, align 4
  %164 = getelementptr inbounds %struct.s5p_jpeg, ptr %163, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %164, i32 noundef %4) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_set_dma_num(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_poweron(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_clk_set(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_proc_mode(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_input_raw_fmt(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_dri(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_qtbl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_jpeg_set_hdctbl(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr i8, ptr %0, i32 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 0) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %3 = getelementptr i8, ptr %0, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 1) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %4 = getelementptr i8, ptr %0, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 5) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %5 = getelementptr i8, ptr %0, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %6 = getelementptr i8, ptr %0, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 1) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %7 = getelementptr i8, ptr %0, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %8 = getelementptr i8, ptr %0, i32 2072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 1) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %9 = getelementptr i8, ptr %0, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %10 = getelementptr i8, ptr %0, i32 2080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 1) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %11 = getelementptr i8, ptr %0, i32 2084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %12 = getelementptr i8, ptr %0, i32 2088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %13 = getelementptr i8, ptr %0, i32 2092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %14 = getelementptr i8, ptr %0, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %15 = getelementptr i8, ptr %0, i32 2100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %16 = getelementptr i8, ptr %0, i32 2104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %17 = getelementptr i8, ptr %0, i32 2108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #15, !srcloc !14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_jpeg_set_hdctblg(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr i8, ptr %0, i32 2112
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 0) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %3 = getelementptr i8, ptr %0, i32 2116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 1) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %4 = getelementptr i8, ptr %0, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 2) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %5 = getelementptr i8, ptr %0, i32 2124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 3) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %6 = getelementptr i8, ptr %0, i32 2128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 4) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %7 = getelementptr i8, ptr %0, i32 2132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 5) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %8 = getelementptr i8, ptr %0, i32 2136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 6) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %9 = getelementptr i8, ptr %0, i32 2140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 7) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %10 = getelementptr i8, ptr %0, i32 2144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 8) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %11 = getelementptr i8, ptr %0, i32 2148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 9) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %12 = getelementptr i8, ptr %0, i32 2152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 10) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %13 = getelementptr i8, ptr %0, i32 2156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 11) #15, !srcloc !14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_jpeg_set_hactbl(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr i8, ptr %0, i32 2176
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 0) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %3 = getelementptr i8, ptr %0, i32 2180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 2) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %4 = getelementptr i8, ptr %0, i32 2184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %5 = getelementptr i8, ptr %0, i32 2188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 3) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %6 = getelementptr i8, ptr %0, i32 2192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 3) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %7 = getelementptr i8, ptr %0, i32 2196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 2) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %8 = getelementptr i8, ptr %0, i32 2200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 4) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %9 = getelementptr i8, ptr %0, i32 2204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 3) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %10 = getelementptr i8, ptr %0, i32 2208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 5) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %11 = getelementptr i8, ptr %0, i32 2212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 5) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %12 = getelementptr i8, ptr %0, i32 2216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 4) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %13 = getelementptr i8, ptr %0, i32 2220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 4) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %14 = getelementptr i8, ptr %0, i32 2224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %15 = getelementptr i8, ptr %0, i32 2228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %16 = getelementptr i8, ptr %0, i32 2232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 1) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %17 = getelementptr i8, ptr %0, i32 2236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 125) #15, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_htbl_ac(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_htbl_dc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_set_x(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_set_y(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_stride(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_offset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @exynos3250_jpeg_set_img_addr(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca %struct.s5p_jpeg_addr, align 4
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #15
  %4 = getelementptr inbounds i8, ptr %2, i32 4
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 6, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 6, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = mul i32 %8, %6
  %10 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 9, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %15, i32 0, i32 8
  %17 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %16) #15
  %18 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5
  br label %25

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 9, i32 10
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %22, i32 0, i32 7
  %24 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %23) #15
  br label %25

25:                                               ; preds = %19, %13
  %26 = phi ptr [ %18, %13 ], [ %20, %19 ]
  %27 = phi ptr [ %17, %13 ], [ %24, %19 ]
  %28 = load ptr, ptr %26, align 4
  %29 = tail call ptr @vb2_plane_cookie(ptr noundef %27, i32 noundef 0) #15
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %2, align 4
  %31 = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %28, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  switch i32 %32, label %49 [
    i32 2, label %33
    i32 3, label %36
  ]

33:                                               ; preds = %25
  %34 = add i32 %30, %9
  %35 = getelementptr inbounds %struct.s5p_jpeg_addr, ptr %2, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  br label %49

36:                                               ; preds = %25
  %37 = add i32 %30, %9
  %38 = getelementptr inbounds %struct.s5p_jpeg_addr, ptr %2, i32 0, i32 1
  store i32 %37, ptr %38, align 4
  %39 = load i32, ptr %28, align 4
  %40 = icmp eq i32 %39, 842093913
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = lshr i32 %9, 2
  %43 = add i32 %37, %42
  %44 = getelementptr inbounds %struct.s5p_jpeg_addr, ptr %2, i32 0, i32 2
  store i32 %43, ptr %44, align 4
  br label %49

45:                                               ; preds = %36
  %46 = lshr i32 %9, 1
  %47 = add i32 %37, %46
  %48 = getelementptr inbounds %struct.s5p_jpeg_addr, ptr %2, i32 0, i32 2
  store i32 %47, ptr %48, align 4
  br label %49

49:                                               ; preds = %45, %41, %33, %25
  %50 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 6
  %51 = load ptr, ptr %50, align 4
  call void @exynos3250_jpeg_imgadr(ptr noundef %51, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_subsampling_mode(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_enc_stream_bound(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_set_y16(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_dec_scaling_ratio(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_dec_stream_size(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_output_raw_fmt(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_interrupts_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_coef(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_set_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_start(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_imgadr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_jpgadr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos3250_jpeg_get_timer_status(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_clear_timer_status(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos3250_jpeg_get_int_status(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_clear_int_status(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos3250_jpeg_rstart(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos3250_jpeg_compressed_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos3250_jpeg_get_subsampling_mode(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos4_jpeg_irq(i32 noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void @exynos4_jpeg_set_sys_int_enable(ptr noundef %5, i32 noundef 0) #15
  %6 = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %7) #15
  %9 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 9, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %10, i32 0, i32 8
  %12 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %11) #15
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %13, i32 0, i32 7
  %15 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %14) #15
  %16 = load ptr, ptr %4, align 4
  %17 = tail call i32 @exynos4_jpeg_get_int_status(ptr noundef %16) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %50, label %19

19:                                               ; preds = %2
  %20 = and i32 %17, 31
  switch i32 %20, label %24 [
    i32 1, label %50
    i32 2, label %25
    i32 4, label %21
    i32 8, label %22
    i32 16, label %23
  ]

21:                                               ; preds = %19
  br label %50

22:                                               ; preds = %19
  br label %50

23:                                               ; preds = %19
  br label %50

24:                                               ; preds = %19
  br label %50

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 8
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %25
  %31 = load ptr, ptr %4, align 4
  %32 = tail call i32 @exynos4_jpeg_get_stream_size(ptr noundef %31) #15
  %33 = getelementptr inbounds %struct.vb2_buffer, ptr %15, i32 0, i32 4
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %53, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.vb2_buffer, ptr %15, i32 0, i32 10, i32 0, i32 4
  %38 = load i32, ptr %37, align 8
  %39 = icmp ult i32 %38, %32
  %40 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %41 = xor i1 %40, true
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %44, !prof !8

43:                                               ; preds = %36
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1163, i32 noundef 9, ptr noundef null) #15
  br label %44

44:                                               ; preds = %43, %36
  br i1 %39, label %45, label %47

45:                                               ; preds = %44
  %46 = load i32, ptr %37, align 8
  br label %47

47:                                               ; preds = %45, %44
  %48 = phi i32 [ %46, %45 ], [ %32, %44 ]
  %49 = getelementptr inbounds %struct.vb2_buffer, ptr %15, i32 0, i32 10, i32 0, i32 3
  store i32 %48, ptr %49, align 4
  br label %53

50:                                               ; preds = %24, %23, %22, %21, %19, %2
  %51 = phi i32 [ 2, %21 ], [ 3, %22 ], [ 4, %23 ], [ 5, %24 ], [ %20, %19 ], [ 5, %2 ]
  %52 = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 8
  store i32 %51, ptr %52, align 4
  br label %53

53:                                               ; preds = %50, %47, %30, %25
  %54 = phi i32 [ 6, %50 ], [ 5, %47 ], [ 5, %30 ], [ 5, %25 ]
  tail call void @vb2_buffer_done(ptr noundef %12, i32 noundef %54) #15
  tail call void @vb2_buffer_done(ptr noundef %15, i32 noundef %54) #15
  %55 = getelementptr inbounds %struct.s5p_jpeg, ptr %1, i32 0, i32 11
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load ptr, ptr %4, align 4
  %61 = tail call i32 @exynos4_jpeg_get_frame_fmt(ptr noundef %60) #15
  %62 = trunc i32 %61 to i16
  %63 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 4
  store i16 %62, ptr %63, align 4
  br label %64

64:                                               ; preds = %59, %53
  %65 = load ptr, ptr %4, align 4
  tail call void @exynos4_jpeg_set_enc_dec_mode(ptr noundef %65, i32 noundef -1) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  %66 = load i16, ptr %3, align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %68 = load ptr, ptr %6, align 4
  %69 = load ptr, ptr %9, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %68, ptr noundef %69) #15
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos4_jpeg_device_run(ptr noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.s5p_jpeg, ptr %2, i32 0, i32 1
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.s5p_jpeg, ptr %2, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  tail call void @exynos4_jpeg_sw_reset(ptr noundef %9) #15
  %10 = load ptr, ptr %8, align 4
  %11 = getelementptr inbounds %struct.s5p_jpeg, ptr %2, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  tail call void @exynos4_jpeg_set_interrupt(ptr noundef %10, i32 noundef %13) #15
  br i1 %7, label %14, label %212

14:                                               ; preds = %1
  %15 = load ptr, ptr %8, align 4
  tail call void @exynos4_jpeg_set_huf_table_enable(ptr noundef %15, i32 noundef 1) #15
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr i8, ptr %16, i32 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 17105152) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %18 = getelementptr i8, ptr %16, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 16843009) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %19 = getelementptr i8, ptr %16, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 1) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %20 = getelementptr i8, ptr %16, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #15, !srcloc !14
  %21 = getelementptr i8, ptr %16, i32 544
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 17105152) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %22 = getelementptr i8, ptr %16, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 16843009) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %23 = getelementptr i8, ptr %16, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 1) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %24 = getelementptr i8, ptr %16, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #15, !srcloc !14
  %25 = getelementptr i8, ptr %16, i32 528
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 50462976) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %26 = getelementptr i8, ptr %16, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 117835012) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %27 = getelementptr i8, ptr %16, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 185207048) #15, !srcloc !14
  %28 = getelementptr i8, ptr %16, i32 560
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 50462976) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %29 = getelementptr i8, ptr %16, i32 564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 117835012) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %30 = getelementptr i8, ptr %16, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 185207048) #15, !srcloc !14
  %31 = getelementptr i8, ptr %16, i32 576
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 50397696) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %32 = getelementptr i8, ptr %16, i32 580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 50594307) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %33 = getelementptr i8, ptr %16, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 67372293) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %34 = getelementptr i8, ptr %16, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 2097217536) #15, !srcloc !14
  %35 = getelementptr i8, ptr %16, i32 768
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 50397696) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %36 = getelementptr i8, ptr %16, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 50594307) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %37 = getelementptr i8, ptr %16, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 67372293) #15, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %38 = getelementptr i8, ptr %16, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 2097217536) #15, !srcloc !14
  %39 = getelementptr i8, ptr %16, i32 592
  br label %40

40:                                               ; preds = %40, %14
  %41 = phi i32 [ 0, %14 ], [ %64, %40 ]
  %42 = getelementptr i8, ptr @hactblg0, i32 %41
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %41, 1
  %46 = getelementptr i8, ptr @hactblg0, i32 %45
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 8
  %50 = or i32 %49, %44
  %51 = or i32 %41, 2
  %52 = getelementptr i8, ptr @hactblg0, i32 %51
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 16
  %56 = or i32 %50, %55
  %57 = or i32 %41, 3
  %58 = getelementptr i8, ptr @hactblg0, i32 %57
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = shl nuw i32 %60, 24
  %62 = or i32 %56, %61
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %63 = getelementptr i8, ptr %39, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %62) #15, !srcloc !14
  %64 = add nuw nsw i32 %41, 4
  %65 = icmp ult i32 %41, 158
  br i1 %65, label %40, label %66

66:                                               ; preds = %40
  %67 = getelementptr i8, ptr %16, i32 784
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi i32 [ 0, %66 ], [ %92, %68 ]
  %70 = getelementptr i8, ptr @hactblg0, i32 %69
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = or i32 %69, 1
  %74 = getelementptr i8, ptr @hactblg0, i32 %73
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = shl nuw nsw i32 %76, 8
  %78 = or i32 %77, %72
  %79 = or i32 %69, 2
  %80 = getelementptr i8, ptr @hactblg0, i32 %79
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 %82, 16
  %84 = or i32 %78, %83
  %85 = or i32 %69, 3
  %86 = getelementptr i8, ptr @hactblg0, i32 %85
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = shl nuw i32 %88, 24
  %90 = or i32 %84, %89
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %91 = getelementptr i8, ptr %67, i32 %69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %90) #15, !srcloc !14
  %92 = add nuw nsw i32 %69, 4
  %93 = icmp ult i32 %69, 158
  br i1 %93, label %68, label %94

94:                                               ; preds = %68
  %95 = load ptr, ptr %8, align 4
  %96 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 2
  %97 = load i16, ptr %96, align 4
  %98 = zext i16 %97 to i32
  %99 = getelementptr [4 x [64 x i8]], ptr @qtbl_luminance, i32 0, i32 %98
  %100 = getelementptr i8, ptr %95, i32 256
  br label %101

101:                                              ; preds = %101, %94
  %102 = phi i32 [ 0, %94 ], [ %125, %101 ]
  %103 = getelementptr i8, ptr %99, i32 %102
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = or i32 %102, 1
  %107 = getelementptr i8, ptr %99, i32 %106
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = shl nuw nsw i32 %109, 8
  %111 = or i32 %110, %105
  %112 = or i32 %102, 2
  %113 = getelementptr i8, ptr %99, i32 %112
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i32
  %116 = shl nuw nsw i32 %115, 16
  %117 = or i32 %111, %116
  %118 = or i32 %102, 3
  %119 = getelementptr i8, ptr %99, i32 %118
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %120 to i32
  %122 = shl nuw i32 %121, 24
  %123 = or i32 %117, %122
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %124 = getelementptr i8, ptr %100, i32 %102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %123) #15, !srcloc !14
  %125 = add nuw nsw i32 %102, 4
  %126 = icmp ult i32 %102, 60
  br i1 %126, label %101, label %127

127:                                              ; preds = %101
  %128 = load ptr, ptr %8, align 4
  %129 = load i16, ptr %96, align 4
  %130 = zext i16 %129 to i32
  %131 = getelementptr [4 x [64 x i8]], ptr @qtbl_chrominance, i32 0, i32 %130
  %132 = getelementptr i8, ptr %128, i32 320
  br label %133

133:                                              ; preds = %133, %127
  %134 = phi i32 [ 0, %127 ], [ %157, %133 ]
  %135 = getelementptr i8, ptr %131, i32 %134
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i32
  %138 = or i32 %134, 1
  %139 = getelementptr i8, ptr %131, i32 %138
  %140 = load i8, ptr %139, align 1
  %141 = zext i8 %140 to i32
  %142 = shl nuw nsw i32 %141, 8
  %143 = or i32 %142, %137
  %144 = or i32 %134, 2
  %145 = getelementptr i8, ptr %131, i32 %144
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i32
  %148 = shl nuw nsw i32 %147, 16
  %149 = or i32 %143, %148
  %150 = or i32 %134, 3
  %151 = getelementptr i8, ptr %131, i32 %150
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i32
  %154 = shl nuw i32 %153, 24
  %155 = or i32 %149, %154
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %156 = getelementptr i8, ptr %132, i32 %134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %155) #15, !srcloc !14
  %157 = add nuw nsw i32 %134, 4
  %158 = icmp ult i32 %134, 60
  br i1 %158, label %133, label %159

159:                                              ; preds = %133
  %160 = load ptr, ptr %8, align 4
  %161 = load i16, ptr %96, align 4
  %162 = zext i16 %161 to i32
  tail call void @exynos4_jpeg_set_encode_tbl_select(ptr noundef %160, i32 noundef %162) #15
  %163 = load ptr, ptr %8, align 4
  %164 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 6, i32 1
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 6, i32 2
  %167 = load i32, ptr %166, align 4
  tail call void @exynos4_jpeg_set_stream_size(ptr noundef %163, i32 noundef %165, i32 noundef %167) #15
  %168 = load ptr, ptr %0, align 4
  %169 = getelementptr inbounds %struct.s5p_jpeg, ptr %168, i32 0, i32 11
  %170 = load ptr, ptr %169, align 4
  %171 = load i32, ptr %170, align 4
  %172 = icmp eq i32 %171, 2
  %173 = load ptr, ptr %8, align 4
  %174 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 4
  %175 = load i16, ptr %174, align 4
  %176 = zext i16 %175 to i32
  %177 = select i1 %172, i32 2, i32 4
  tail call void @__exynos4_jpeg_set_enc_out_fmt(ptr noundef %173, i32 noundef %176, i32 noundef %177) #15
  %178 = load ptr, ptr %8, align 4
  %179 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5
  %180 = load ptr, ptr %179, align 4
  %181 = load i32, ptr %180, align 4
  tail call void @__exynos4_jpeg_set_img_fmt(ptr noundef %178, i32 noundef %181, i32 noundef %177) #15
  tail call fastcc void @exynos4_jpeg_set_img_addr(ptr noundef %0)
  %182 = load ptr, ptr %0, align 4
  %183 = load i32, ptr %5, align 4
  %184 = icmp eq i32 %183, 0
  %185 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 9, i32 10
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %186, i32 0, i32 8
  %188 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %186, i32 0, i32 7
  %189 = select i1 %184, ptr %188, ptr %187
  %190 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %189) #15
  %191 = tail call ptr @vb2_plane_cookie(ptr noundef %190, i32 noundef 0) #15
  %192 = load i32, ptr %191, align 4
  %193 = getelementptr inbounds %struct.s5p_jpeg, ptr %182, i32 0, i32 11
  %194 = load ptr, ptr %193, align 4
  %195 = load i32, ptr %194, align 4
  %196 = icmp eq i32 %195, 4
  br i1 %196, label %197, label %204

197:                                              ; preds = %159
  %198 = load i32, ptr %5, align 4
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5, i32 3
  %202 = load i32, ptr %201, align 4
  %203 = add i32 %202, %192
  br label %204

204:                                              ; preds = %200, %197, %159
  %205 = phi i32 [ %203, %200 ], [ %192, %197 ], [ %192, %159 ]
  %206 = getelementptr inbounds %struct.s5p_jpeg, ptr %182, i32 0, i32 6
  %207 = load ptr, ptr %206, align 4
  tail call void @exynos4_jpeg_set_stream_buf_address(ptr noundef %207, i32 noundef %205) #15
  %208 = load ptr, ptr %8, align 4
  %209 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5
  %210 = load ptr, ptr %209, align 4
  %211 = load i32, ptr %210, align 4
  tail call void @exynos4_jpeg_set_encode_hoff_cnt(ptr noundef %208, i32 noundef %211) #15
  br label %559

212:                                              ; preds = %1
  tail call fastcc void @exynos4_jpeg_set_img_addr(ptr noundef %0)
  %213 = load ptr, ptr %0, align 4
  %214 = load i32, ptr %5, align 4
  %215 = icmp eq i32 %214, 0
  %216 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 9, i32 10
  %217 = load ptr, ptr %216, align 4
  %218 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %217, i32 0, i32 8
  %219 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %217, i32 0, i32 7
  %220 = select i1 %215, ptr %219, ptr %218
  %221 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %220) #15
  %222 = tail call ptr @vb2_plane_cookie(ptr noundef %221, i32 noundef 0) #15
  %223 = load i32, ptr %222, align 4
  %224 = getelementptr inbounds %struct.s5p_jpeg, ptr %213, i32 0, i32 11
  %225 = load ptr, ptr %224, align 4
  %226 = load i32, ptr %225, align 4
  %227 = icmp eq i32 %226, 4
  br i1 %227, label %228, label %235

228:                                              ; preds = %212
  %229 = load i32, ptr %5, align 4
  %230 = icmp eq i32 %229, 1
  br i1 %230, label %231, label %235

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5, i32 3
  %233 = load i32, ptr %232, align 4
  %234 = add i32 %233, %223
  br label %235

235:                                              ; preds = %231, %228, %212
  %236 = phi i32 [ %234, %231 ], [ %223, %228 ], [ %223, %212 ]
  %237 = getelementptr inbounds %struct.s5p_jpeg, ptr %213, i32 0, i32 6
  %238 = load ptr, ptr %237, align 4
  tail call void @exynos4_jpeg_set_stream_buf_address(ptr noundef %238, i32 noundef %236) #15
  %239 = load ptr, ptr %11, align 4
  %240 = load i32, ptr %239, align 4
  %241 = icmp eq i32 %240, 4
  br i1 %241, label %242, label %546

242:                                              ; preds = %235
  %243 = load ptr, ptr %0, align 4
  %244 = load ptr, ptr %216, align 4
  %245 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %244, i32 0, i32 8
  %246 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %245) #15
  %247 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5, i32 4, i32 2
  %248 = load i32, ptr %247, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %351, label %250

250:                                              ; preds = %242
  %251 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5, i32 4
  %252 = getelementptr inbounds %struct.s5p_jpeg, ptr %243, i32 0, i32 6
  br label %253

253:                                              ; preds = %347, %250
  %254 = phi i32 [ 0, %250 ], [ %348, %347 ]
  %255 = getelementptr %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5, i32 4, i32 1, i32 %254
  %256 = load i32, ptr %255, align 4
  %257 = tail call ptr @vb2_plane_vaddr(ptr noundef %246, i32 noundef 0) #15
  %258 = icmp eq i32 %256, 0
  br i1 %258, label %347, label %259

259:                                              ; preds = %253
  %260 = getelementptr [4 x i32], ptr %251, i32 0, i32 %254
  %261 = load i32, ptr %260, align 4
  %262 = ptrtoint ptr %257 to i32
  %263 = add i32 %261, %262
  %264 = inttoptr i32 %263 to ptr
  br label %265

265:                                              ; preds = %344, %259
  %266 = phi i32 [ 0, %259 ], [ %345, %344 ]
  %267 = getelementptr i8, ptr %264, i32 %266
  %268 = load i8, ptr %267, align 1
  %269 = and i8 %268, 15
  %270 = add nuw i32 %266, 1
  %271 = icmp ult i8 %268, 16
  %272 = icmp eq i8 %269, 0
  %273 = select i1 %272, i32 576, i32 768
  %274 = select i1 %272, i32 512, i32 544
  %275 = select i1 %271, i32 %274, i32 %273
  br label %283

276:                                              ; preds = %305
  %277 = icmp sgt i32 %307, 0
  br i1 %277, label %278, label %344

278:                                              ; preds = %276
  %279 = select i1 %272, i32 592, i32 784
  %280 = select i1 %272, i32 528, i32 560
  %281 = select i1 %271, i32 %280, i32 %279
  %282 = tail call i32 @llvm.usub.sat.i32(i32 %256, i32 %308) #15
  br label %310

283:                                              ; preds = %305, %265
  %284 = phi i32 [ %270, %265 ], [ %308, %305 ]
  %285 = phi i32 [ 0, %265 ], [ %307, %305 ]
  %286 = phi i32 [ 0, %265 ], [ %297, %305 ]
  %287 = phi i32 [ 0, %265 ], [ %306, %305 ]
  %288 = icmp ult i32 %284, %256
  br i1 %288, label %289, label %351

289:                                              ; preds = %283
  %290 = getelementptr i8, ptr %264, i32 %284
  %291 = load i8, ptr %290, align 1
  %292 = zext i8 %291 to i32
  %293 = shl i32 %286, 3
  %294 = and i32 %293, 24
  %295 = shl nuw i32 %292, %294
  %296 = or i32 %295, %287
  %297 = add nuw nsw i32 %286, 1
  %298 = and i32 %297, 3
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %289
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !18
  tail call void @arm_heavy_mb() #15
  %301 = load ptr, ptr %252, align 4
  %302 = getelementptr i8, ptr %301, i32 %275
  %303 = and i32 %286, 2147483644
  %304 = getelementptr i8, ptr %302, i32 %303
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %304, i32 %296) #15, !srcloc !14
  br label %305

305:                                              ; preds = %300, %289
  %306 = phi i32 [ 0, %300 ], [ %296, %289 ]
  %307 = add i32 %285, %292
  %308 = add nuw i32 %284, 1
  %309 = icmp eq i32 %297, 16
  br i1 %309, label %276, label %283

310:                                              ; preds = %332, %278
  %311 = phi i32 [ 0, %278 ], [ %324, %332 ]
  %312 = phi i32 [ 0, %278 ], [ %333, %332 ]
  %313 = phi i32 [ %308, %278 ], [ %316, %332 ]
  %314 = icmp eq i32 %311, %282
  br i1 %314, label %351, label %315

315:                                              ; preds = %310
  %316 = add nuw i32 %313, 1
  %317 = getelementptr i8, ptr %264, i32 %313
  %318 = load i8, ptr %317, align 1
  %319 = zext i8 %318 to i32
  %320 = shl i32 %311, 3
  %321 = and i32 %320, 24
  %322 = shl nuw i32 %319, %321
  %323 = or i32 %322, %312
  %324 = add nuw nsw i32 %311, 1
  %325 = and i32 %324, 3
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %315
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !19
  tail call void @arm_heavy_mb() #15
  %328 = load ptr, ptr %252, align 4
  %329 = getelementptr i8, ptr %328, i32 %281
  %330 = and i32 %311, 2147483644
  %331 = getelementptr i8, ptr %329, i32 %330
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %331, i32 %323) #15, !srcloc !14
  br label %332

332:                                              ; preds = %327, %315
  %333 = phi i32 [ 0, %327 ], [ %323, %315 ]
  %334 = icmp eq i32 %324, %307
  br i1 %334, label %335, label %310

335:                                              ; preds = %332
  %336 = and i32 %307, 3
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %344, label %338

338:                                              ; preds = %335
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !20
  tail call void @arm_heavy_mb() #15
  %339 = load ptr, ptr %252, align 4
  %340 = getelementptr i8, ptr %339, i32 %281
  %341 = sdiv i32 %307, 4
  %342 = shl nsw i32 %341, 2
  %343 = getelementptr i8, ptr %340, i32 %342
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %343, i32 %333) #15, !srcloc !14
  br label %344

344:                                              ; preds = %338, %335, %276
  %345 = phi i32 [ %316, %335 ], [ %316, %338 ], [ %308, %276 ]
  %346 = icmp ult i32 %345, %256
  br i1 %346, label %265, label %347

347:                                              ; preds = %344, %253
  %348 = add nuw i32 %254, 1
  %349 = load i32, ptr %247, align 4
  %350 = icmp ult i32 %348, %349
  br i1 %350, label %253, label %351

351:                                              ; preds = %347, %310, %283, %242
  %352 = load ptr, ptr %0, align 4
  %353 = load ptr, ptr %216, align 4
  %354 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %353, i32 0, i32 8
  %355 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %354) #15
  %356 = tail call ptr @vb2_plane_vaddr(ptr noundef %355, i32 noundef 0) #15
  %357 = ptrtoint ptr %356 to i32
  %358 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5, i32 3
  %359 = load i32, ptr %358, align 4
  %360 = add i32 %359, %357
  %361 = add i32 %360, 2
  %362 = inttoptr i32 %361 to ptr
  %363 = load i8, ptr %362, align 1
  %364 = zext i8 %363 to i32
  %365 = getelementptr i8, ptr %362, i32 1
  %366 = load i8, ptr %365, align 1
  %367 = zext i8 %366 to i32
  %368 = shl nuw nsw i32 %364, 8
  %369 = or i32 %368, %367
  %370 = add nsw i32 %369, -2
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %402, label %372

372:                                              ; preds = %351
  %373 = add i32 %360, 4
  %374 = inttoptr i32 %373 to ptr
  %375 = load i8, ptr %374, align 1
  %376 = icmp ne i8 %375, 0
  %377 = icmp ne i32 %370, 1
  %378 = select i1 %376, i1 %377, i1 false
  br i1 %378, label %379, label %402

379:                                              ; preds = %372
  %380 = zext i8 %375 to i32
  %381 = getelementptr inbounds %struct.s5p_jpeg, ptr %352, i32 0, i32 6
  br label %382

382:                                              ; preds = %387, %379
  %383 = phi i32 [ %380, %379 ], [ %388, %387 ]
  %384 = phi i32 [ 1, %379 ], [ %391, %387 ]
  %385 = add nuw nsw i32 %384, 1
  %386 = icmp ult i32 %385, %370
  br i1 %386, label %387, label %402

387:                                              ; preds = %382
  %388 = add nsw i32 %383, -1
  %389 = getelementptr i8, ptr %374, i32 %384
  %390 = load i8, ptr %389, align 1
  %391 = add nuw nsw i32 %384, 2
  %392 = getelementptr i8, ptr %374, i32 %385
  %393 = load i8, ptr %392, align 1
  %394 = load ptr, ptr %381, align 4
  %395 = lshr i8 %393, 3
  %396 = and i8 %395, 2
  %397 = and i8 %393, 1
  %398 = or i8 %396, %397
  tail call void @exynos4_jpeg_select_dec_h_tbl(ptr noundef %394, i8 noundef zeroext %390, i8 noundef zeroext %398) #15
  %399 = icmp ne i32 %388, 0
  %400 = icmp ult i32 %391, %370
  %401 = select i1 %399, i1 %400, i1 false
  br i1 %401, label %382, label %402

402:                                              ; preds = %387, %382, %372, %351
  %403 = load ptr, ptr %0, align 4
  %404 = load ptr, ptr %216, align 4
  %405 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %404, i32 0, i32 8
  %406 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %405) #15
  %407 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5, i32 5, i32 2
  %408 = load i32, ptr %407, align 4
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %473, label %410

410:                                              ; preds = %402
  %411 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5, i32 5
  %412 = getelementptr inbounds %struct.s5p_jpeg, ptr %403, i32 0, i32 6
  br label %413

413:                                              ; preds = %469, %410
  %414 = phi i32 [ 0, %410 ], [ %470, %469 ]
  %415 = getelementptr %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5, i32 5, i32 1, i32 %414
  %416 = load i32, ptr %415, align 4
  %417 = tail call ptr @vb2_plane_vaddr(ptr noundef %406, i32 noundef 0) #15
  %418 = icmp ugt i32 %416, 64
  br i1 %418, label %419, label %469

419:                                              ; preds = %413
  %420 = getelementptr [4 x i32], ptr %411, i32 0, i32 %414
  %421 = load i32, ptr %420, align 4
  %422 = ptrtoint ptr %417 to i32
  %423 = add i32 %421, %422
  %424 = inttoptr i32 %423 to ptr
  br label %428

425:                                              ; preds = %465
  %426 = sub i32 %416, %467
  %427 = icmp ugt i32 %426, 64
  br i1 %427, label %428, label %469

428:                                              ; preds = %425, %419
  %429 = phi i32 [ 0, %419 ], [ %467, %425 ]
  %430 = icmp ugt i32 %416, %429
  br i1 %430, label %431, label %473

431:                                              ; preds = %428
  %432 = getelementptr i8, ptr %424, i32 %429
  %433 = load i8, ptr %432, align 1
  %434 = zext i8 %433 to i32
  %435 = and i32 %434, 240
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %473

437:                                              ; preds = %431
  %438 = add nuw i32 %429, 1
  %439 = shl nuw nsw i32 %434, 6
  %440 = and i32 %439, 960
  %441 = add nuw nsw i32 %440, 256
  %442 = xor i32 %429, -1
  %443 = add i32 %416, %442
  br label %444

444:                                              ; preds = %465, %437
  %445 = phi i32 [ %438, %437 ], [ %467, %465 ]
  %446 = phi i32 [ 0, %437 ], [ %457, %465 ]
  %447 = phi i32 [ 0, %437 ], [ %466, %465 ]
  %448 = icmp eq i32 %446, %443
  br i1 %448, label %473, label %449

449:                                              ; preds = %444
  %450 = getelementptr i8, ptr %424, i32 %445
  %451 = load i8, ptr %450, align 1
  %452 = zext i8 %451 to i32
  %453 = shl i32 %446, 3
  %454 = and i32 %453, 24
  %455 = shl nuw i32 %452, %454
  %456 = or i32 %455, %447
  %457 = add nuw nsw i32 %446, 1
  %458 = and i32 %457, 3
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %465

460:                                              ; preds = %449
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !21
  tail call void @arm_heavy_mb() #15
  %461 = load ptr, ptr %412, align 4
  %462 = getelementptr i8, ptr %461, i32 %441
  %463 = and i32 %446, 2147483644
  %464 = getelementptr i8, ptr %462, i32 %463
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %464, i32 %456) #15, !srcloc !14
  br label %465

465:                                              ; preds = %460, %449
  %466 = phi i32 [ 0, %460 ], [ %456, %449 ]
  %467 = add nuw i32 %445, 1
  %468 = icmp eq i32 %457, 64
  br i1 %468, label %425, label %444

469:                                              ; preds = %425, %413
  %470 = add nuw i32 %414, 1
  %471 = load i32, ptr %407, align 4
  %472 = icmp ult i32 %470, %471
  br i1 %472, label %413, label %473

473:                                              ; preds = %469, %444, %431, %428, %402
  %474 = load ptr, ptr %0, align 4
  %475 = load ptr, ptr %216, align 4
  %476 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %475, i32 0, i32 8
  %477 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %476) #15
  %478 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5, i32 7
  %479 = load i32, ptr %478, align 4
  %480 = tail call ptr @vb2_plane_vaddr(ptr noundef %477, i32 noundef 0) #15
  %481 = icmp ne i32 %479, 0
  %482 = zext i1 %481 to i32
  %483 = icmp ugt i32 %479, %482
  %484 = select i1 %481, i32 2, i32 1
  %485 = select i1 %483, i32 %484, i32 %482
  %486 = icmp ult i32 %485, %479
  %487 = zext i1 %486 to i32
  %488 = add nuw nsw i32 %485, %487
  %489 = icmp ult i32 %488, %479
  %490 = zext i1 %489 to i32
  %491 = add nuw nsw i32 %488, %490
  %492 = icmp ult i32 %491, %479
  %493 = zext i1 %492 to i32
  %494 = add nuw nsw i32 %491, %493
  %495 = icmp ult i32 %494, %479
  br i1 %495, label %496, label %531

496:                                              ; preds = %473
  %497 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5, i32 6
  %498 = load i32, ptr %497, align 4
  %499 = ptrtoint ptr %480 to i32
  %500 = add i32 %498, %499
  %501 = inttoptr i32 %500 to ptr
  %502 = getelementptr i8, ptr %501, i32 %494
  %503 = load i8, ptr %502, align 1
  %504 = zext i8 %503 to i32
  %505 = getelementptr inbounds %struct.s5p_jpeg, ptr %474, i32 0, i32 6
  %506 = load ptr, ptr %505, align 4
  tail call void @exynos4_jpeg_set_dec_components(ptr noundef %506, i32 noundef %504) #15
  %507 = add nuw nsw i32 %494, 1
  %508 = icmp ne i8 %503, 0
  %509 = icmp ult i32 %507, %479
  %510 = select i1 %508, i1 %509, i1 false
  br i1 %510, label %511, label %531

511:                                              ; preds = %520, %496
  %512 = phi i32 [ %521, %520 ], [ %504, %496 ]
  %513 = phi i32 [ %527, %520 ], [ %507, %496 ]
  %514 = phi i32 [ %518, %520 ], [ %494, %496 ]
  %515 = add nuw i32 %514, 2
  %516 = icmp ult i32 %515, %479
  %517 = add nuw i32 %514, 3
  %518 = select i1 %516, i32 %517, i32 %515
  %519 = icmp ult i32 %518, %479
  br i1 %519, label %520, label %531

520:                                              ; preds = %511
  %521 = add nsw i32 %512, -1
  %522 = getelementptr i8, ptr %501, i32 %513
  %523 = load i8, ptr %522, align 1
  %524 = getelementptr i8, ptr %501, i32 %518
  %525 = load i8, ptr %524, align 1
  %526 = load ptr, ptr %505, align 4
  tail call void @exynos4_jpeg_select_dec_q_tbl(ptr noundef %526, i8 noundef zeroext %523, i8 noundef zeroext %525) #15
  %527 = add nuw i32 %518, 1
  %528 = icmp ne i32 %521, 0
  %529 = icmp ult i32 %527, %479
  %530 = select i1 %528, i1 %529, i1 false
  br i1 %530, label %511, label %531

531:                                              ; preds = %520, %511, %496, %473
  %532 = load ptr, ptr %8, align 4
  tail call void @exynos4_jpeg_set_huf_table_enable(ptr noundef %532, i32 noundef 1) #15
  %533 = load ptr, ptr %8, align 4
  %534 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 6, i32 1
  %536 = load i32, ptr %535, align 4
  %537 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 6, i32 2
  %538 = load i32, ptr %537, align 4
  tail call void @exynos4_jpeg_set_stream_size(ptr noundef %533, i32 noundef %536, i32 noundef %538) #15
  %539 = load ptr, ptr %8, align 4
  %540 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 4
  %541 = load i16, ptr %540, align 4
  %542 = zext i16 %541 to i32
  tail call void @__exynos4_jpeg_set_enc_out_fmt(ptr noundef %539, i32 noundef %542, i32 noundef 4) #15
  %543 = load ptr, ptr %8, align 4
  %544 = load ptr, ptr %534, align 4
  %545 = load i32, ptr %544, align 4
  tail call void @__exynos4_jpeg_set_img_fmt(ptr noundef %543, i32 noundef %545, i32 noundef 4) #15
  br label %551

546:                                              ; preds = %235
  %547 = load ptr, ptr %8, align 4
  %548 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 6
  %549 = load ptr, ptr %548, align 4
  %550 = load i32, ptr %549, align 4
  tail call void @__exynos4_jpeg_set_img_fmt(ptr noundef %547, i32 noundef %550, i32 noundef 2) #15
  br label %551

551:                                              ; preds = %546, %531
  %552 = phi i32 [ 31, %546 ], [ 15, %531 ]
  %553 = phi i32 [ 5, %546 ], [ 4, %531 ]
  %554 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5, i32 8
  %555 = load i32, ptr %554, align 4
  %556 = add i32 %555, %552
  %557 = lshr i32 %556, %553
  %558 = load ptr, ptr %8, align 4
  tail call void @exynos4_jpeg_set_dec_bitstream_size(ptr noundef %558, i32 noundef %557) #15
  br label %559

559:                                              ; preds = %551, %204
  %560 = getelementptr inbounds %struct.s5p_jpeg, ptr %2, i32 0, i32 6
  %561 = load ptr, ptr %560, align 4
  tail call void @exynos4_jpeg_set_sys_int_enable(ptr noundef %561, i32 noundef 1) #15
  %562 = load ptr, ptr %560, align 4
  %563 = load i32, ptr %5, align 4
  tail call void @exynos4_jpeg_set_enc_dec_mode(ptr noundef %562, i32 noundef %563) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_sw_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_set_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_set_huf_table_enable(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_set_encode_tbl_select(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_set_stream_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @exynos4_jpeg_set_img_addr(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca %struct.s5p_jpeg_addr, align 4
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #15
  %4 = getelementptr inbounds %struct.s5p_jpeg_addr, ptr %2, i32 0, i32 1
  %5 = getelementptr inbounds %struct.s5p_jpeg_addr, ptr %2, i32 0, i32 2
  %6 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 6, i32 1
  %7 = getelementptr inbounds i8, ptr %2, i32 4
  store i64 0, ptr %7, align 4
  %8 = load i32, ptr %6, align 4
  %9 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 6, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, %8
  %12 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 9, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %17, i32 0, i32 8
  %19 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %18) #15
  %20 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %21, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5, i32 2
  %32 = load i32, ptr %31, align 4
  br label %40

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 9, i32 10
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %37, i32 0, i32 7
  %39 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %38) #15
  br label %40

40:                                               ; preds = %33, %30, %26, %15
  %41 = phi ptr [ %21, %30 ], [ %21, %26 ], [ %21, %15 ], [ %35, %33 ]
  %42 = phi ptr [ %19, %30 ], [ %19, %26 ], [ %19, %15 ], [ %39, %33 ]
  %43 = phi i32 [ %32, %30 ], [ 0, %26 ], [ 0, %15 ], [ 0, %33 ]
  %44 = tail call ptr @vb2_plane_cookie(ptr noundef %42, i32 noundef 0) #15
  %45 = load i32, ptr %44, align 4
  store i32 %45, ptr %2, align 4
  %46 = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %41, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  switch i32 %47, label %61 [
    i32 2, label %48
    i32 3, label %51
  ]

48:                                               ; preds = %40
  %49 = add i32 %45, %11
  %50 = sub i32 %49, %43
  store i32 %50, ptr %4, align 4
  br label %61

51:                                               ; preds = %40
  %52 = add i32 %45, %11
  store i32 %52, ptr %4, align 4
  %53 = load i32, ptr %41, align 4
  %54 = icmp eq i32 %53, 842093913
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = lshr i32 %11, 2
  %57 = add i32 %52, %56
  store i32 %57, ptr %5, align 4
  br label %61

58:                                               ; preds = %51
  %59 = lshr i32 %11, 1
  %60 = add i32 %52, %59
  store i32 %60, ptr %5, align 4
  br label %61

61:                                               ; preds = %58, %55, %48, %40
  %62 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 6
  %63 = load ptr, ptr %62, align 4
  call void @exynos4_jpeg_set_frame_buf_address(ptr noundef %63, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_set_encode_hoff_cnt(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_set_dec_bitstream_size(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_set_sys_int_enable(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_set_enc_dec_mode(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__exynos4_jpeg_set_enc_out_fmt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__exynos4_jpeg_set_img_fmt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_set_frame_buf_address(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_set_stream_buf_address(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_select_dec_h_tbl(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_set_dec_components(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos4_jpeg_select_dec_q_tbl(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos4_jpeg_get_int_status(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos4_jpeg_get_stream_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos4_jpeg_get_frame_fmt(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_probe(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 164, i32 noundef 3520) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %189, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 11
  store ptr @s5p_jpeg_drvdata, ptr %10, align 4
  br label %21

11:                                               ; preds = %5
  %12 = tail call ptr @of_match_node(ptr noundef nonnull @samsung_jpeg_match, ptr noundef nonnull %7) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 11
  store ptr null, ptr %15, align 4
  br label %189

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.of_device_id, ptr %12, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 11
  store ptr %18, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %189, label %21

21:                                               ; preds = %16, %9
  %22 = phi ptr [ %10, %9 ], [ %19, %16 ]
  tail call void @__mutex_init(ptr noundef nonnull %3, ptr noundef nonnull @.str.9, ptr noundef nonnull @s5p_jpeg_probe.__key) #15
  %23 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 1
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 10
  store ptr %2, ptr %24, align 4
  %25 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #15
  %26 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 6
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = ptrtoint ptr %25 to i32
  br label %189

30:                                               ; preds = %21
  %31 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #15
  %32 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 7
  store i32 %31, ptr %32, align 4
  %33 = icmp slt i32 %31, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #16
  br label %189

35:                                               ; preds = %30
  %36 = load ptr, ptr %22, align 4
  %37 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %36, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load ptr, ptr %2, align 4
  br label %44

44:                                               ; preds = %42, %35
  %45 = phi ptr [ %43, %42 ], [ %40, %35 ]
  %46 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %31, ptr noundef %38, ptr noundef null, i32 noundef 0, ptr noundef %45, ptr noundef nonnull %3) #15
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load ptr, ptr %22, align 4
  %50 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %49, i32 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %55, label %75

53:                                               ; preds = %44
  %54 = load i32, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %54) #16
  br label %189

55:                                               ; preds = %69, %48
  %56 = phi ptr [ %71, %69 ], [ %49, %48 ]
  %57 = phi i32 [ %70, %69 ], [ 0, %48 ]
  %58 = getelementptr %struct.s5p_jpeg_variant, ptr %56, i32 0, i32 5, i32 %57
  %59 = load ptr, ptr %58, align 4
  %60 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef %59) #15
  %61 = getelementptr %struct.s5p_jpeg, ptr %3, i32 0, i32 9, i32 %57
  store ptr %60, ptr %61, align 4
  %62 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load ptr, ptr %22, align 4
  %65 = getelementptr %struct.s5p_jpeg_variant, ptr %64, i32 0, i32 5, i32 %57
  %66 = load ptr, ptr %65, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.12, ptr noundef %66) #16
  %67 = load ptr, ptr %61, align 4
  %68 = ptrtoint ptr %67 to i32
  br label %189

69:                                               ; preds = %55
  %70 = add nuw nsw i32 %57, 1
  %71 = load ptr, ptr %22, align 4
  %72 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %71, i32 0, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %55, label %75

75:                                               ; preds = %69, %48
  %76 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 2
  %77 = tail call i32 @v4l2_device_register(ptr noundef %2, ptr noundef %76) #15
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.13) #16
  br label %189

80:                                               ; preds = %75
  %81 = load ptr, ptr %22, align 4
  %82 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %81, i32 0, i32 3
  %83 = load ptr, ptr %82, align 4
  %84 = tail call ptr @v4l2_m2m_init(ptr noundef %83) #15
  %85 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 5
  store ptr %84, ptr %85, align 4
  %86 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 2, i32 4
  %89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %88) #16
  %90 = load ptr, ptr %85, align 4
  %91 = ptrtoint ptr %90 to i32
  br label %187

92:                                               ; preds = %80
  %93 = tail call i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %2, i32 noundef -1) #15
  %94 = tail call ptr @video_device_alloc() #15
  %95 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 3
  store ptr %94, ptr %95, align 4
  %96 = icmp eq ptr %94, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 2, i32 4
  %99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %98) #16
  br label %184

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.video_device, ptr %94, i32 0, i32 12
  %102 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %101, i32 noundef 32, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.8)
  %103 = load ptr, ptr %95, align 4
  %104 = getelementptr inbounds %struct.video_device, ptr %103, i32 0, i32 3
  store ptr @s5p_jpeg_fops, ptr %104, align 4
  %105 = load ptr, ptr %95, align 4
  %106 = getelementptr inbounds %struct.video_device, ptr %105, i32 0, i32 24
  store ptr @s5p_jpeg_ioctl_ops, ptr %106, align 4
  %107 = load ptr, ptr %95, align 4
  %108 = getelementptr inbounds %struct.video_device, ptr %107, i32 0, i32 15
  store i32 -1, ptr %108, align 8
  %109 = load ptr, ptr %95, align 4
  %110 = getelementptr inbounds %struct.video_device, ptr %109, i32 0, i32 23
  store ptr @video_device_release, ptr %110, align 8
  %111 = load ptr, ptr %95, align 4
  %112 = getelementptr inbounds %struct.video_device, ptr %111, i32 0, i32 26
  store ptr %3, ptr %112, align 8
  %113 = load ptr, ptr %95, align 4
  %114 = getelementptr inbounds %struct.video_device, ptr %113, i32 0, i32 7
  store ptr %76, ptr %114, align 4
  %115 = load ptr, ptr %95, align 4
  %116 = getelementptr inbounds %struct.video_device, ptr %115, i32 0, i32 14
  store i32 2, ptr %116, align 4
  %117 = load ptr, ptr %95, align 4
  %118 = getelementptr inbounds %struct.video_device, ptr %117, i32 0, i32 4
  store i32 67141632, ptr %118, align 8
  %119 = load ptr, ptr %95, align 4
  %120 = getelementptr inbounds %struct.video_device, ptr %119, i32 0, i32 3
  %121 = load ptr, ptr %120, align 4
  %122 = load ptr, ptr %121, align 4
  %123 = tail call i32 @__video_register_device(ptr noundef %119, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %122) #15
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %100
  %126 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 2, i32 4
  %127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %126) #16
  %128 = load ptr, ptr %95, align 4
  tail call void @video_device_release(ptr noundef %128) #15
  br label %184

129:                                              ; preds = %100
  %130 = load ptr, ptr %95, align 4
  %131 = getelementptr inbounds %struct.video_device, ptr %130, i32 0, i32 5, i32 8
  store ptr %3, ptr %131, align 8
  %132 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 2, i32 4
  %133 = load ptr, ptr %95, align 4
  %134 = getelementptr inbounds %struct.video_device, ptr %133, i32 0, i32 16
  %135 = load i16, ptr %134, align 4
  %136 = zext i16 %135 to i32
  %137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %132, i32 noundef %136) #16
  %138 = tail call ptr @video_device_alloc() #15
  %139 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 4
  store ptr %138, ptr %139, align 4
  %140 = icmp eq ptr %138, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %129
  %142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %132) #16
  br label %181

143:                                              ; preds = %129
  %144 = getelementptr inbounds %struct.video_device, ptr %138, i32 0, i32 12
  %145 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %144, i32 noundef 32, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.8)
  %146 = load ptr, ptr %139, align 4
  %147 = getelementptr inbounds %struct.video_device, ptr %146, i32 0, i32 3
  store ptr @s5p_jpeg_fops, ptr %147, align 4
  %148 = load ptr, ptr %139, align 4
  %149 = getelementptr inbounds %struct.video_device, ptr %148, i32 0, i32 24
  store ptr @s5p_jpeg_ioctl_ops, ptr %149, align 4
  %150 = load ptr, ptr %139, align 4
  %151 = getelementptr inbounds %struct.video_device, ptr %150, i32 0, i32 15
  store i32 -1, ptr %151, align 8
  %152 = load ptr, ptr %139, align 4
  %153 = getelementptr inbounds %struct.video_device, ptr %152, i32 0, i32 23
  store ptr @video_device_release, ptr %153, align 8
  %154 = load ptr, ptr %139, align 4
  %155 = getelementptr inbounds %struct.video_device, ptr %154, i32 0, i32 26
  store ptr %3, ptr %155, align 8
  %156 = load ptr, ptr %139, align 4
  %157 = getelementptr inbounds %struct.video_device, ptr %156, i32 0, i32 7
  store ptr %76, ptr %157, align 4
  %158 = load ptr, ptr %139, align 4
  %159 = getelementptr inbounds %struct.video_device, ptr %158, i32 0, i32 14
  store i32 2, ptr %159, align 4
  %160 = load ptr, ptr %139, align 4
  %161 = getelementptr inbounds %struct.video_device, ptr %160, i32 0, i32 4
  store i32 67141632, ptr %161, align 8
  %162 = load ptr, ptr %139, align 4
  %163 = getelementptr inbounds %struct.video_device, ptr %162, i32 0, i32 3
  %164 = load ptr, ptr %163, align 4
  %165 = load ptr, ptr %164, align 4
  %166 = tail call i32 @__video_register_device(ptr noundef %162, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %165) #15
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %143
  %169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %132) #16
  %170 = load ptr, ptr %139, align 4
  tail call void @video_device_release(ptr noundef %170) #15
  br label %181

171:                                              ; preds = %143
  %172 = load ptr, ptr %139, align 4
  %173 = getelementptr inbounds %struct.video_device, ptr %172, i32 0, i32 5, i32 8
  store ptr %3, ptr %173, align 8
  %174 = load ptr, ptr %139, align 4
  %175 = getelementptr inbounds %struct.video_device, ptr %174, i32 0, i32 16
  %176 = load i16, ptr %175, align 4
  %177 = zext i16 %176 to i32
  %178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %132, i32 noundef %177) #16
  %179 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %179, align 8
  tail call void @pm_runtime_enable(ptr noundef %2) #15
  %180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %132) #16
  br label %189

181:                                              ; preds = %168, %141
  %182 = phi i32 [ %166, %168 ], [ -12, %141 ]
  %183 = load ptr, ptr %95, align 4
  tail call void @video_unregister_device(ptr noundef %183) #15
  br label %184

184:                                              ; preds = %181, %125, %97
  %185 = phi i32 [ %123, %125 ], [ %182, %181 ], [ -12, %97 ]
  %186 = load ptr, ptr %85, align 4
  tail call void @v4l2_m2m_release(ptr noundef %186) #15
  br label %187

187:                                              ; preds = %184, %87
  %188 = phi i32 [ %91, %87 ], [ %185, %184 ]
  tail call void @v4l2_device_unregister(ptr noundef %76) #15
  br label %189

189:                                              ; preds = %187, %171, %79, %63, %53, %34, %28, %16, %14, %1
  %190 = phi i32 [ %29, %28 ], [ %31, %34 ], [ %46, %53 ], [ %68, %63 ], [ %77, %79 ], [ %188, %187 ], [ 0, %171 ], [ -12, %1 ], [ -19, %16 ], [ -19, %14 ]
  ret i32 %190
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_remove(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  tail call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #15
  %6 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @video_unregister_device(ptr noundef %7) #15
  %8 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void @video_unregister_device(ptr noundef %9) #15
  %10 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void @v4l2_m2m_release(ptr noundef %11) #15
  %12 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 2
  tail call void @v4l2_device_unregister(ptr noundef %12) #15
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 18
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %29, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %18, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -1
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %29

23:                                               ; preds = %23, %16
  %24 = phi i32 [ %27, %23 ], [ %21, %16 ]
  %25 = getelementptr %struct.s5p_jpeg, ptr %3, i32 0, i32 9, i32 %24
  %26 = load ptr, ptr %25, align 4
  tail call void @clk_disable(ptr noundef %26) #15
  tail call void @clk_unprepare(ptr noundef %26) #15
  %27 = add nsw i32 %24, -1
  %28 = icmp sgt i32 %24, 0
  br i1 %28, label %23, label %29

29:                                               ; preds = %23, %16, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dma_contig_set_max_seg_size(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_open(ptr noundef %0) #1 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @video_devdata(ptr noundef %0) #15
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 436) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %159, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %157

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %7, i32 0, i32 9
  tail call void @v4l2_fh_init(ptr noundef %13, ptr noundef %5) #15
  %14 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %7, i32 0, i32 12
  %15 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %7, i32 0, i32 9, i32 2
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  store ptr %13, ptr %16, align 8
  tail call void @v4l2_fh_add(ptr noundef %13) #15
  store ptr %4, ptr %7, align 8
  %17 = getelementptr inbounds %struct.s5p_jpeg, ptr %4, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %5, %18
  %20 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %7, i32 0, i32 1
  br i1 %19, label %21, label %63

21:                                               ; preds = %12
  store i32 0, ptr %20, align 4
  %22 = getelementptr inbounds %struct.s5p_jpeg, ptr %4, i32 0, i32 11
  br label %23

23:                                               ; preds = %39, %21
  %24 = phi i32 [ 0, %21 ], [ %40, %39 ]
  %25 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 1346520914
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %24, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %22, align 4
  %35 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, %30
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33, %28, %23
  %40 = add nuw nsw i32 %24, 1
  %41 = icmp eq i32 %40, 26
  br i1 %41, label %42, label %23

42:                                               ; preds = %39, %33
  %43 = phi ptr [ null, %39 ], [ %25, %33 ]
  br label %44

44:                                               ; preds = %60, %42
  %45 = phi i32 [ 0, %42 ], [ %61, %60 ]
  %46 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %45
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 1195724874
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %45, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = load ptr, ptr %22, align 4
  %56 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %55, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, %51
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %108

60:                                               ; preds = %54, %49, %44
  %61 = add nuw nsw i32 %45, 1
  %62 = icmp eq i32 %61, 26
  br i1 %62, label %108, label %44

63:                                               ; preds = %12
  store i32 1, ptr %20, align 4
  %64 = getelementptr inbounds %struct.s5p_jpeg, ptr %4, i32 0, i32 11
  br label %65

65:                                               ; preds = %81, %63
  %66 = phi i32 [ 0, %63 ], [ %82, %81 ]
  %67 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %66
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 1195724874
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %66, i32 7
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  %76 = load ptr, ptr %64, align 4
  %77 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %76, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, %72
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75, %70, %65
  %82 = add nuw nsw i32 %66, 1
  %83 = icmp eq i32 %82, 26
  br i1 %83, label %84, label %65

84:                                               ; preds = %81, %75
  %85 = phi ptr [ null, %81 ], [ %67, %75 ]
  br label %86

86:                                               ; preds = %102, %84
  %87 = phi i32 [ 0, %84 ], [ %103, %102 ]
  %88 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %87
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 1448695129
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %87, i32 7
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %91
  %97 = load ptr, ptr %64, align 4
  %98 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %97, i32 0, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %99, %93
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96, %91, %86
  %103 = add nuw nsw i32 %87, 1
  %104 = icmp eq i32 %103, 26
  br i1 %104, label %105, label %86

105:                                              ; preds = %102, %96
  %106 = phi ptr [ null, %102 ], [ %88, %96 ]
  %107 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %7, i32 0, i32 7
  store i32 0, ptr %107, align 8
  br label %108

108:                                              ; preds = %105, %60, %54
  %109 = phi ptr [ %85, %105 ], [ %43, %54 ], [ %43, %60 ]
  %110 = phi ptr [ %106, %105 ], [ null, %60 ], [ %46, %54 ]
  %111 = getelementptr inbounds %struct.s5p_jpeg, ptr %4, i32 0, i32 5
  %112 = load ptr, ptr %111, align 4
  %113 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %112, ptr noundef nonnull %7, ptr noundef nonnull @queue_init) #15
  %114 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %7, i32 0, i32 9, i32 10
  store ptr %113, ptr %114, align 8
  %115 = icmp ugt ptr %113, inttoptr (i32 -4096 to ptr)
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = ptrtoint ptr %113 to i32
  br label %155

118:                                              ; preds = %108
  %119 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %7, i32 0, i32 5
  store ptr %109, ptr %119, align 8
  %120 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %7, i32 0, i32 6
  store ptr %110, ptr %120, align 4
  %121 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %14, i32 noundef 3, ptr noundef null, ptr noundef null) #15
  %122 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %7, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %118
  %126 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %14, ptr noundef nonnull @s5p_jpeg_ctrl_ops, i32 noundef 10291459, i64 noundef 0, i64 noundef 3, i64 noundef 1, i64 noundef 3) #15
  %127 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %14, ptr noundef nonnull @s5p_jpeg_ctrl_ops, i32 noundef 10291458, i64 noundef 0, i64 noundef 65535, i64 noundef 1, i64 noundef 0) #15
  %128 = load ptr, ptr %7, align 8
  %129 = getelementptr inbounds %struct.s5p_jpeg, ptr %128, i32 0, i32 11
  %130 = load ptr, ptr %129, align 4
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 0
  %133 = select i1 %132, i32 -7, i32 -40
  br label %134

134:                                              ; preds = %125, %118
  %135 = phi i32 [ -40, %118 ], [ %133, %125 ]
  %136 = zext i32 %135 to i64
  %137 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %14, ptr noundef nonnull @s5p_jpeg_ctrl_ops, i32 noundef 10291457, i8 noundef zeroext 5, i64 noundef %136, i8 noundef zeroext 1) #15
  %138 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %7, i32 0, i32 12, i32 9
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %134
  %142 = load i32, ptr %122, align 4
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.v4l2_ctrl, ptr %137, i32 0, i32 20
  %146 = load i32, ptr %145, align 4
  %147 = or i32 %146, 132
  store i32 %147, ptr %145, align 4
  br label %148

148:                                              ; preds = %144, %141
  %149 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %14) #15
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  tail call void @v4l2_ctrl_handler_free(ptr noundef %14) #15
  br label %155

152:                                              ; preds = %134
  tail call void @v4l2_ctrl_handler_free(ptr noundef %14) #15
  %153 = icmp slt i32 %139, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %152, %148
  tail call void @mutex_unlock(ptr noundef %4) #15
  br label %159

155:                                              ; preds = %152, %151, %116
  %156 = phi i32 [ %117, %116 ], [ %139, %152 ], [ %149, %151 ]
  tail call void @v4l2_fh_del(ptr noundef %13) #15
  tail call void @v4l2_fh_exit(ptr noundef %13) #15
  tail call void @mutex_unlock(ptr noundef %4) #15
  br label %157

157:                                              ; preds = %155, %9
  %158 = phi i32 [ %156, %155 ], [ -512, %9 ]
  tail call void @kfree(ptr noundef nonnull %7) #15
  br label %159

159:                                              ; preds = %157, %154, %1
  %160 = phi i32 [ %158, %157 ], [ 0, %154 ], [ -12, %1 ]
  ret i32 %160
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_release(ptr noundef %0) #1 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -236
  tail call void @mutex_lock(ptr noundef %4) #15
  %8 = getelementptr i8, ptr %6, i32 76
  %9 = load ptr, ptr %8, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %9) #15
  %10 = getelementptr i8, ptr %6, i32 84
  tail call void @v4l2_ctrl_handler_free(ptr noundef %10) #15
  tail call void @v4l2_fh_del(ptr noundef %6) #15
  tail call void @v4l2_fh_exit(ptr noundef %6) #15
  tail call void @kfree(ptr noundef %7) #15
  tail call void @mutex_unlock(ptr noundef %4) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  store i32 2, ptr %1, align 4
  %4 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 1
  store i32 3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 12
  store i32 648, ptr %6, align 4
  %7 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 7
  store ptr @s5p_jpeg_qops, ptr %7, align 4
  %8 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 8
  store ptr @vb2_dma_contig_memops, ptr %8, align 4
  %9 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 13
  store i32 16384, ptr %9, align 4
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 5
  store ptr %10, ptr %11, align 4
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.s5p_jpeg, ptr %12, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 2
  store ptr %14, ptr %15, align 4
  %16 = tail call i32 @vb2_queue_init(ptr noundef %1) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %3
  store i32 1, ptr %2, align 4
  %19 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 1
  store i32 3, ptr %19, align 4
  %20 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  store ptr %0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 12
  store i32 648, ptr %21, align 4
  %22 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 7
  store ptr @s5p_jpeg_qops, ptr %22, align 4
  %23 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 8
  store ptr @vb2_dma_contig_memops, ptr %23, align 4
  %24 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 13
  store i32 16384, ptr %24, align 4
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 5
  store ptr %25, ptr %26, align 4
  %27 = load ptr, ptr %0, align 4
  %28 = getelementptr inbounds %struct.s5p_jpeg, ptr %27, i32 0, i32 10
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 2
  store ptr %29, ptr %30, align 4
  %31 = tail call i32 @vb2_queue_init(ptr noundef %2) #15
  br label %32

32:                                               ; preds = %18, %3
  %33 = phi i32 [ %31, %18 ], [ %16, %3 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readnone %4) #1 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %1, align 4
  %9 = load i32, ptr %0, align 4
  switch i32 %9, label %17 [
    i32 2, label %10
    i32 1, label %12
  ]

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %7, i32 0, i32 5
  br label %14

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %7, i32 0, i32 6
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %14, %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/s5p-jpeg/jpeg-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2458, 0\0A.popsection", ""() #15, !srcloc !22
  unreachable

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %15, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %7, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 1
  %24 = select i1 %23, i32 1, i32 %8
  store i32 %24, ptr %1, align 4
  store i32 1, ptr %2, align 4
  store i32 %20, ptr %3, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_buf_prepare(ptr nocapture noundef %0) #1 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %2, align 4
  switch i32 %5, label %13 [
    i32 2, label %6
    i32 1, label %8
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %4, i32 0, i32 5
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %4, i32 0, i32 6
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %7, %6 ], [ %9, %8 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %10, %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/s5p-jpeg/jpeg-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2482, 0\0A.popsection", ""() #15, !srcloc !23
  unreachable

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %11, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %28

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %11, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22, %18
  %29 = phi i32 [ %20, %18 ], [ %26, %22 ]
  %30 = phi i32 [ 0, %18 ], [ %24, %22 ]
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.s5p_jpeg_buf_prepare, i32 noundef %30, i32 noundef %29) #16
  br label %34

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 3
  store i32 %26, ptr %33, align 4
  br label %34

34:                                               ; preds = %32, %28, %18
  %35 = phi i32 [ -22, %28 ], [ 0, %18 ], [ 0, %32 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.s5p_jpeg, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #15
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #15, !srcloc !25
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 0, i32 -1, ptr elementtype(i32) %11) #15, !srcloc !26
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !27
  br label %16

16:                                               ; preds = %15, %10, %2
  %17 = phi i32 [ 0, %2 ], [ %8, %10 ], [ %8, %15 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_jpeg_stop_streaming(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %3, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, ptr %0, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call fastcc void @s5p_jpeg_set_capture_queue_data(ptr noundef %3)
  store i32 0, ptr %4, align 4
  br label %11

11:                                               ; preds = %10, %7, %1
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.s5p_jpeg, ptr %12, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @__pm_runtime_idle(ptr noundef %14, i32 noundef 5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5p_jpeg_buf_queue(ptr noundef %0) #1 {
  %2 = alloca [4 x i32], align 4
  %3 = alloca [4 x i32], align 4
  %4 = alloca [4 x i32], align 4
  %5 = alloca [4 x i32], align 4
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.vb2_queue, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %325

12:                                               ; preds = %1
  %13 = load i32, ptr %6, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %325

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 9
  %17 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 9, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %18, i32 noundef 1) #15
  %20 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 5, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 5, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = tail call ptr @vb2_plane_vaddr(ptr noundef %0, i32 noundef 0) #15
  %25 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 5, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  br label %33

33:                                               ; preds = %30, %15
  %34 = phi i32 [ %32, %30 ], [ 0, %15 ]
  %35 = tail call i32 @llvm.umin.i32(i32 %26, i32 %34)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #15, !annotation !28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #15, !annotation !28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #15, !annotation !28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false) #15, !annotation !28
  br label %36

36:                                               ; preds = %252, %33
  %37 = phi i32 [ 0, %33 ], [ %262, %252 ]
  %38 = phi i32 [ 0, %33 ], [ %261, %252 ]
  %39 = phi i32 [ 0, %33 ], [ %260, %252 ]
  %40 = phi i32 [ 0, %33 ], [ %259, %252 ]
  %41 = phi i32 [ 0, %33 ], [ %258, %252 ]
  %42 = phi i32 [ 0, %33 ], [ %257, %252 ]
  %43 = phi i32 [ 1, %33 ], [ %256, %252 ]
  %44 = phi i32 [ 0, %33 ], [ %255, %252 ]
  %45 = phi i32 [ 0, %33 ], [ %254, %252 ]
  %46 = phi i32 [ 0, %33 ], [ %253, %252 ]
  %47 = icmp ult i32 %44, %35
  br i1 %47, label %48, label %306

48:                                               ; preds = %54, %36
  %49 = phi i32 [ %55, %54 ], [ %44, %36 ]
  %50 = add nuw i32 %49, 1
  %51 = getelementptr i8, ptr %24, i32 %49
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, -1
  br i1 %53, label %57, label %54

54:                                               ; preds = %60, %48
  %55 = phi i32 [ %50, %48 ], [ %61, %60 ]
  %56 = icmp ult i32 %55, %35
  br i1 %56, label %48, label %306

57:                                               ; preds = %60, %48
  %58 = phi i32 [ %61, %60 ], [ %50, %48 ]
  %59 = icmp eq i32 %58, %35
  br i1 %59, label %306, label %60

60:                                               ; preds = %57
  %61 = add i32 %58, 1
  %62 = getelementptr i8, ptr %24, i32 %58
  %63 = load i8, ptr %62, align 1
  switch i8 %63, label %224 [
    i8 -1, label %57
    i8 -41, label %252
    i8 0, label %54
    i8 -64, label %64
    i8 -37, label %154
    i8 -60, label %188
    i8 -38, label %222
    i8 -40, label %252
    i8 -39, label %252
    i8 1, label %252
    i8 -48, label %252
    i8 -47, label %252
    i8 -46, label %252
    i8 -45, label %252
    i8 -44, label %252
    i8 -43, label %252
    i8 -42, label %252
  ]

64:                                               ; preds = %60
  %65 = icmp ult i32 %61, %35
  br i1 %65, label %66, label %252

66:                                               ; preds = %64
  %67 = add nuw i32 %58, 2
  %68 = icmp ult i32 %67, %35
  br i1 %68, label %69, label %252

69:                                               ; preds = %66
  %70 = getelementptr i8, ptr %24, i32 %61
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = add nuw i32 %58, 3
  %74 = getelementptr i8, ptr %24, i32 %67
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = shl nuw nsw i32 %72, 8
  %78 = or i32 %77, %76
  %79 = add nsw i32 %78, -2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %306, label %81

81:                                               ; preds = %69
  %82 = icmp ult i32 %73, %35
  br i1 %82, label %83, label %252

83:                                               ; preds = %81
  %84 = add nuw i32 %58, 4
  %85 = icmp ult i32 %84, %35
  br i1 %85, label %86, label %252

86:                                               ; preds = %83
  %87 = add nuw i32 %58, 5
  %88 = icmp ult i32 %87, %35
  br i1 %88, label %89, label %252

89:                                               ; preds = %86
  %90 = getelementptr i8, ptr %24, i32 %84
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = add nuw i32 %58, 6
  %94 = getelementptr i8, ptr %24, i32 %87
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = shl nuw nsw i32 %92, 8
  %98 = or i32 %97, %96
  %99 = icmp ult i32 %93, %35
  br i1 %99, label %100, label %252

100:                                              ; preds = %89
  %101 = add nuw i32 %58, 7
  %102 = icmp ult i32 %101, %35
  br i1 %102, label %103, label %252

103:                                              ; preds = %100
  %104 = getelementptr i8, ptr %24, i32 %93
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = add nuw i32 %58, 8
  %108 = getelementptr i8, ptr %24, i32 %101
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = shl nuw nsw i32 %106, 8
  %112 = or i32 %111, %110
  %113 = icmp ult i32 %107, %35
  br i1 %113, label %114, label %252

114:                                              ; preds = %103
  %115 = add nuw i32 %58, 9
  %116 = getelementptr i8, ptr %24, i32 %107
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp eq i8 %117, 1
  br i1 %119, label %140, label %120

120:                                              ; preds = %114
  %121 = icmp ult i32 %115, %35
  %122 = add nuw i32 %58, 10
  %123 = select i1 %121, i32 %122, i32 %115
  %124 = icmp ult i32 %123, %35
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = add nuw i32 %123, 1
  %127 = getelementptr i8, ptr %24, i32 %123
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i32
  br label %130

130:                                              ; preds = %125, %120
  %131 = phi i32 [ %126, %125 ], [ %123, %120 ]
  %132 = phi i32 [ %129, %125 ], [ -1, %120 ]
  %133 = icmp ugt i8 %117, 3
  br i1 %133, label %306, label %134

134:                                              ; preds = %130
  %135 = icmp ult i32 %131, %35
  %136 = zext i1 %135 to i32
  %137 = add nuw i32 %131, %136
  %138 = shl nuw nsw i32 %118, 1
  %139 = icmp eq i8 %117, 0
  br i1 %139, label %252, label %140

140:                                              ; preds = %134, %114
  %141 = phi i32 [ %138, %134 ], [ 2, %114 ]
  %142 = phi i32 [ %137, %134 ], [ %115, %114 ]
  %143 = phi i32 [ %132, %134 ], [ 51, %114 ]
  br label %144

144:                                              ; preds = %144, %140
  %145 = phi i32 [ %142, %140 ], [ %151, %144 ]
  %146 = phi i32 [ %141, %140 ], [ %148, %144 ]
  %147 = phi i32 [ %142, %140 ], [ %152, %144 ]
  %148 = add i32 %146, -1
  %149 = icmp ult i32 %147, %35
  %150 = add nuw i32 %147, 1
  %151 = select i1 %149, i32 %150, i32 %145
  %152 = select i1 %149, i32 %150, i32 %147
  %153 = icmp eq i32 %148, 0
  br i1 %153, label %252, label %144

154:                                              ; preds = %60
  %155 = icmp ult i32 %61, %35
  br i1 %155, label %156, label %252

156:                                              ; preds = %154
  %157 = add nuw i32 %58, 2
  %158 = icmp ult i32 %157, %35
  br i1 %158, label %159, label %252

159:                                              ; preds = %156
  %160 = getelementptr i8, ptr %24, i32 %61
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i32
  %163 = getelementptr i8, ptr %24, i32 %157
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = shl nuw nsw i32 %162, 8
  %167 = or i32 %166, %165
  %168 = add nsw i32 %167, -2
  %169 = icmp eq i32 %168, 0
  %170 = icmp sgt i32 %41, 3
  %171 = select i1 %169, i1 true, i1 %170
  br i1 %171, label %306, label %172

172:                                              ; preds = %159
  %173 = add nuw i32 %58, 3
  %174 = getelementptr [4 x i32], ptr %4, i32 0, i32 %41
  store i32 %173, ptr %174, align 4
  %175 = add nsw i32 %41, 1
  %176 = getelementptr [4 x i32], ptr %5, i32 0, i32 %41
  store i32 %168, ptr %176, align 4
  %177 = icmp ult i32 %167, 3
  br i1 %177, label %252, label %178

178:                                              ; preds = %178, %172
  %179 = phi i32 [ %185, %178 ], [ %173, %172 ]
  %180 = phi i32 [ %182, %178 ], [ %168, %172 ]
  %181 = phi i32 [ %186, %178 ], [ %173, %172 ]
  %182 = add nsw i32 %180, -1
  %183 = icmp ult i32 %181, %35
  %184 = add nuw i32 %181, 1
  %185 = select i1 %183, i32 %184, i32 %179
  %186 = select i1 %183, i32 %184, i32 %181
  %187 = icmp eq i32 %182, 0
  br i1 %187, label %252, label %178

188:                                              ; preds = %60
  %189 = icmp ult i32 %61, %35
  br i1 %189, label %190, label %252

190:                                              ; preds = %188
  %191 = add nuw i32 %58, 2
  %192 = icmp ult i32 %191, %35
  br i1 %192, label %193, label %252

193:                                              ; preds = %190
  %194 = getelementptr i8, ptr %24, i32 %61
  %195 = load i8, ptr %194, align 1
  %196 = zext i8 %195 to i32
  %197 = getelementptr i8, ptr %24, i32 %191
  %198 = load i8, ptr %197, align 1
  %199 = zext i8 %198 to i32
  %200 = shl nuw nsw i32 %196, 8
  %201 = or i32 %200, %199
  %202 = add nsw i32 %201, -2
  %203 = icmp eq i32 %202, 0
  %204 = icmp sgt i32 %42, 3
  %205 = select i1 %203, i1 true, i1 %204
  br i1 %205, label %306, label %206

206:                                              ; preds = %193
  %207 = add nuw i32 %58, 3
  %208 = getelementptr [4 x i32], ptr %2, i32 0, i32 %42
  store i32 %207, ptr %208, align 4
  %209 = add nsw i32 %42, 1
  %210 = getelementptr [4 x i32], ptr %3, i32 0, i32 %42
  store i32 %202, ptr %210, align 4
  %211 = icmp ult i32 %201, 3
  br i1 %211, label %252, label %212

212:                                              ; preds = %212, %206
  %213 = phi i32 [ %219, %212 ], [ %207, %206 ]
  %214 = phi i32 [ %216, %212 ], [ %202, %206 ]
  %215 = phi i32 [ %220, %212 ], [ %207, %206 ]
  %216 = add nsw i32 %214, -1
  %217 = icmp ult i32 %215, %35
  %218 = add nuw i32 %215, 1
  %219 = select i1 %217, i32 %218, i32 %213
  %220 = select i1 %217, i32 %218, i32 %215
  %221 = icmp eq i32 %216, 0
  br i1 %221, label %252, label %212

222:                                              ; preds = %60
  %223 = add i32 %58, -1
  br label %252

224:                                              ; preds = %60
  %225 = icmp ult i32 %61, %35
  br i1 %225, label %226, label %252

226:                                              ; preds = %224
  %227 = add nuw i32 %58, 2
  %228 = icmp ult i32 %227, %35
  br i1 %228, label %229, label %252

229:                                              ; preds = %226
  %230 = getelementptr i8, ptr %24, i32 %61
  %231 = load i8, ptr %230, align 1
  %232 = zext i8 %231 to i32
  %233 = add nuw i32 %58, 3
  %234 = getelementptr i8, ptr %24, i32 %227
  %235 = load i8, ptr %234, align 1
  %236 = zext i8 %235 to i32
  %237 = shl nuw nsw i32 %232, 8
  %238 = or i32 %237, %236
  %239 = icmp ult i32 %238, 3
  br i1 %239, label %252, label %240

240:                                              ; preds = %229
  %241 = add nsw i32 %238, -2
  br label %242

242:                                              ; preds = %242, %240
  %243 = phi i32 [ %249, %242 ], [ %233, %240 ]
  %244 = phi i32 [ %246, %242 ], [ %241, %240 ]
  %245 = phi i32 [ %250, %242 ], [ %233, %240 ]
  %246 = add nsw i32 %244, -1
  %247 = icmp ult i32 %245, %35
  %248 = add nuw i32 %245, 1
  %249 = select i1 %247, i32 %248, i32 %243
  %250 = select i1 %247, i32 %248, i32 %245
  %251 = icmp eq i32 %246, 0
  br i1 %251, label %252, label %242

252:                                              ; preds = %242, %229, %226, %224, %222, %212, %206, %190, %188, %178, %172, %156, %154, %144, %134, %103, %100, %89, %86, %83, %81, %66, %64, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60, %60
  %253 = phi i32 [ %46, %222 ], [ %98, %134 ], [ %46, %172 ], [ %46, %206 ], [ %46, %229 ], [ %46, %64 ], [ %46, %66 ], [ %46, %81 ], [ %46, %83 ], [ %46, %86 ], [ %98, %89 ], [ %98, %100 ], [ %98, %103 ], [ %46, %154 ], [ %46, %156 ], [ %46, %188 ], [ %46, %190 ], [ %46, %224 ], [ %46, %226 ], [ %46, %60 ], [ %46, %60 ], [ %46, %60 ], [ %46, %60 ], [ %46, %60 ], [ %46, %60 ], [ %46, %60 ], [ %46, %60 ], [ %46, %60 ], [ %46, %60 ], [ %46, %60 ], [ %46, %242 ], [ %98, %144 ], [ %46, %178 ], [ %46, %212 ]
  %254 = phi i32 [ %45, %222 ], [ %112, %134 ], [ %45, %172 ], [ %45, %206 ], [ %45, %229 ], [ %45, %64 ], [ %45, %66 ], [ %45, %81 ], [ %45, %83 ], [ %45, %86 ], [ %45, %89 ], [ %45, %100 ], [ %112, %103 ], [ %45, %154 ], [ %45, %156 ], [ %45, %188 ], [ %45, %190 ], [ %45, %224 ], [ %45, %226 ], [ %45, %60 ], [ %45, %60 ], [ %45, %60 ], [ %45, %60 ], [ %45, %60 ], [ %45, %60 ], [ %45, %60 ], [ %45, %60 ], [ %45, %60 ], [ %45, %60 ], [ %45, %60 ], [ %45, %242 ], [ %112, %144 ], [ %45, %178 ], [ %45, %212 ]
  %255 = phi i32 [ %61, %222 ], [ %137, %134 ], [ %173, %172 ], [ %207, %206 ], [ %233, %229 ], [ %61, %64 ], [ %67, %66 ], [ %73, %81 ], [ %84, %83 ], [ %87, %86 ], [ %93, %89 ], [ %101, %100 ], [ %107, %103 ], [ %61, %154 ], [ %157, %156 ], [ %61, %188 ], [ %191, %190 ], [ %61, %224 ], [ %227, %226 ], [ %61, %60 ], [ %61, %60 ], [ %61, %60 ], [ %61, %60 ], [ %61, %60 ], [ %61, %60 ], [ %61, %60 ], [ %61, %60 ], [ %61, %60 ], [ %61, %60 ], [ %61, %60 ], [ %249, %242 ], [ %151, %144 ], [ %185, %178 ], [ %219, %212 ]
  %256 = phi i32 [ %43, %222 ], [ 0, %134 ], [ %43, %172 ], [ %43, %206 ], [ %43, %229 ], [ %43, %64 ], [ %43, %66 ], [ %43, %81 ], [ %43, %83 ], [ %43, %86 ], [ %43, %89 ], [ %43, %100 ], [ %43, %103 ], [ %43, %154 ], [ %43, %156 ], [ %43, %188 ], [ %43, %190 ], [ %43, %224 ], [ %43, %226 ], [ %43, %60 ], [ %43, %60 ], [ %43, %60 ], [ %43, %60 ], [ %43, %60 ], [ %43, %60 ], [ %43, %60 ], [ %43, %60 ], [ %43, %60 ], [ %43, %60 ], [ %43, %60 ], [ %43, %242 ], [ 0, %144 ], [ %43, %178 ], [ %43, %212 ]
  %257 = phi i32 [ %42, %222 ], [ %42, %134 ], [ %42, %172 ], [ %209, %206 ], [ %42, %229 ], [ %42, %64 ], [ %42, %66 ], [ %42, %81 ], [ %42, %83 ], [ %42, %86 ], [ %42, %89 ], [ %42, %100 ], [ %42, %103 ], [ %42, %154 ], [ %42, %156 ], [ %42, %188 ], [ %42, %190 ], [ %42, %224 ], [ %42, %226 ], [ %42, %60 ], [ %42, %60 ], [ %42, %60 ], [ %42, %60 ], [ %42, %60 ], [ %42, %60 ], [ %42, %60 ], [ %42, %60 ], [ %42, %60 ], [ %42, %60 ], [ %42, %60 ], [ %42, %242 ], [ %42, %144 ], [ %42, %178 ], [ %209, %212 ]
  %258 = phi i32 [ %41, %222 ], [ %41, %134 ], [ %175, %172 ], [ %41, %206 ], [ %41, %229 ], [ %41, %64 ], [ %41, %66 ], [ %41, %81 ], [ %41, %83 ], [ %41, %86 ], [ %41, %89 ], [ %41, %100 ], [ %41, %103 ], [ %41, %154 ], [ %41, %156 ], [ %41, %188 ], [ %41, %190 ], [ %41, %224 ], [ %41, %226 ], [ %41, %60 ], [ %41, %60 ], [ %41, %60 ], [ %41, %60 ], [ %41, %60 ], [ %41, %60 ], [ %41, %60 ], [ %41, %60 ], [ %41, %60 ], [ %41, %60 ], [ %41, %60 ], [ %41, %242 ], [ %41, %144 ], [ %175, %178 ], [ %41, %212 ]
  %259 = phi i32 [ %40, %222 ], [ %132, %134 ], [ %40, %172 ], [ %40, %206 ], [ %40, %229 ], [ %40, %64 ], [ %40, %66 ], [ %40, %81 ], [ %40, %83 ], [ %40, %86 ], [ %40, %89 ], [ %40, %100 ], [ %40, %103 ], [ %40, %154 ], [ %40, %156 ], [ %40, %188 ], [ %40, %190 ], [ %40, %224 ], [ %40, %226 ], [ %40, %60 ], [ %40, %60 ], [ %40, %60 ], [ %40, %60 ], [ %40, %60 ], [ %40, %60 ], [ %40, %60 ], [ %40, %60 ], [ %40, %60 ], [ %40, %60 ], [ %40, %60 ], [ %40, %242 ], [ %143, %144 ], [ %40, %178 ], [ %40, %212 ]
  %260 = phi i32 [ %223, %222 ], [ %39, %134 ], [ %39, %172 ], [ %39, %206 ], [ %39, %229 ], [ %39, %64 ], [ %39, %66 ], [ %39, %81 ], [ %39, %83 ], [ %39, %86 ], [ %39, %89 ], [ %39, %100 ], [ %39, %103 ], [ %39, %154 ], [ %39, %156 ], [ %39, %188 ], [ %39, %190 ], [ %39, %224 ], [ %39, %226 ], [ %39, %60 ], [ %39, %60 ], [ %39, %60 ], [ %39, %60 ], [ %39, %60 ], [ %39, %60 ], [ %39, %60 ], [ %39, %60 ], [ %39, %60 ], [ %39, %60 ], [ %39, %60 ], [ %39, %242 ], [ %39, %144 ], [ %39, %178 ], [ %39, %212 ]
  %261 = phi i32 [ %38, %222 ], [ %73, %134 ], [ %38, %172 ], [ %38, %206 ], [ %38, %229 ], [ %38, %64 ], [ %38, %66 ], [ %73, %81 ], [ %73, %83 ], [ %73, %86 ], [ %73, %89 ], [ %73, %100 ], [ %73, %103 ], [ %38, %154 ], [ %38, %156 ], [ %38, %188 ], [ %38, %190 ], [ %38, %224 ], [ %38, %226 ], [ %38, %60 ], [ %38, %60 ], [ %38, %60 ], [ %38, %60 ], [ %38, %60 ], [ %38, %60 ], [ %38, %60 ], [ %38, %60 ], [ %38, %60 ], [ %38, %60 ], [ %38, %60 ], [ %38, %242 ], [ %73, %144 ], [ %38, %178 ], [ %38, %212 ]
  %262 = phi i32 [ %37, %222 ], [ %79, %134 ], [ %37, %172 ], [ %37, %206 ], [ %37, %229 ], [ %37, %64 ], [ %37, %66 ], [ %79, %81 ], [ %79, %83 ], [ %79, %86 ], [ %79, %89 ], [ %79, %100 ], [ %79, %103 ], [ %37, %154 ], [ %37, %156 ], [ %37, %188 ], [ %37, %190 ], [ %37, %224 ], [ %37, %226 ], [ %37, %60 ], [ %37, %60 ], [ %37, %60 ], [ %37, %60 ], [ %37, %60 ], [ %37, %60 ], [ %37, %60 ], [ %37, %60 ], [ %37, %60 ], [ %37, %60 ], [ %37, %60 ], [ %37, %242 ], [ %79, %144 ], [ %37, %178 ], [ %37, %212 ]
  %263 = icmp ne i32 %256, 0
  %264 = icmp eq i32 %260, 0
  %265 = select i1 %263, i1 true, i1 %264
  br i1 %265, label %36, label %266

266:                                              ; preds = %252
  switch i32 %259, label %306 [
    i32 17, label %275
    i32 33, label %267
    i32 34, label %268
    i32 51, label %269
    i32 65, label %270
  ]

267:                                              ; preds = %266
  br label %275

268:                                              ; preds = %266
  br label %275

269:                                              ; preds = %266
  br label %275

270:                                              ; preds = %266
  %271 = load ptr, ptr %8, align 4
  %272 = getelementptr inbounds %struct.s5p_jpeg, ptr %271, i32 0, i32 11
  %273 = load ptr, ptr %272, align 4
  %274 = load i32, ptr %273, align 4
  switch i32 %274, label %306 [
    i32 4, label %275
    i32 3, label %275
    i32 1, label %275
  ]

275:                                              ; preds = %270, %270, %270, %269, %268, %267, %266
  %276 = phi i16 [ 1, %267 ], [ 2, %268 ], [ 5, %269 ], [ 0, %266 ], [ 3, %270 ], [ 3, %270 ], [ 3, %270 ]
  %277 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 4
  store i16 %276, ptr %277, align 4
  store i32 %254, ptr %20, align 4
  store i32 %253, ptr %22, align 4
  %278 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 5, i32 3
  store i32 %260, ptr %278, align 4
  %279 = getelementptr %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 5, i32 4
  %280 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 5, i32 4, i32 2
  store i32 %257, ptr %280, align 4
  %281 = icmp eq i32 %257, 0
  br i1 %281, label %292, label %282

282:                                              ; preds = %282, %275
  %283 = phi i32 [ %284, %282 ], [ %257, %275 ]
  %284 = add i32 %283, -1
  %285 = getelementptr [4 x i32], ptr %2, i32 0, i32 %284
  %286 = load i32, ptr %285, align 4
  %287 = getelementptr [4 x i32], ptr %279, i32 0, i32 %284
  store i32 %286, ptr %287, align 4
  %288 = getelementptr [4 x i32], ptr %3, i32 0, i32 %284
  %289 = load i32, ptr %288, align 4
  %290 = getelementptr %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 5, i32 4, i32 1, i32 %284
  store i32 %289, ptr %290, align 4
  %291 = icmp eq i32 %284, 0
  br i1 %291, label %292, label %282

292:                                              ; preds = %282, %275
  %293 = getelementptr %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 5, i32 5
  %294 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 5, i32 5, i32 2
  store i32 %258, ptr %294, align 4
  %295 = icmp eq i32 %258, 0
  br i1 %295, label %308, label %296

296:                                              ; preds = %296, %292
  %297 = phi i32 [ %298, %296 ], [ %258, %292 ]
  %298 = add i32 %297, -1
  %299 = getelementptr [4 x i32], ptr %4, i32 0, i32 %298
  %300 = load i32, ptr %299, align 4
  %301 = getelementptr [4 x i32], ptr %293, i32 0, i32 %298
  store i32 %300, ptr %301, align 4
  %302 = getelementptr [4 x i32], ptr %5, i32 0, i32 %298
  %303 = load i32, ptr %302, align 4
  %304 = getelementptr %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 5, i32 5, i32 1, i32 %298
  store i32 %303, ptr %304, align 4
  %305 = icmp eq i32 %298, 0
  br i1 %305, label %308, label %296

306:                                              ; preds = %270, %266, %193, %159, %130, %69, %57, %54, %36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  %307 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 10
  store i8 0, ptr %307, align 4
  tail call void @vb2_buffer_done(ptr noundef %0, i32 noundef 6) #15
  br label %328

308:                                              ; preds = %296, %292
  %309 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 5, i32 6
  store i32 %261, ptr %309, align 4
  %310 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 5, i32 7
  store i32 %262, ptr %310, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  %311 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 10
  store i8 1, ptr %311, align 4
  %312 = load i32, ptr %20, align 4
  %313 = icmp eq i32 %312, %21
  br i1 %313, label %314, label %317

314:                                              ; preds = %308
  %315 = load i32, ptr %22, align 4
  %316 = icmp eq i32 %315, %23
  br i1 %316, label %325, label %317

317:                                              ; preds = %314, %308
  tail call void @v4l2_event_queue_fh(ptr noundef %16, ptr noundef nonnull @s5p_jpeg_buf_queue.ev_src_ch) #15
  %318 = getelementptr inbounds %struct.vb2_queue, ptr %19, i32 0, i32 28
  %319 = load i16, ptr %318, align 4
  %320 = and i16 %319, 1
  %321 = icmp eq i16 %320, 0
  br i1 %321, label %324, label %322

322:                                              ; preds = %317
  %323 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 13
  store i32 1, ptr %323, align 4
  br label %325

324:                                              ; preds = %317
  tail call fastcc void @s5p_jpeg_set_capture_queue_data(ptr noundef %8)
  br label %325

325:                                              ; preds = %324, %322, %314, %12, %1
  %326 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %8, i32 0, i32 9, i32 10
  %327 = load ptr, ptr %326, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %327, ptr noundef %0) #15
  br label %328

328:                                              ; preds = %325, %306
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5p_jpeg_set_capture_queue_data(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 6, i32 1
  store i32 %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 6, i32 2
  store i32 %7, ptr %8, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %9, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %9, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = shl nuw i32 1, %13
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.s5p_jpeg, ptr %15, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %17, i32 0, i32 2
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 1
  %21 = icmp ne i8 %20, 0
  %22 = icmp eq i32 %11, 2
  %23 = and i1 %22, %21
  %24 = and i32 %4, 3
  %25 = icmp eq i32 %24, 1
  %26 = select i1 %23, i1 %25, i1 false
  %27 = select i1 %26, i32 %7, i32 8192
  %28 = select i1 %26, i32 %4, i32 8192
  tail call void @v4l_bound_align_image(ptr noundef %5, i32 noundef 32, i32 noundef %28, i32 noundef %11, ptr noundef %8, i32 noundef 32, i32 noundef %27, i32 noundef %13, i32 noundef 0) #15
  %29 = load i32, ptr %5, align 4
  %30 = icmp ult i32 %29, %4
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = shl nuw i32 1, %11
  %33 = add i32 %29, %32
  %34 = icmp ult i32 %33, %28
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 %33, ptr %5, align 4
  br label %36

36:                                               ; preds = %35, %31, %1
  %37 = phi i32 [ %33, %35 ], [ %29, %31 ], [ %29, %1 ]
  %38 = load i32, ptr %8, align 4
  %39 = icmp ult i32 %38, %7
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = add i32 %38, %14
  %42 = icmp ult i32 %41, %27
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 %41, ptr %8, align 4
  br label %44

44:                                               ; preds = %43, %40, %36
  %45 = phi i32 [ %38, %36 ], [ %38, %40 ], [ %41, %43 ]
  %46 = mul i32 %45, %37
  %47 = load ptr, ptr %2, align 4
  %48 = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = mul i32 %46, %49
  %51 = lshr i32 %50, 3
  %52 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 6, i32 8
  store i32 %51, ptr %52, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue_fh(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_g_volatile_ctrl(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 10291457
  br i1 %6, label %7, label %65

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %3, i32 -320
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.s5p_jpeg, ptr %9, i32 0, i32 1
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #15
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr inbounds %struct.s5p_jpeg, ptr %12, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %57 [
    i32 0, label %16
    i32 1, label %27
    i32 3, label %27
    i32 2, label %40
    i32 4, label %53
  ]

16:                                               ; preds = %7
  %17 = getelementptr i8, ptr %3, i32 -308
  %18 = load i16, ptr %17, align 4
  %19 = icmp ugt i16 %18, 3
  br i1 %19, label %20, label %22, !prof !8

20:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 592, i32 noundef 9, ptr noundef null) #15
  %21 = load i16, ptr %17, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i16 [ %21, %20 ], [ %18, %16 ]
  %24 = icmp ugt i16 %23, 2
  %25 = select i1 %24, i16 5, i16 %23
  %26 = zext i16 %25 to i32
  br label %62

27:                                               ; preds = %7, %7
  %28 = getelementptr i8, ptr %3, i32 -308
  %29 = load i16, ptr %28, align 4
  %30 = icmp ugt i16 %29, 6
  br i1 %30, label %31, label %33, !prof !8

31:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 598, i32 noundef 9, ptr noundef null) #15
  %32 = load i16, ptr %28, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i16 [ %32, %31 ], [ %29, %27 ]
  %35 = icmp ugt i16 %34, 3
  br i1 %35, label %62, label %36

36:                                               ; preds = %33
  %37 = zext i16 %34 to i32
  %38 = getelementptr [7 x i32], ptr @exynos3250_decoded_subsampling, i32 0, i32 %37
  %39 = load i32, ptr %38, align 4
  br label %62

40:                                               ; preds = %7
  %41 = getelementptr i8, ptr %3, i32 -308
  %42 = load i16, ptr %41, align 4
  %43 = icmp ugt i16 %42, 3
  br i1 %43, label %44, label %46, !prof !8

44:                                               ; preds = %40
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 603, i32 noundef 9, ptr noundef null) #15
  %45 = load i16, ptr %41, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi i16 [ %45, %44 ], [ %42, %40 ]
  %48 = icmp ugt i16 %47, 2
  br i1 %48, label %62, label %49

49:                                               ; preds = %46
  %50 = zext i16 %47 to i32
  %51 = getelementptr [4 x i32], ptr @exynos4x12_decoded_subsampling, i32 0, i32 %50
  %52 = load i32, ptr %51, align 4
  br label %62

53:                                               ; preds = %7
  %54 = getelementptr i8, ptr %3, i32 -308
  %55 = load i16, ptr %54, align 4
  %56 = zext i16 %55 to i32
  br label %62

57:                                               ; preds = %7
  %58 = getelementptr i8, ptr %3, i32 -308
  %59 = load i16, ptr %58, align 4
  %60 = icmp ugt i16 %59, 3
  br i1 %60, label %61, label %62, !prof !8

61:                                               ; preds = %57
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 610, i32 noundef 9, ptr noundef null) #15
  br label %62

62:                                               ; preds = %61, %57, %53, %49, %46, %36, %33, %22
  %63 = phi i32 [ %56, %53 ], [ %52, %49 ], [ %39, %36 ], [ 3, %33 ], [ 2, %46 ], [ 5, %61 ], [ 5, %57 ], [ %26, %22 ]
  %64 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  store i32 %63, ptr %64, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #15
  br label %65

65:                                               ; preds = %62, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_try_ctrl(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -320
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.s5p_jpeg, ptr %5, i32 0, i32 1
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #15
  %8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 10291457
  br i1 %10, label %11, label %39

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.s5p_jpeg, ptr %13, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %31 [
    i32 0, label %39
    i32 1, label %17
    i32 3, label %17
    i32 2, label %23
  ]

17:                                               ; preds = %11, %11
  %18 = getelementptr i8, ptr %3, i32 -304
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 876758866
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  store i32 0, ptr %12, align 4
  br label %31

23:                                               ; preds = %11
  %24 = getelementptr i8, ptr %3, i32 -304
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 1497715271
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, ptr %12, align 4
  %30 = icmp eq i32 %29, 5
  br i1 %30, label %39, label %31

31:                                               ; preds = %28, %23, %22, %17, %11
  %32 = getelementptr i8, ptr %3, i32 -304
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %33, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %12, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 %35, ptr %12, align 4
  br label %39

39:                                               ; preds = %38, %31, %28, %11, %1
  %40 = phi i32 [ 0, %1 ], [ %16, %11 ], [ -22, %28 ], [ 0, %38 ], [ 0, %31 ]
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr inbounds %struct.s5p_jpeg, ptr %41, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %7) #15
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_s_ctrl(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -320
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.s5p_jpeg, ptr %5, i32 0, i32 1
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #15
  %8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 8
  switch i32 %9, label %25 [
    i32 10291459, label %10
    i32 10291458, label %15
    i32 10291457, label %20
  ]

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = trunc i32 %12 to i16
  %14 = getelementptr i8, ptr %3, i32 -312
  store i16 %13, ptr %14, align 4
  br label %25

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %17 = load i32, ptr %16, align 4
  %18 = trunc i32 %17 to i16
  %19 = getelementptr i8, ptr %3, i32 -310
  store i16 %18, ptr %19, align 2
  br label %25

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %22 = load i32, ptr %21, align 4
  %23 = trunc i32 %22 to i16
  %24 = getelementptr i8, ptr %3, i32 -308
  store i16 %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %20, %15, %10, %1
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr inbounds %struct.s5p_jpeg, ptr %26, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %7) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_querycap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %1, i32 -236
  %5 = getelementptr i8, ptr %1, i32 -232
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = tail call i32 @strscpy(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 16) #15
  %9 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 1
  %10 = select i1 %7, ptr @.str.24, ptr @.str.25
  %11 = tail call i32 @strscpy(ptr noundef %9, ptr noundef nonnull %10, i32 noundef 32) #15
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.s5p_jpeg, ptr %12, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load ptr, ptr %14, align 4
  br label %20

20:                                               ; preds = %18, %3
  %21 = phi ptr [ %19, %18 ], [ %16, %3 ]
  %22 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 2
  %23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %22, i32 noundef 32, ptr noundef nonnull @.str.26, ptr noundef %21)
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_enum_fmt_vid_cap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #11 {
  %4 = getelementptr i8, ptr %1, i32 -236
  %5 = getelementptr i8, ptr %1, i32 -232
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.s5p_jpeg, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  br i1 %7, label %13, label %32

13:                                               ; preds = %28, %3
  %14 = phi i32 [ %29, %28 ], [ 0, %3 ]
  %15 = phi i32 [ %30, %28 ], [ 0, %3 ]
  %16 = getelementptr %struct.s5p_jpeg_fmt, ptr @sjpeg_formats, i32 %15, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %17, %12
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %13
  %24 = load i32, ptr %2, align 4
  %25 = icmp eq i32 %14, %24
  br i1 %25, label %51, label %26

26:                                               ; preds = %23
  %27 = add i32 %14, 1
  br label %28

28:                                               ; preds = %26, %13
  %29 = phi i32 [ %27, %26 ], [ %14, %13 ]
  %30 = add nuw nsw i32 %15, 1
  %31 = icmp eq i32 %30, 26
  br i1 %31, label %56, label %13

32:                                               ; preds = %47, %3
  %33 = phi i32 [ %48, %47 ], [ 0, %3 ]
  %34 = phi i32 [ %49, %47 ], [ 0, %3 ]
  %35 = getelementptr %struct.s5p_jpeg_fmt, ptr @sjpeg_formats, i32 %34, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  %39 = and i32 %36, %12
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %32
  %43 = load i32, ptr %2, align 4
  %44 = icmp eq i32 %33, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = add i32 %33, 1
  br label %47

47:                                               ; preds = %45, %32
  %48 = phi i32 [ %46, %45 ], [ %33, %32 ]
  %49 = add nuw nsw i32 %34, 1
  %50 = icmp eq i32 %49, 26
  br i1 %50, label %56, label %32

51:                                               ; preds = %42, %23
  %52 = phi i32 [ %15, %23 ], [ %34, %42 ]
  %53 = getelementptr %struct.s5p_jpeg_fmt, ptr @sjpeg_formats, i32 %52
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %51, %47, %28
  %57 = phi i32 [ 0, %51 ], [ -22, %28 ], [ -22, %47 ]
  ret i32 %57
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_enum_fmt_vid_out(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #11 {
  %4 = getelementptr i8, ptr %1, i32 -236
  %5 = getelementptr i8, ptr %1, i32 -232
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.s5p_jpeg, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  br i1 %7, label %13, label %32

13:                                               ; preds = %28, %3
  %14 = phi i32 [ %29, %28 ], [ 0, %3 ]
  %15 = phi i32 [ %30, %28 ], [ 0, %3 ]
  %16 = getelementptr %struct.s5p_jpeg_fmt, ptr @sjpeg_formats, i32 %15, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %17, %12
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %13
  %24 = load i32, ptr %2, align 4
  %25 = icmp eq i32 %14, %24
  br i1 %25, label %51, label %26

26:                                               ; preds = %23
  %27 = add i32 %14, 1
  br label %28

28:                                               ; preds = %26, %13
  %29 = phi i32 [ %27, %26 ], [ %14, %13 ]
  %30 = add nuw nsw i32 %15, 1
  %31 = icmp eq i32 %30, 26
  br i1 %31, label %56, label %13

32:                                               ; preds = %47, %3
  %33 = phi i32 [ %48, %47 ], [ 0, %3 ]
  %34 = phi i32 [ %49, %47 ], [ 0, %3 ]
  %35 = getelementptr %struct.s5p_jpeg_fmt, ptr @sjpeg_formats, i32 %34, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  %39 = and i32 %36, %12
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %32
  %43 = load i32, ptr %2, align 4
  %44 = icmp eq i32 %33, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = add i32 %33, 1
  br label %47

47:                                               ; preds = %45, %32
  %48 = phi i32 [ %46, %45 ], [ %33, %32 ]
  %49 = add nuw nsw i32 %34, 1
  %50 = icmp eq i32 %49, 26
  br i1 %50, label %56, label %32

51:                                               ; preds = %42, %23
  %52 = phi i32 [ %15, %23 ], [ %34, %42 ]
  %53 = getelementptr %struct.s5p_jpeg_fmt, ptr @sjpeg_formats, i32 %52
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %51, %47, %28
  %57 = phi i32 [ 0, %51 ], [ -22, %28 ], [ -22, %47 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_g_fmt(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr nocapture noundef %2) #1 {
  %4 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %5 = getelementptr i8, ptr %1, i32 76
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %2, align 4
  %8 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %6, i32 noundef %7) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %55, label %10

10:                                               ; preds = %3
  %11 = load i32, ptr %2, align 4
  switch i32 %11, label %24 [
    i32 1, label %12
    i32 2, label %20
  ]

12:                                               ; preds = %10
  %13 = getelementptr i8, ptr %1, i32 -232
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %1, i32 80
  %18 = load i8, ptr %17, align 4, !range !15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %55, label %20

20:                                               ; preds = %16, %12, %10
  %21 = phi i32 [ -220, %10 ], [ -120, %12 ], [ -120, %16 ]
  %22 = getelementptr i8, ptr %1, i32 %21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %20, %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/s5p-jpeg/jpeg-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1346, 0\0A.popsection", ""() #15, !srcloc !29
  unreachable

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %22, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %4, align 4
  %28 = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %22, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %31, align 4
  %32 = load ptr, ptr %22, align 4
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 0, ptr %35, align 4
  %36 = load ptr, ptr %22, align 4
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 1195724874
  br i1 %38, label %51, label %39

39:                                               ; preds = %25
  %40 = load i32, ptr %26, align 4
  %41 = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %36, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %36, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = mul i32 %46, %40
  %48 = lshr i32 %47, 3
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i32 [ %48, %44 ], [ %40, %39 ]
  store i32 %50, ptr %35, align 4
  br label %51

51:                                               ; preds = %49, %25
  %52 = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %22, i32 0, i32 8
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  store i32 %53, ptr %54, align 4
  br label %55

55:                                               ; preds = %51, %16, %3
  %56 = phi i32 [ 0, %51 ], [ -22, %3 ], [ -22, %16 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_s_fmt_vid_cap(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = tail call i32 @s5p_jpeg_try_fmt_vid_cap(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %1, i32 -236
  %8 = tail call fastcc i32 @s5p_jpeg_s_fmt(ptr noundef %7, ptr noundef %2)
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i32 [ %8, %6 ], [ %4, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_s_fmt_vid_out(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %1, i32 -236
  %5 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %1, i32 -232
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 2, i32 8
  br label %11

11:                                               ; preds = %29, %3
  %12 = phi i32 [ 0, %3 ], [ %30, %29 ]
  %13 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %6
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %12, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds %struct.s5p_jpeg, ptr %22, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, %18
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21, %16, %11
  %30 = add nuw nsw i32 %12, 1
  %31 = icmp eq i32 %30, 26
  br i1 %31, label %34, label %11

32:                                               ; preds = %21
  %33 = icmp eq ptr %13, null
  br i1 %33, label %36, label %40

34:                                               ; preds = %29
  %35 = load ptr, ptr %4, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi ptr [ %35, %34 ], [ %22, %32 ]
  %38 = getelementptr inbounds %struct.s5p_jpeg, ptr %37, i32 0, i32 2, i32 4
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %38, i32 noundef %6) #16
  br label %45

40:                                               ; preds = %32
  %41 = tail call fastcc i32 @vidioc_try_fmt(ptr noundef %2, ptr noundef nonnull %13, ptr noundef %4, i32 noundef 0) #15
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = tail call fastcc i32 @s5p_jpeg_s_fmt(ptr noundef %4, ptr noundef %2)
  br label %45

45:                                               ; preds = %43, %40, %36
  %46 = phi i32 [ %44, %43 ], [ %41, %40 ], [ -22, %36 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_try_fmt_vid_cap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %1, i32 -236
  %5 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %1, i32 -232
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 1, i32 4
  br label %11

11:                                               ; preds = %29, %3
  %12 = phi i32 [ 0, %3 ], [ %30, %29 ]
  %13 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %6
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %12, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds %struct.s5p_jpeg, ptr %22, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, %18
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21, %16, %11
  %30 = add nuw nsw i32 %12, 1
  %31 = icmp eq i32 %30, 26
  br i1 %31, label %34, label %11

32:                                               ; preds = %21
  %33 = icmp eq ptr %13, null
  br i1 %33, label %36, label %40

34:                                               ; preds = %29
  %35 = load ptr, ptr %4, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi ptr [ %35, %34 ], [ %22, %32 ]
  %38 = getelementptr inbounds %struct.s5p_jpeg, ptr %37, i32 0, i32 2, i32 4
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %38, i32 noundef %6) #16
  br label %146

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %24, i32 0, i32 2
  %42 = load i8, ptr %41, align 4
  %43 = and i8 %42, 4
  %44 = icmp ne i8 %43, 0
  %45 = icmp eq i32 %8, 1
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %143

47:                                               ; preds = %40
  %48 = and i32 %18, 256
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %106, label %50

50:                                               ; preds = %47
  %51 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %12, i32 6
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr i8, ptr %1, i32 -224
  %54 = load i16, ptr %53, align 4
  %55 = zext i16 %54 to i32
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %106

57:                                               ; preds = %50
  %58 = icmp eq i16 %54, 5
  br i1 %58, label %80, label %59

59:                                               ; preds = %57
  switch i32 %6, label %80 [
    i32 875714126, label %69
    i32 842290766, label %60
    i32 909203022, label %61
    i32 825644622, label %62
    i32 1448695129, label %63
    i32 1431918169, label %64
    i32 842094158, label %65
    i32 825382478, label %66
    i32 842093913, label %67
    i32 1497715271, label %68
  ]

60:                                               ; preds = %59
  br label %69

61:                                               ; preds = %59
  br label %69

62:                                               ; preds = %59
  br label %69

63:                                               ; preds = %59
  br label %69

64:                                               ; preds = %59
  br label %69

65:                                               ; preds = %59
  br label %69

66:                                               ; preds = %59
  br label %69

67:                                               ; preds = %59
  br label %69

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %67, %66, %65, %64, %63, %62, %61, %60, %59
  %70 = phi i1 [ false, %59 ], [ false, %60 ], [ true, %61 ], [ true, %62 ], [ true, %63 ], [ true, %64 ], [ true, %65 ], [ true, %66 ], [ true, %67 ], [ true, %68 ]
  %71 = phi i32 [ 0, %59 ], [ 1, %60 ], [ 2, %61 ], [ 3, %62 ], [ 4, %63 ], [ 5, %64 ], [ 6, %65 ], [ 7, %66 ], [ 8, %67 ], [ 9, %68 ]
  switch i16 %54, label %80 [
    i16 1, label %74
    i16 2, label %72
  ]

72:                                               ; preds = %69
  %73 = getelementptr [10 x i32], ptr @subs420_fourcc_dwngrd_schema, i32 0, i32 %71
  br label %77

74:                                               ; preds = %69
  br i1 %70, label %80, label %75

75:                                               ; preds = %74
  %76 = getelementptr [2 x i32], ptr @subs422_fourcc_dwngrd_schema, i32 0, i32 %71
  br label %77

77:                                               ; preds = %75, %72
  %78 = phi ptr [ %76, %75 ], [ %73, %72 ]
  %79 = load i32, ptr %78, align 4
  br label %80

80:                                               ; preds = %77, %74, %69, %59, %57
  %81 = phi i32 [ 1497715271, %57 ], [ 1497715271, %69 ], [ %79, %77 ], [ 1497715271, %74 ], [ 1497715271, %59 ]
  store i32 %81, ptr %5, align 4
  %82 = load i32, ptr %7, align 4
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 1, i32 4
  br label %85

85:                                               ; preds = %103, %80
  %86 = phi i32 [ 0, %80 ], [ %104, %103 ]
  %87 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %86
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, %81
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %86, i32 7
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, %84
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %90
  %96 = load ptr, ptr %4, align 4
  %97 = getelementptr inbounds %struct.s5p_jpeg, ptr %96, i32 0, i32 11
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %98, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, %92
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %95, %90, %85
  %104 = add nuw nsw i32 %86, 1
  %105 = icmp eq i32 %104, 26
  br i1 %105, label %106, label %85

106:                                              ; preds = %103, %95, %50, %47
  %107 = phi i32 [ %6, %50 ], [ %6, %47 ], [ %81, %95 ], [ %81, %103 ]
  %108 = phi ptr [ %13, %50 ], [ %13, %47 ], [ null, %103 ], [ %87, %95 ]
  %109 = getelementptr i8, ptr %1, i32 -224
  %110 = load i16, ptr %109, align 4
  %111 = icmp eq i16 %110, 2
  br i1 %111, label %112, label %143

112:                                              ; preds = %106
  %113 = getelementptr i8, ptr %1, i32 -216
  %114 = load i32, ptr %113, align 4
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %143, label %117

117:                                              ; preds = %112
  switch i32 %107, label %143 [
    i32 842094158, label %118
    i32 825382478, label %118
    i32 842093913, label %118
  ]

118:                                              ; preds = %117, %117, %117
  store i32 1346520914, ptr %5, align 4
  %119 = load i32, ptr %7, align 4
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %120, i32 1, i32 4
  br label %122

122:                                              ; preds = %140, %118
  %123 = phi i32 [ 0, %118 ], [ %141, %140 ]
  %124 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %123
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 1346520914
  br i1 %126, label %127, label %140

127:                                              ; preds = %122
  %128 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %123, i32 7
  %129 = load i32, ptr %128, align 4
  %130 = and i32 %129, %121
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %127
  %133 = load ptr, ptr %4, align 4
  %134 = getelementptr inbounds %struct.s5p_jpeg, ptr %133, i32 0, i32 11
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %135, i32 0, i32 1
  %137 = load i32, ptr %136, align 4
  %138 = and i32 %137, %129
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %132, %127, %122
  %141 = add nuw nsw i32 %123, 1
  %142 = icmp eq i32 %141, 26
  br i1 %142, label %143, label %122

143:                                              ; preds = %140, %132, %117, %112, %106, %40
  %144 = phi ptr [ %108, %112 ], [ %108, %106 ], [ %13, %40 ], [ %108, %117 ], [ %124, %132 ], [ null, %140 ]
  %145 = tail call fastcc i32 @vidioc_try_fmt(ptr noundef %2, ptr noundef %144, ptr noundef %4, i32 noundef 1)
  br label %146

146:                                              ; preds = %143, %36
  %147 = phi i32 [ %145, %143 ], [ -22, %36 ]
  ret i32 %147
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_try_fmt_vid_out(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 {
  %4 = getelementptr i8, ptr %1, i32 -236
  %5 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %1, i32 -232
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 2, i32 8
  br label %11

11:                                               ; preds = %29, %3
  %12 = phi i32 [ 0, %3 ], [ %30, %29 ]
  %13 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %6
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %12, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds %struct.s5p_jpeg, ptr %22, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, %18
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21, %16, %11
  %30 = add nuw nsw i32 %12, 1
  %31 = icmp eq i32 %30, 26
  br i1 %31, label %34, label %11

32:                                               ; preds = %21
  %33 = icmp eq ptr %13, null
  br i1 %33, label %36, label %40

34:                                               ; preds = %29
  %35 = load ptr, ptr %4, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi ptr [ %35, %34 ], [ %22, %32 ]
  %38 = getelementptr inbounds %struct.s5p_jpeg, ptr %37, i32 0, i32 2, i32 4
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %38, i32 noundef %6) #16
  br label %42

40:                                               ; preds = %32
  %41 = tail call fastcc i32 @vidioc_try_fmt(ptr noundef %2, ptr noundef nonnull %13, ptr noundef %4, i32 noundef 0)
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi i32 [ %41, %40 ], [ -22, %36 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @s5p_jpeg_g_selection(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #12 {
  %4 = load i32, ptr %2, align 4
  %5 = add i32 %4, -1
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %33

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %33 [
    i32 0, label %10
    i32 2, label %10
    i32 1, label %10
    i32 257, label %10
    i32 256, label %18
    i32 258, label %18
    i32 259, label %18
  ]

10:                                               ; preds = %7, %7, %7, %7
  %11 = getelementptr i8, ptr %1, i32 -216
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %14 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  store i32 %12, ptr %14, align 4
  %15 = getelementptr i8, ptr %1, i32 -212
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  store i32 %16, ptr %17, align 4
  store i32 0, ptr %13, align 4
  br label %30

18:                                               ; preds = %7, %7, %7
  %19 = getelementptr i8, ptr %1, i32 -16
  %20 = getelementptr i8, ptr %1, i32 -8
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %23 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  store i32 %21, ptr %23, align 4
  %24 = getelementptr i8, ptr %1, i32 -4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  store i32 %25, ptr %26, align 4
  %27 = load i32, ptr %19, align 4
  store i32 %27, ptr %22, align 4
  %28 = getelementptr i8, ptr %1, i32 -12
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %18, %10
  %31 = phi i32 [ 0, %10 ], [ %29, %18 ]
  %32 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  store i32 %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %30, %7, %3
  %34 = phi i32 [ -22, %3 ], [ -22, %7 ], [ 0, %30 ]
  ret i32 %34
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @s5p_jpeg_s_selection(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #13 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -236
  %7 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %8 = load i32, ptr %2, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %115

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %115 [
    i32 256, label %13
    i32 0, label %58
  ]

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %5, i32 -232
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %115

17:                                               ; preds = %13
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds %struct.s5p_jpeg, ptr %18, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %20, i32 0, i32 2
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %115, label %25

25:                                               ; preds = %17
  %26 = getelementptr i8, ptr %5, i32 -216
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = udiv i32 %27, %29
  %31 = getelementptr i8, ptr %5, i32 -212
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = udiv i32 %32, %34
  %36 = tail call i32 @llvm.smax.i32(i32 %30, i32 %35) #15
  %37 = tail call i32 @llvm.smax.i32(i32 %36, i32 1) #15
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 8) #15
  %39 = icmp ugt i32 %38, 1
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = icmp eq i32 %38, 2
  br i1 %41, label %45, label %42

42:                                               ; preds = %40
  %43 = icmp ugt i32 %38, 4
  %44 = select i1 %43, i32 8, i32 4
  br label %45

45:                                               ; preds = %42, %40, %25
  %46 = phi i32 [ 1, %25 ], [ 2, %40 ], [ %44, %42 ]
  %47 = getelementptr i8, ptr %5, i32 -20
  store i32 %46, ptr %47, align 4
  %48 = udiv i32 %27, %46
  %49 = and i32 %48, -2
  store i32 %49, ptr %28, align 4
  %50 = load i32, ptr %31, align 4
  %51 = load i32, ptr %47, align 4
  %52 = udiv i32 %50, %51
  %53 = and i32 %52, -2
  store i32 %53, ptr %33, align 4
  %54 = getelementptr i8, ptr %5, i32 -16
  %55 = getelementptr i8, ptr %5, i32 -8
  store i32 %49, ptr %55, align 4
  %56 = load i32, ptr %33, align 4
  %57 = getelementptr i8, ptr %5, i32 -4
  store i32 %56, ptr %57, align 4
  store i32 0, ptr %54, align 4
  br label %110

58:                                               ; preds = %10
  %59 = getelementptr i8, ptr %5, i32 -232
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %115

62:                                               ; preds = %58
  %63 = load ptr, ptr %6, align 4
  %64 = getelementptr inbounds %struct.s5p_jpeg, ptr %63, i32 0, i32 11
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %65, i32 0, i32 2
  %67 = load i8, ptr %66, align 4
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %115, label %70

70:                                               ; preds = %62
  %71 = getelementptr i8, ptr %5, i32 -120
  %72 = load ptr, ptr %71, align 4
  %73 = load i32, ptr %72, align 4
  switch i32 %73, label %75 [
    i32 842094158, label %76
    i32 825382478, label %76
    i32 842093913, label %74
  ]

74:                                               ; preds = %70
  br label %76

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %74, %70, %70
  %77 = phi i32 [ -1, %75 ], [ -2, %74 ], [ -1, %70 ], [ -1, %70 ]
  %78 = phi i32 [ -1, %75 ], [ -2, %74 ], [ -2, %70 ], [ -2, %70 ]
  %79 = getelementptr i8, ptr %5, i32 -216
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr i8, ptr %5, i32 -212
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, %77
  store i32 %85, ptr %83, align 4
  %86 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, %78
  store i32 %88, ptr %86, align 4
  %89 = load i32, ptr %7, align 4
  %90 = and i32 %89, -2
  store i32 %90, ptr %7, align 4
  %91 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, -2
  store i32 %93, ptr %91, align 4
  %94 = icmp sgt i32 %90, -1
  %95 = icmp sgt i32 %93, -1
  %96 = select i1 %94, i1 %95, i1 false
  %97 = add i32 %90, %85
  %98 = icmp ule i32 %97, %80
  %99 = select i1 %96, i1 %98, i1 false
  %100 = add i32 %93, %88
  %101 = icmp ule i32 %100, %82
  %102 = select i1 %99, i1 %101, i1 false
  br i1 %102, label %103, label %115

103:                                              ; preds = %76
  %104 = getelementptr i8, ptr %5, i32 -16
  store i32 %90, ptr %104, align 4
  %105 = load i32, ptr %91, align 4
  %106 = getelementptr i8, ptr %5, i32 -12
  store i32 %105, ptr %106, align 4
  %107 = load i32, ptr %83, align 4
  %108 = getelementptr i8, ptr %5, i32 -8
  store i32 %107, ptr %108, align 4
  %109 = load i32, ptr %86, align 4
  br label %110

110:                                              ; preds = %103, %45
  %111 = phi i32 [ -4, %103 ], [ -12, %45 ]
  %112 = phi i32 [ %109, %103 ], [ 0, %45 ]
  %113 = getelementptr i8, ptr %5, i32 %111
  store i32 %112, ptr %113, align 4
  %114 = getelementptr i8, ptr %5, i32 81
  store i8 1, ptr %114, align 1
  br label %115

115:                                              ; preds = %110, %76, %62, %58, %17, %13, %10, %3
  %116 = phi i32 [ -22, %3 ], [ -22, %13 ], [ -22, %58 ], [ -22, %17 ], [ -22, %62 ], [ -22, %10 ], [ -22, %76 ], [ 0, %110 ]
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_subscribe_event(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 5
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @v4l2_src_change_event_subscribe(ptr noundef %0, ptr noundef %1) #15
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ -22, %2 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s5p_jpeg_s_fmt(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 9, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %1, align 4
  %9 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %7, i32 noundef %8) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %222, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %1, align 4
  switch i32 %12, label %20 [
    i32 2, label %13
    i32 1, label %15
  ]

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5
  br label %17

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 6
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %14, %13 ], [ %16, %15 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !8

20:                                               ; preds = %17, %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/s5p-jpeg/jpeg-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1598, 0\0A.popsection", ""() #15, !srcloc !30
  unreachable

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.vb2_queue, ptr %9, i32 0, i32 21
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.s5p_jpeg, ptr %26, i32 0, i32 2, i32 4
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %27, ptr noundef nonnull @__func__.s5p_jpeg_s_fmt) #16
  br label %222

29:                                               ; preds = %21
  %30 = icmp eq i32 %12, 2
  %31 = select i1 %30, i32 2, i32 1
  %32 = select i1 %30, i32 8, i32 4
  %33 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 1
  %34 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 2
  %35 = load i32, ptr %33, align 4
  %36 = icmp eq i32 %35, 0
  %37 = load i32, ptr %34, align 4
  %38 = xor i1 %30, true
  %39 = select i1 %36, i32 %31, i32 %32
  br label %40

40:                                               ; preds = %58, %29
  %41 = phi i32 [ 0, %29 ], [ %59, %58 ]
  %42 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %41
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, %37
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = getelementptr [26 x %struct.s5p_jpeg_fmt], ptr @sjpeg_formats, i32 0, i32 %41, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, %39
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %0, align 4
  %52 = getelementptr inbounds %struct.s5p_jpeg, ptr %51, i32 0, i32 11
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %53, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, %47
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50, %45, %40
  %59 = add nuw nsw i32 %41, 1
  %60 = icmp eq i32 %59, 26
  br i1 %60, label %61, label %40

61:                                               ; preds = %58, %50
  %62 = phi ptr [ null, %58 ], [ %42, %50 ]
  store ptr %62, ptr %18, align 4
  switch i32 %35, label %72 [
    i32 0, label %66
    i32 1, label %63
  ]

63:                                               ; preds = %61
  %64 = load i32, ptr %62, align 4
  %65 = icmp eq i32 %64, 1195724874
  br i1 %65, label %136, label %66

66:                                               ; preds = %63, %61
  %67 = load i32, ptr %5, align 4
  %68 = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %18, i32 0, i32 1
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %18, i32 0, i32 2
  store i32 %70, ptr %71, align 4
  br label %72

72:                                               ; preds = %66, %61
  %73 = load i32, ptr %62, align 4
  %74 = icmp eq i32 %73, 1195724874
  br i1 %74, label %136, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr %0, align 4
  %77 = getelementptr inbounds %struct.s5p_jpeg, ptr %76, i32 0, i32 11
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %78, i32 0, i32 2
  %80 = load i8, ptr %79, align 4
  %81 = and i8 %80, 4
  %82 = icmp ne i8 %81, 0
  %83 = select i1 %82, i1 %30, i1 false
  br i1 %83, label %84, label %125

84:                                               ; preds = %75
  %85 = load i32, ptr %33, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %125

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %62, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = load i32, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %91 = load i32, ptr %5, align 4
  store i32 %91, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %92 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  store i32 %93, ptr %4, align 4
  switch i32 %90, label %94 [
    i32 1346520914, label %95
    i32 876758866, label %95
    i32 875714126, label %95
    i32 842290766, label %95
    i32 842094158, label %95
    i32 842093913, label %95
    i32 825382478, label %95
  ]

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %87, %87, %87, %87, %87, %87, %87
  %96 = phi i32 [ 1, %94 ], [ 4, %87 ], [ 4, %87 ], [ 4, %87 ], [ 4, %87 ], [ 4, %87 ], [ 4, %87 ], [ 4, %87 ]
  %97 = shl nuw nsw i32 1, %96
  call void @v4l_bound_align_image(ptr noundef nonnull %3, i32 noundef 32, i32 noundef 8192, i32 noundef %96, ptr noundef nonnull %4, i32 noundef 32, i32 noundef 8192, i32 noundef %96, i32 noundef 0) #15
  %98 = load i32, ptr %3, align 4
  %99 = icmp ult i32 %98, %91
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = add i32 %98, %97
  %102 = icmp ult i32 %101, 8192
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 %101, ptr %3, align 4
  br label %104

104:                                              ; preds = %103, %100, %95
  %105 = phi i32 [ %101, %103 ], [ %98, %100 ], [ %98, %95 ]
  %106 = load i32, ptr %4, align 4
  %107 = icmp ult i32 %106, %93
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = add i32 %106, %97
  %110 = icmp ult i32 %109, 8192
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 %109, ptr %4, align 4
  br label %112

112:                                              ; preds = %111, %108, %104
  %113 = phi i32 [ %106, %104 ], [ %106, %108 ], [ %109, %111 ]
  %114 = load ptr, ptr %0, align 4
  %115 = getelementptr inbounds %struct.s5p_jpeg, ptr %114, i32 0, i32 11
  %116 = load ptr, ptr %115, align 4
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 2
  %119 = select i1 %118, i32 4096, i32 0
  %120 = mul i32 %105, %89
  %121 = mul i32 %120, %113
  %122 = ashr i32 %121, 3
  %123 = add nsw i32 %119, %122
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %124 = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %18, i32 0, i32 8
  store i32 %123, ptr %124, align 4
  br label %140

125:                                              ; preds = %84, %75
  %126 = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %18, i32 0, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %18, i32 0, i32 2
  %129 = load i32, ptr %128, align 4
  %130 = mul i32 %129, %127
  %131 = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %62, i32 0, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = mul i32 %130, %132
  %134 = lshr i32 %133, 3
  %135 = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %18, i32 0, i32 8
  store i32 %134, ptr %135, align 4
  br i1 %30, label %140, label %158

136:                                              ; preds = %72, %63
  %137 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr inbounds %struct.s5p_jpeg_q_data, ptr %18, i32 0, i32 8
  store i32 %138, ptr %139, align 4
  br i1 %30, label %140, label %158

140:                                              ; preds = %136, %125, %112
  %141 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 12
  %142 = call ptr @v4l2_ctrl_find(ptr noundef %141, i32 noundef 10291457) #15
  %143 = icmp eq ptr %142, null
  br i1 %143, label %156, label %144

144:                                              ; preds = %140
  %145 = load ptr, ptr %18, align 4
  %146 = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %145, i32 0, i32 6
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr inbounds %struct.v4l2_ctrl, ptr %142, i32 0, i32 2
  %149 = load ptr, ptr %148, align 8
  %150 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %149, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  call void @mutex_lock(ptr noundef %151) #15
  %152 = call i32 @__v4l2_ctrl_s_ctrl(ptr noundef nonnull %142, i32 noundef %147) #15
  %153 = load ptr, ptr %148, align 8
  %154 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %153, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  call void @mutex_unlock(ptr noundef %155) #15
  br label %156

156:                                              ; preds = %144, %140
  %157 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 11
  store i8 0, ptr %157, align 1
  br label %158

158:                                              ; preds = %156, %136, %125
  %159 = phi i1 [ true, %156 ], [ false, %136 ], [ false, %125 ]
  %160 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 11
  %161 = load i8, ptr %160, align 1, !range !15
  %162 = icmp eq i8 %161, 0
  %163 = load i32, ptr %33, align 4
  br i1 %162, label %164, label %176

164:                                              ; preds = %158
  %165 = icmp eq i32 %163, 1
  %166 = select i1 %165, i1 %38, i1 false
  %167 = icmp eq i32 %163, 0
  %168 = and i1 %159, %167
  %169 = or i1 %166, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  %171 = load i32, ptr %5, align 4
  %172 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 8, i32 2
  store i32 %171, ptr %172, align 4
  %173 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 1
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 8, i32 3
  store i32 %174, ptr %175, align 4
  br label %176

176:                                              ; preds = %170, %164, %158
  %177 = icmp eq i32 %163, 1
  %178 = select i1 %177, i1 %38, i1 false
  br i1 %178, label %179, label %222

179:                                              ; preds = %176
  %180 = load ptr, ptr %0, align 4
  %181 = getelementptr inbounds %struct.s5p_jpeg, ptr %180, i32 0, i32 11
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %182, i32 0, i32 2
  %184 = load i8, ptr %183, align 4
  %185 = and i8 %184, 1
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %222, label %187

187:                                              ; preds = %179
  %188 = load i32, ptr %34, align 4
  %189 = icmp eq i32 %188, 842093913
  br i1 %189, label %190, label %222

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 7
  %192 = load i32, ptr %191, align 4
  %193 = icmp ugt i32 %192, 2
  br i1 %193, label %194, label %222

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5, i32 1
  %196 = load i32, ptr %195, align 4
  %197 = lshr i32 %196, 1
  %198 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 5, i32 2
  %199 = load i32, ptr %198, align 4
  %200 = lshr i32 %199, 1
  %201 = udiv i32 %196, %197
  %202 = udiv i32 %199, %200
  %203 = call i32 @llvm.smax.i32(i32 %201, i32 %202) #15
  %204 = call i32 @llvm.smax.i32(i32 %203, i32 1) #15
  %205 = call i32 @llvm.umin.i32(i32 %204, i32 8) #15
  %206 = icmp ugt i32 %205, 1
  br i1 %206, label %207, label %212

207:                                              ; preds = %194
  %208 = icmp eq i32 %205, 2
  br i1 %208, label %212, label %209

209:                                              ; preds = %207
  %210 = icmp ugt i32 %205, 4
  %211 = select i1 %210, i32 8, i32 4
  br label %212

212:                                              ; preds = %209, %207, %194
  %213 = phi i32 [ 1, %194 ], [ 2, %207 ], [ %211, %209 ]
  store i32 %213, ptr %191, align 4
  %214 = udiv i32 %196, %213
  %215 = and i32 %214, -2
  %216 = udiv i32 %199, %213
  %217 = and i32 %216, -2
  %218 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 8
  %219 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 8, i32 2
  store i32 %215, ptr %219, align 4
  %220 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 8, i32 3
  store i32 %217, ptr %220, align 4
  store i32 0, ptr %218, align 4
  %221 = getelementptr inbounds %struct.s5p_jpeg_ctx, ptr %0, i32 0, i32 8, i32 1
  store i32 0, ptr %221, align 4
  store i8 1, ptr %160, align 1
  br label %222

222:                                              ; preds = %212, %190, %187, %179, %176, %25, %2
  %223 = phi i32 [ -16, %25 ], [ -22, %2 ], [ 0, %212 ], [ 0, %190 ], [ 0, %187 ], [ 0, %179 ], [ 0, %176 ]
  ret i32 %223
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vidioc_try_fmt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %106 [
    i32 0, label %8
    i32 1, label %9
  ]

8:                                                ; preds = %4
  store i32 1, ptr %6, align 4
  br label %9

9:                                                ; preds = %8, %4
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 1
  %13 = load i32, ptr %5, align 4
  %14 = load i32, ptr %12, align 4
  tail call void @v4l_bound_align_image(ptr noundef %5, i32 noundef 32, i32 noundef 8192, i32 noundef 0, ptr noundef %12, i32 noundef 32, i32 noundef 8192, i32 noundef 0, i32 noundef 0) #15
  %15 = load i32, ptr %5, align 4
  %16 = icmp ult i32 %15, %13
  %17 = icmp ult i32 %15, 8191
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = add nuw nsw i32 %15, 1
  store i32 %20, ptr %5, align 4
  br label %21

21:                                               ; preds = %19, %11
  %22 = phi i32 [ %20, %19 ], [ %15, %11 ]
  %23 = load i32, ptr %12, align 4
  %24 = icmp ult i32 %23, %14
  %25 = icmp ult i32 %23, 8191
  %26 = and i1 %24, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %21
  %28 = add nuw nsw i32 %23, 1
  store i32 %28, ptr %12, align 4
  br label %67

29:                                               ; preds = %9
  %30 = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %1, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 1
  %33 = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %1, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr %5, align 4
  %36 = load i32, ptr %32, align 4
  %37 = shl nuw i32 1, %34
  %38 = load ptr, ptr %2, align 4
  %39 = getelementptr inbounds %struct.s5p_jpeg, ptr %38, i32 0, i32 11
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %40, i32 0, i32 2
  %42 = load i8, ptr %41, align 4
  %43 = and i8 %42, 1
  %44 = icmp ne i8 %43, 0
  %45 = icmp eq i32 %31, 2
  %46 = and i1 %45, %44
  %47 = and i32 %35, 3
  %48 = icmp eq i32 %47, 1
  %49 = select i1 %46, i1 %48, i1 false
  %50 = select i1 %49, i32 %36, i32 8192
  %51 = select i1 %49, i32 %35, i32 8192
  tail call void @v4l_bound_align_image(ptr noundef %5, i32 noundef 32, i32 noundef %51, i32 noundef %31, ptr noundef %32, i32 noundef 32, i32 noundef %50, i32 noundef %34, i32 noundef 0) #15
  %52 = load i32, ptr %5, align 4
  %53 = icmp ult i32 %52, %35
  br i1 %53, label %54, label %59

54:                                               ; preds = %29
  %55 = shl nuw i32 1, %31
  %56 = add i32 %52, %55
  %57 = icmp ult i32 %56, %51
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 %56, ptr %5, align 4
  br label %59

59:                                               ; preds = %58, %54, %29
  %60 = phi i32 [ %56, %58 ], [ %52, %54 ], [ %52, %29 ]
  %61 = load i32, ptr %32, align 4
  %62 = icmp ult i32 %61, %36
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = add i32 %61, %37
  %65 = icmp ult i32 %64, %50
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 %64, ptr %32, align 4
  br label %67

67:                                               ; preds = %66, %63, %59, %27, %21
  %68 = phi i32 [ %64, %66 ], [ %61, %63 ], [ %61, %59 ], [ %28, %27 ], [ %23, %21 ]
  %69 = phi i32 [ %60, %66 ], [ %60, %63 ], [ %60, %59 ], [ %22, %27 ], [ %22, %21 ]
  %70 = load i32, ptr %1, align 4
  %71 = icmp eq i32 %70, 1195724874
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 4096, ptr %73, align 4
  br label %77

77:                                               ; preds = %76, %72
  %78 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 4
  store i32 0, ptr %78, align 4
  br label %106

79:                                               ; preds = %67
  %80 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %1, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = tail call i32 @llvm.umax.i32(i32 %81, i32 %69)
  br label %98

87:                                               ; preds = %79
  %88 = icmp eq i32 %83, 1
  br i1 %88, label %89, label %98

89:                                               ; preds = %87
  %90 = shl i32 %81, 3
  %91 = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %1, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = udiv i32 %90, %92
  %94 = icmp ult i32 %93, %69
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = mul i32 %69, %92
  %97 = lshr i32 %96, 3
  br label %98

98:                                               ; preds = %95, %89, %87, %85
  %99 = phi i32 [ %97, %95 ], [ %81, %89 ], [ %81, %87 ], [ %86, %85 ]
  store i32 %99, ptr %80, align 4
  %100 = mul i32 %68, %69
  %101 = getelementptr inbounds %struct.s5p_jpeg_fmt, ptr %1, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = mul i32 %100, %102
  %104 = lshr i32 %103, 3
  %105 = getelementptr inbounds %struct.v4l2_format, ptr %0, i32 0, i32 1, i32 0, i32 5
  store i32 %104, ptr %105, align 4
  br label %106

106:                                              ; preds = %98, %77, %4
  %107 = phi i32 [ -22, %4 ], [ 0, %98 ], [ 0, %77 ]
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_src_change_event_subscribe(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_runtime_suspend(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -1
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %16

10:                                               ; preds = %10, %1
  %11 = phi i32 [ %14, %10 ], [ %8, %1 ]
  %12 = getelementptr %struct.s5p_jpeg, ptr %3, i32 0, i32 9, i32 %11
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #15
  tail call void @clk_unprepare(ptr noundef %13) #15
  %14 = add nsw i32 %11, -1
  %15 = icmp sgt i32 %11, 0
  br i1 %15, label %10, label %16

16:                                               ; preds = %10, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5p_jpeg_runtime_resume(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %28, %1
  %10 = phi i32 [ %29, %28 ], [ 0, %1 ]
  %11 = getelementptr %struct.s5p_jpeg, ptr %3, i32 0, i32 9, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_prepare(ptr noundef %12) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = tail call i32 @clk_enable(ptr noundef %12) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  tail call void @clk_unprepare(ptr noundef %12) #15
  br label %19

19:                                               ; preds = %18, %9
  %20 = phi i32 [ %16, %18 ], [ %13, %9 ]
  %21 = icmp eq i32 %10, 0
  br i1 %21, label %59, label %22

22:                                               ; preds = %22, %19
  %23 = phi i32 [ %24, %22 ], [ %10, %19 ]
  %24 = add nsw i32 %23, -1
  %25 = getelementptr %struct.s5p_jpeg, ptr %3, i32 0, i32 9, i32 %24
  %26 = load ptr, ptr %25, align 4
  tail call void @clk_disable(ptr noundef %26) #15
  tail call void @clk_unprepare(ptr noundef %26) #15
  %27 = icmp sgt i32 %23, 1
  br i1 %27, label %22, label %59

28:                                               ; preds = %15
  %29 = add nuw nsw i32 %10, 1
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %30, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %9, label %34

34:                                               ; preds = %28, %1
  %35 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 1
  %36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %35) #15
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr inbounds %struct.s5p_jpeg_variant, ptr %37, i32 0, i32 2
  %39 = load i8, ptr %38, align 4
  %40 = and i8 %39, 2
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.s5p_jpeg, ptr %3, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  tail call fastcc void @s5p_jpeg_set_hdctbl(ptr noundef %44)
  %45 = load ptr, ptr %43, align 4
  tail call fastcc void @s5p_jpeg_set_hdctblg(ptr noundef %45)
  %46 = load ptr, ptr %43, align 4
  tail call fastcc void @s5p_jpeg_set_hactbl(ptr noundef %46)
  %47 = load ptr, ptr %43, align 4
  %48 = getelementptr i8, ptr %47, i32 2240
  br label %49

49:                                               ; preds = %49, %42
  %50 = phi i32 [ 0, %42 ], [ %56, %49 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !16
  tail call void @arm_heavy_mb() #15
  %51 = getelementptr i8, ptr @hactblg0, i32 %50
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl i32 %50, 2
  %55 = getelementptr i8, ptr %48, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #15, !srcloc !14
  %56 = add nuw nsw i32 %50, 1
  %57 = icmp eq i32 %56, 162
  br i1 %57, label %58, label %49

58:                                               ; preds = %49, %34
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %36) #15
  br label %59

59:                                               ; preds = %58, %22, %19
  %60 = phi i32 [ 0, %58 ], [ %20, %19 ], [ %20, %22 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #14

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

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
!9 = !{i64 2148962440}
!10 = !{i64 2148958264}
!11 = !{i64 2148958339, i64 2148958366, i64 2148958413, i64 2148958435, i64 2148958463, i64 2148958483}
!12 = !{i64 2148985443}
!13 = !{i64 2155158468}
!14 = !{i64 3202584}
!15 = !{i8 0, i8 2}
!16 = !{i64 2155160391}
!17 = !{i64 2155163069}
!18 = !{i64 2155168175}
!19 = !{i64 2155168594}
!20 = !{i64 2155169007}
!21 = !{i64 2155169426}
!22 = !{i64 2155201996, i64 2155202505, i64 2155202033, i64 2155202089, i64 2155202123, i64 2155202147, i64 2155202188, i64 2155202209, i64 2155202237, i64 2155202271}
!23 = !{i64 2155203131, i64 2155203640, i64 2155203168, i64 2155203224, i64 2155203258, i64 2155203282, i64 2155203323, i64 2155203344, i64 2155203372, i64 2155203406}
!24 = !{i64 2148025962}
!25 = !{i64 524272, i64 2148014243, i64 2148014269, i64 2148014316, i64 2148014338, i64 2148014366, i64 2148014386}
!26 = !{i64 510841, i64 510866, i64 510888, i64 510904, i64 510916, i64 510936, i64 510960, i64 510976, i64 510988}
!27 = !{i64 2148026088}
!28 = !{!"auto-init"}
!29 = !{i64 2155172552, i64 2155173061, i64 2155172589, i64 2155172645, i64 2155172679, i64 2155172703, i64 2155172744, i64 2155172765, i64 2155172793, i64 2155172827}
!30 = !{i64 2155177505, i64 2155178014, i64 2155177542, i64 2155177598, i64 2155177632, i64 2155177656, i64 2155177697, i64 2155177718, i64 2155177746, i64 2155177780}
