; ModuleID = '/llk/IR/drivers/video/fbdev/core/fbcon.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fbcon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fbcon_update_vcs:\09\09\09\09\09"
module asm "\09.asciz \09\22fbcon_update_vcs\22\09\09\09\09\09"
module asm "__kstrtabns_fbcon_update_vcs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.vc = type { ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fbcon_display = type { ptr, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, ptr }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.consw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.68 = type { ptr }
%struct.fbcon_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.fb_var_screeninfo, %struct.timer_list, %struct.fb_cursor, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32 }
%struct.fb_cursor = type { i16, i16, i16, ptr, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.39, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.39 = type { ptr }
%struct.llist_head = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_blit_caps = type { i32, i32, i32, i32 }
%struct.fb_con2fbmap = type { i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.font_desc = type { i32, ptr, i32, i32, i32, ptr, i32 }

@__setup_str_fb_console_setup = internal constant [7 x i8] c"fbcon=\00", section ".init.rodata", align 1
@__setup_fb_console_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_fb_console_setup, ptr @fb_console_setup, i32 0 }, section ".init.setup", align 4
@vc_cons = external dso_local local_unnamed_addr global [63 x %struct.vc], align 4
@__kstrtab_fbcon_update_vcs = external dso_local constant [0 x i8], align 1
@__kstrtabns_fbcon_update_vcs = external dso_local constant [0 x i8], align 1
@__ksymtab_fbcon_update_vcs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fbcon_update_vcs to i32), ptr @__kstrtab_fbcon_update_vcs, ptr @__kstrtabns_fbcon_update_vcs }, section "___ksymtab+fbcon_update_vcs", align 4
@first_fb_vc = internal unnamed_addr global i32 0, align 4
@last_fb_vc = internal unnamed_addr global i32 62, align 4
@con2fb_map = internal unnamed_addr global [63 x i8] zeroinitializer, align 1
@registered_fb = external dso_local local_unnamed_addr global [32 x ptr], align 4
@fb_display = internal global [63 x %struct.fbcon_display] zeroinitializer, align 4
@ignore_console_lock_warning = external dso_local global %struct.atomic_t, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [33 x i8] c"drivers/video/fbdev/core/fbcon.c\00", align 1
@fbcon_has_console_bind = internal unnamed_addr global i1 false, align 4
@info_idx = internal unnamed_addr global i32 -1, align 4
@num_registered_fb = external dso_local local_unnamed_addr global i32, align 4
@fb_con = internal constant %struct.consw { ptr null, ptr @fbcon_startup, ptr @fbcon_init, ptr @fbcon_deinit, ptr @fbcon_clear, ptr @fbcon_putc, ptr @fbcon_putcs, ptr @fbcon_cursor, ptr @fbcon_scroll, ptr @fbcon_switch, ptr @fbcon_blank, ptr @fbcon_set_font, ptr @fbcon_get_font, ptr @fbcon_set_def_font, ptr @fbcon_resize, ptr @fbcon_set_palette, ptr null, ptr null, ptr null, ptr null, ptr @fbcon_invert_region, ptr @fbcon_screen_pos, ptr @fbcon_getxy, ptr null, ptr @fbcon_debug_enter, ptr @fbcon_debug_leave }, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"\016fbcon: Remapping primary device, fb%i, to tty %i-%i\0A\00", align 1
@con2fb_map_boot = internal unnamed_addr global [63 x i8] zeroinitializer, align 1
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"fb%d\00", align 1
@fb_class = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"fbcon\00", align 1
@fbcon_device = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"\014Unable to create device for fbcon; errno = %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"font:\00", align 1
@fontname = internal global [40 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"scrollback:\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"\014Ignoring scrollback size option\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"map:\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"vc:\00", align 1
@fbcon_is_default = internal unnamed_addr global i1 false, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"rotate:\00", align 1
@initial_rotation = internal unnamed_addr global i32 -1, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"margin:\00", align 1
@margin_color = internal unnamed_addr global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"logo-pos:\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@fb_center_logo = external dso_local local_unnamed_addr global i8, align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"logo-count:\00", align 1
@fb_logo_count = external dso_local local_unnamed_addr global i32, align 4
@fbcon_cursor_noblink = internal unnamed_addr global i1 false, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@console_blanked = external dso_local local_unnamed_addr global i32, align 4
@color_table = external dso_local constant [0 x i8], align 1
@palette_red = internal global [16 x i16] zeroinitializer, align 2
@palette_green = internal global [16 x i16] zeroinitializer, align 2
@palette_blue = internal global [16 x i16] zeroinitializer, align 2
@palette_cmap = internal global %struct.fb_cmap { i32 0, i32 16, ptr @palette_red, ptr @palette_green, ptr @palette_blue, ptr null }, align 4
@logo_shown = internal unnamed_addr global i32 -1, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.16 = private unnamed_addr constant [75 x i8] c"\013con2fb_init_display: detected unhandled fb_set_par error, error code %d\0A\00", align 1
@logo_lines = internal unnamed_addr global i32 0, align 4
@.str.17 = private unnamed_addr constant [65 x i8] c"\016fbcon_init: disable boot-logo (boot-logo bigger than screen).\0A\00", align 1
@.str.18 = private unnamed_addr constant [78 x i8] c"\013con2fb_release_oldinfo: detected unhandled fb_set_par error, error code %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"frame buffer device\00", align 1
@console_printk = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.23 = private unnamed_addr constant [66 x i8] c"\013fbcon_init: detected unhandled fb_set_par error, error code %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [68 x i8] c"\013fbcon_switch: detected unhandled fb_set_par error, error code %d\0A\00", align 1
@device_attrs = internal global [3 x %struct.device_attribute] [%struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420 }, ptr @show_rotate, ptr @store_rotate }, %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 128 }, ptr null, ptr @store_rotate_all }, %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420 }, ptr @show_cursor_blink, ptr @store_cursor_blink }], align 4
@.str.25 = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"rotate_all\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"cursor_blink\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_fbcon_update_vcs, ptr @__setup_fb_console_setup], section "llvm.metadata"
@switch.table.fbcon_putcs.31 = private unnamed_addr constant [9 x i32] [i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @fb_console_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  %4 = icmp eq ptr %0, null
  br i1 %4, label %122, label %5

5:                                                ; preds = %1
  %6 = load i8, ptr %0, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %122, label %8

8:                                                ; preds = %5
  %9 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.5) #20
  store ptr %9, ptr %3, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %122, label %11

11:                                               ; preds = %18, %8
  %12 = phi ptr [ %19, %18 ], [ %9, %8 ]
  %13 = call i32 @strncmp(ptr noundef nonnull %12, ptr noundef nonnull dereferenceable(6) @.str.6, i32 noundef 5)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %12, i32 5
  %17 = call i32 @strlcpy(ptr noundef nonnull @fontname, ptr noundef %16, i32 noundef 40) #20
  br label %18

18:                                               ; preds = %120, %116, %113, %112, %108, %103, %99, %95, %92, %80, %39, %29, %24, %15
  %19 = call ptr @strsep(ptr noundef nonnull %2, ptr noundef nonnull @.str.5) #20
  store ptr %19, ptr %3, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %122, label %11

21:                                               ; preds = %11
  %22 = call i32 @strncmp(ptr noundef nonnull %12, ptr noundef nonnull dereferenceable(12) @.str.7, i32 noundef 11)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #21
  br label %18

26:                                               ; preds = %21
  %27 = call i32 @strncmp(ptr noundef nonnull %12, ptr noundef nonnull dereferenceable(5) @.str.9, i32 noundef 4)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %26
  %30 = getelementptr i8, ptr %12, i32 4
  store ptr %30, ptr %3, align 4
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %18, label %33

33:                                               ; preds = %29
  %34 = load i8, ptr %30, align 1
  %35 = zext i8 %34 to i16
  %36 = add nsw i16 %35, -48
  %37 = srem i16 %36, 32
  %38 = trunc i16 %37 to i8
  store i8 %38, ptr @con2fb_map_boot, align 1
  br label %39

39:                                               ; preds = %39, %33
  %40 = phi i32 [ 1, %33 ], [ %54, %39 ]
  %41 = phi i32 [ 0, %33 ], [ %46, %39 ]
  %42 = add i32 %41, 1
  %43 = getelementptr i8, ptr %30, i32 %42
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i32 0, i32 %42
  %47 = getelementptr i8, ptr %30, i32 %46
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i16
  %50 = add nsw i16 %49, -48
  %51 = srem i16 %50, 32
  %52 = trunc i16 %51 to i8
  %53 = getelementptr [63 x i8], ptr @con2fb_map_boot, i32 0, i32 %40
  store i8 %52, ptr %53, align 1
  %54 = add nuw nsw i32 %40, 1
  %55 = icmp eq i32 %54, 63
  br i1 %55, label %18, label %39

56:                                               ; preds = %26
  %57 = call i32 @strncmp(ptr noundef nonnull %12, ptr noundef nonnull dereferenceable(4) @.str.10, i32 noundef 3)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %56
  %60 = getelementptr i8, ptr %12, i32 3
  store ptr %60, ptr %3, align 4
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = call i32 @simple_strtoul(ptr noundef %60, ptr noundef nonnull %3, i32 noundef 10) #20
  %65 = add i32 %64, -1
  store i32 %65, ptr @first_fb_vc, align 4
  br label %68

66:                                               ; preds = %59
  %67 = load i32, ptr @first_fb_vc, align 4
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi i32 [ %67, %66 ], [ %65, %63 ]
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, ptr @first_fb_vc, align 4
  br label %72

72:                                               ; preds = %71, %68
  %73 = load ptr, ptr %3, align 4
  %74 = getelementptr i8, ptr %73, i32 1
  store ptr %74, ptr %3, align 4
  %75 = load i8, ptr %73, align 1
  %76 = icmp eq i8 %75, 45
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = call i32 @simple_strtoul(ptr noundef %74, ptr noundef nonnull %3, i32 noundef 10) #20
  %79 = add i32 %78, -1
  store i32 %79, ptr @last_fb_vc, align 4
  br label %80

80:                                               ; preds = %77, %72
  store i1 true, ptr @fbcon_is_default, align 4
  br label %18

81:                                               ; preds = %56
  %82 = call i32 @strncmp(ptr noundef nonnull %12, ptr noundef nonnull dereferenceable(8) @.str.11, i32 noundef 7)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = getelementptr i8, ptr %12, i32 7
  store ptr %85, ptr %3, align 4
  %86 = load i8, ptr %85, align 1
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = call i32 @simple_strtoul(ptr noundef %85, ptr noundef nonnull %3, i32 noundef 0) #20
  store i32 %89, ptr @initial_rotation, align 4
  br label %92

90:                                               ; preds = %84
  %91 = load i32, ptr @initial_rotation, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %91, %90 ], [ %89, %88 ]
  %94 = icmp sgt i32 %93, 3
  br i1 %94, label %95, label %18

95:                                               ; preds = %92
  store i32 0, ptr @initial_rotation, align 4
  br label %18

96:                                               ; preds = %81
  %97 = call i32 @strncmp(ptr noundef nonnull %12, ptr noundef nonnull dereferenceable(8) @.str.12, i32 noundef 7)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = getelementptr i8, ptr %12, i32 7
  store ptr %100, ptr %3, align 4
  %101 = load i8, ptr %100, align 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %18, label %103

103:                                              ; preds = %99
  %104 = call i32 @simple_strtoul(ptr noundef %100, ptr noundef nonnull %3, i32 noundef 0) #20
  store i32 %104, ptr @margin_color, align 4
  br label %18

105:                                              ; preds = %96
  %106 = call i32 @strncmp(ptr noundef nonnull %12, ptr noundef nonnull dereferenceable(10) @.str.13, i32 noundef 9)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = getelementptr i8, ptr %12, i32 9
  store ptr %109, ptr %3, align 4
  %110 = call i32 @strcmp(ptr noundef %109, ptr noundef nonnull dereferenceable(7) @.str.14)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %18

112:                                              ; preds = %108
  store i8 1, ptr @fb_center_logo, align 1
  br label %18

113:                                              ; preds = %105
  %114 = call i32 @strncmp(ptr noundef nonnull %12, ptr noundef nonnull dereferenceable(12) @.str.15, i32 noundef 11)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %18

116:                                              ; preds = %113
  %117 = getelementptr i8, ptr %12, i32 11
  store ptr %117, ptr %3, align 4
  %118 = load i8, ptr %117, align 1
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %18, label %120

120:                                              ; preds = %116
  %121 = call i32 @simple_strtol(ptr noundef %117, ptr noundef nonnull %3, i32 noundef 0) #20
  store i32 %121, ptr @fb_logo_count, align 4
  br label %18

122:                                              ; preds = %18, %8, %5, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fbcon_suspended(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 28
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %7
  %11 = load ptr, ptr %10, align 4
  tail call void @fbcon_cursor(ptr noundef %11, i32 noundef 2)
  br label %12

12:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fbcon_cursor(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = sext i8 %7 to i32
  %9 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 28
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  %14 = load i32, ptr %13, align 4
  %15 = inttoptr i32 %14 to ptr
  %16 = load i16, ptr %15, align 2
  %17 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 46
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = tail call i32 @__msecs_to_jiffies(i32 noundef %19) #20
  %21 = getelementptr inbounds %struct.fbcon_ops, ptr %12, i32 0, i32 13
  store i32 %20, ptr %21, align 4
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 27
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %190

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %190

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.fbcon_ops, ptr %22, i32 0, i32 17
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %190

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %36 = load i16, ptr %35, align 4
  %37 = and i16 %36, 32
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %190, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 23
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 9, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, @fb_flashcursor
  br i1 %47, label %48, label %85

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.fbcon_ops, ptr %22, i32 0, i32 19
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %85, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.fbcon_ops, ptr %22, i32 0, i32 8
  %55 = tail call i32 @del_timer_sync(ptr noundef %54) #20
  %56 = load i32, ptr %49, align 4
  %57 = and i32 %56, -3
  store i32 %57, ptr %49, align 4
  br label %85

58:                                               ; preds = %39
  %59 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 9
  %60 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 9, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  %63 = icmp eq ptr %61, @fb_flashcursor
  %64 = or i1 %62, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.fbcon_ops, ptr %22, i32 0, i32 19
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 2
  %69 = icmp ne i32 %68, 0
  %70 = load i1, ptr @fbcon_cursor_noblink, align 4
  %71 = select i1 %69, i1 true, i1 %70
  br i1 %71, label %85, label %72

72:                                               ; preds = %65
  br i1 %62, label %73, label %76

73:                                               ; preds = %72
  store i32 -32, ptr %59, align 4
  %74 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 9, i32 1
  store volatile ptr %74, ptr %74, align 4
  %75 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 9, i32 1, i32 1
  store ptr %74, ptr %75, align 4
  store ptr @fb_flashcursor, ptr %60, align 4
  br label %76

76:                                               ; preds = %73, %72
  %77 = getelementptr inbounds %struct.fbcon_ops, ptr %22, i32 0, i32 8
  tail call void @init_timer_key(ptr noundef %77, ptr noundef nonnull @cursor_timer_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #20
  %78 = load volatile i32, ptr @jiffies, align 64
  %79 = getelementptr inbounds %struct.fbcon_ops, ptr %22, i32 0, i32 13
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, %78
  %82 = tail call i32 @mod_timer(ptr noundef %77, i32 noundef %81) #20
  %83 = load i32, ptr %66, align 4
  %84 = or i32 %83, 2
  store i32 %84, ptr %66, align 4
  br label %85

85:                                               ; preds = %76, %65, %58, %53, %48, %44
  %86 = icmp ne i32 %1, 2
  %87 = zext i1 %86 to i32
  %88 = getelementptr inbounds %struct.fbcon_ops, ptr %12, i32 0, i32 14
  store i32 %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.fbcon_ops, ptr %12, i32 0, i32 4
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %190, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 6
  %94 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 7
  %95 = tail call i32 @fb_get_color_depth(ptr noundef %93, ptr noundef %94) #20
  %96 = load i32, ptr @console_blanked, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %100 = load i16, ptr %99, align 4
  %101 = icmp eq i16 %100, 0
  %102 = select i1 %101, i16 255, i16 511
  %103 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %104 = load i16, ptr %103, align 4
  %105 = and i16 %102, %104
  br label %106

106:                                              ; preds = %98, %92
  %107 = phi i16 [ %105, %98 ], [ %16, %92 ]
  %108 = icmp eq i32 %95, 1
  br i1 %108, label %117, label %109

109:                                              ; preds = %106
  %110 = zext i16 %107 to i32
  %111 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %112 = load i16, ptr %111, align 4
  %113 = icmp eq i16 %112, 0
  %114 = select i1 %113, i32 8, i32 9
  %115 = lshr i32 %110, %114
  %116 = and i32 %115, 15
  switch i32 %95, label %142 [
    i32 3, label %137
    i32 2, label %135
  ]

117:                                              ; preds = %106
  %118 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 6, i32 9, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 6, i32 8, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = tail call i32 @llvm.umax.i32(i32 %119, i32 %121) #20
  %123 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 6, i32 10, i32 1
  %124 = load i32, ptr %123, align 4
  %125 = tail call i32 @llvm.umax.i32(i32 %124, i32 %122) #20
  %126 = shl i32 4095, %125
  %127 = and i32 %126, 255
  %128 = xor i32 %127, 255
  %129 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 7, i32 5
  %130 = load i32, ptr %129, align 4
  %131 = icmp eq i32 %130, 0
  %132 = select i1 %131, i32 0, i32 %128
  %133 = select i1 %131, i32 %128, i32 0
  %134 = select i1 %97, i32 %132, i32 %133
  br label %142

135:                                              ; preds = %109
  %136 = icmp ult i32 %116, 9
  br i1 %136, label %139, label %142

137:                                              ; preds = %109
  %138 = and i32 %115, 7
  br label %142

139:                                              ; preds = %135
  %140 = getelementptr inbounds [9 x i32], ptr @switch.table.fbcon_putcs.31, i32 0, i32 %116
  %141 = load i32, ptr %140, align 4
  br label %142

142:                                              ; preds = %139, %137, %135, %117, %109
  %143 = phi i32 [ %116, %109 ], [ %138, %137 ], [ %134, %117 ], [ %141, %139 ], [ 3, %135 ]
  %144 = tail call i32 @fb_get_color_depth(ptr noundef %93, ptr noundef %94) #20
  %145 = load i32, ptr @console_blanked, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %149 = load i16, ptr %148, align 4
  %150 = icmp eq i16 %149, 0
  %151 = select i1 %150, i16 255, i16 511
  %152 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %153 = load i16, ptr %152, align 4
  %154 = and i16 %151, %153
  br label %155

155:                                              ; preds = %147, %142
  %156 = phi i16 [ %154, %147 ], [ %16, %142 ]
  %157 = icmp eq i32 %144, 1
  br i1 %157, label %165, label %158

158:                                              ; preds = %155
  %159 = zext i16 %156 to i32
  %160 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %161 = load i16, ptr %160, align 4
  %162 = icmp eq i16 %161, 0
  %163 = select i1 %162, i32 12, i32 13
  %164 = lshr i32 %159, %163
  switch i32 %144, label %188 [
    i32 3, label %183
    i32 2, label %181
  ]

165:                                              ; preds = %155
  %166 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 6, i32 9, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 6, i32 8, i32 1
  %169 = load i32, ptr %168, align 4
  %170 = tail call i32 @llvm.umax.i32(i32 %167, i32 %169) #20
  %171 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 6, i32 10, i32 1
  %172 = load i32, ptr %171, align 4
  %173 = tail call i32 @llvm.umax.i32(i32 %172, i32 %170) #20
  %174 = shl i32 4095, %173
  %175 = and i32 %174, 255
  %176 = xor i32 %175, 255
  %177 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 7, i32 5
  %178 = load i32, ptr %177, align 4
  %179 = icmp eq i32 %178, 0
  %180 = select i1 %179, i32 %176, i32 0
  br label %188

181:                                              ; preds = %158
  %182 = icmp ult i32 %164, 9
  br i1 %182, label %185, label %188

183:                                              ; preds = %158
  %184 = and i32 %164, 7
  br label %188

185:                                              ; preds = %181
  %186 = getelementptr inbounds [9 x i32], ptr @switch.table.fbcon_putcs.31, i32 0, i32 %164
  %187 = load i32, ptr %186, align 4
  br label %188

188:                                              ; preds = %185, %183, %181, %165, %158
  %189 = phi i32 [ %164, %158 ], [ %184, %183 ], [ %180, %165 ], [ %187, %185 ], [ 3, %181 ]
  tail call void %90(ptr noundef %0, ptr noundef %10, i32 noundef %1, i32 noundef %143, i32 noundef %189) #20
  br label %190

190:                                              ; preds = %188, %85, %34, %30, %26, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fbcon_resumed(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 28
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %7
  %11 = load ptr, ptr %10, align 4
  tail call void @redraw_screen(ptr noundef %11, i32 noundef 0) #20
  br label %12

12:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @redraw_screen(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fbcon_update_vcs(ptr noundef %0, i1 noundef zeroext %1) #1 {
  br i1 %1, label %3, label %4

3:                                                ; preds = %2
  tail call fastcc void @fbcon_set_all_vcs(ptr noundef %0)
  br label %5

4:                                                ; preds = %2
  tail call fastcc void @fbcon_modechanged(ptr noundef %0)
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fbcon_set_all_vcs(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 28
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %124, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %124, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr @first_fb_vc, align 4
  %11 = load i32, ptr @last_fb_vc, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %124, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 2
  %15 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 2
  %17 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 3
  %18 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 6
  %19 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 7
  %20 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 12
  %21 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 16
  %22 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 14
  %23 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 15
  %24 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 8
  %25 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 9
  %26 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 10
  %27 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 11
  %28 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 26
  %29 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 13
  %30 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 1
  %31 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 20
  br label %32

32:                                               ; preds = %116, %13
  %33 = phi i32 [ -1, %13 ], [ %117, %116 ]
  %34 = phi i32 [ %10, %13 ], [ %118, %116 ]
  %35 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %34
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %116, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.vc_data, ptr %36, i32 0, i32 17
  %40 = load i8, ptr %39, align 4
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %116

42:                                               ; preds = %38
  %43 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %34
  %44 = load i8, ptr %43, align 1
  %45 = sext i8 %44 to i32
  %46 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %45
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %0
  br i1 %48, label %49, label %116

49:                                               ; preds = %42
  %50 = tail call zeroext i1 @con_is_visible(ptr noundef nonnull %36) #20
  br i1 %50, label %116, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.vc_data, ptr %36, i32 0, i32 3
  %53 = load i16, ptr %52, align 4
  %54 = zext i16 %53 to i32
  %55 = load ptr, ptr %2, align 4
  %56 = load i32, ptr %14, align 4
  %57 = and i32 %56, -131073
  store i32 %57, ptr %14, align 4
  %58 = load i16, ptr %52, align 4
  %59 = zext i16 %58 to i32
  %60 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %59
  %61 = getelementptr inbounds %struct.fbcon_ops, ptr %55, i32 0, i32 10
  store ptr %60, ptr %61, align 4
  %62 = load ptr, ptr %2, align 4
  %63 = load i32, ptr %14, align 4
  %64 = and i32 %63, 131072
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %51
  %67 = getelementptr inbounds %struct.fbcon_ops, ptr %62, i32 0, i32 10
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.fbcon_display, ptr %68, i32 0, i32 6
  %70 = load i32, ptr %69, align 4
  %71 = icmp slt i32 %70, 4
  br i1 %71, label %73, label %72

72:                                               ; preds = %66, %51
  br label %73

73:                                               ; preds = %72, %66
  %74 = phi i32 [ 0, %72 ], [ %70, %66 ]
  %75 = getelementptr inbounds %struct.fbcon_ops, ptr %62, i32 0, i32 20
  store i32 %74, ptr %75, align 4
  tail call void @fbcon_set_bitops(ptr noundef %55) #20
  %76 = load i32, ptr %16, align 4
  %77 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %54, i32 7
  store i32 %76, ptr %77, align 4
  %78 = load i32, ptr %17, align 4
  %79 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %54, i32 8
  store i32 %78, ptr %79, align 4
  %80 = load i32, ptr %18, align 4
  %81 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %54, i32 11
  store i32 %80, ptr %81, align 4
  %82 = load i32, ptr %19, align 4
  %83 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %54, i32 12
  store i32 %82, ptr %83, align 4
  %84 = load i32, ptr %20, align 4
  %85 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %54, i32 13
  store i32 %84, ptr %85, align 4
  %86 = load i32, ptr %21, align 4
  %87 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %54, i32 14
  store i32 %86, ptr %87, align 4
  %88 = load i32, ptr %22, align 4
  %89 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %54, i32 9
  store i32 %88, ptr %89, align 4
  %90 = load i32, ptr %23, align 4
  %91 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %54, i32 10
  store i32 %90, ptr %91, align 4
  %92 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %54, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %92, ptr noundef align 4 dereferenceable(12) %24, i32 12, i1 false) #20
  %93 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %54, i32 17
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %93, ptr noundef align 4 dereferenceable(12) %25, i32 12, i1 false) #20
  %94 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %54, i32 18
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %94, ptr noundef align 4 dereferenceable(12) %26, i32 12, i1 false) #20
  %95 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %54, i32 19
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %95, ptr noundef align 4 dereferenceable(12) %27, i32 12, i1 false) #20
  %96 = load i32, ptr %28, align 4
  %97 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %54, i32 15
  store i32 %96, ptr %97, align 4
  %98 = tail call ptr @fb_match_mode(ptr noundef %15, ptr noundef %29) #20
  %99 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %54, i32 20
  store ptr %98, ptr %99, align 4
  %100 = load i32, ptr %15, align 4
  %101 = load i32, ptr %30, align 4
  %102 = load i32, ptr %31, align 4
  switch i32 %102, label %103 [
    i32 0, label %104
    i32 2, label %104
  ]

103:                                              ; preds = %73
  br label %104

104:                                              ; preds = %103, %73, %73
  %105 = phi i32 [ %101, %103 ], [ %100, %73 ], [ %100, %73 ]
  switch i32 %102, label %106 [
    i32 0, label %107
    i32 2, label %107
  ]

106:                                              ; preds = %104
  br label %107

107:                                              ; preds = %106, %104, %104
  %108 = phi i32 [ %100, %106 ], [ %101, %104 ], [ %101, %104 ]
  %109 = getelementptr inbounds %struct.vc_data, ptr %36, i32 0, i32 28
  %110 = load i32, ptr %109, align 4
  %111 = udiv i32 %105, %110
  %112 = getelementptr inbounds %struct.vc_data, ptr %36, i32 0, i32 28, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = udiv i32 %108, %113
  %115 = tail call i32 @vc_resize(ptr noundef nonnull %36, i32 noundef %111, i32 noundef %114) #20
  br label %116

116:                                              ; preds = %107, %49, %42, %38, %32
  %117 = phi i32 [ %33, %38 ], [ %33, %42 ], [ %33, %107 ], [ %33, %32 ], [ %34, %49 ]
  %118 = add i32 %34, 1
  %119 = load i32, ptr @last_fb_vc, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %32

121:                                              ; preds = %116
  %122 = icmp eq i32 %117, -1
  br i1 %122, label %124, label %123

123:                                              ; preds = %121
  tail call fastcc void @fbcon_modechanged(ptr noundef %0)
  br label %124

124:                                              ; preds = %123, %121, %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fbcon_modechanged(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 28
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %162, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %162, label %9

9:                                                ; preds = %5
  %10 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.vc_data, ptr %11, i32 0, i32 17
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %162

15:                                               ; preds = %9
  %16 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %7
  %17 = load i8, ptr %16, align 1
  %18 = sext i8 %17 to i32
  %19 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %162

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.vc_data, ptr %11, i32 0, i32 3
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, -131073
  store i32 %28, ptr %26, align 4
  %29 = load i16, ptr %23, align 4
  %30 = zext i16 %29 to i32
  %31 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %30
  %32 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 10
  store ptr %31, ptr %32, align 4
  %33 = load ptr, ptr %2, align 4
  %34 = load i32, ptr %26, align 4
  %35 = and i32 %34, 131072
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.fbcon_ops, ptr %33, i32 0, i32 10
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.fbcon_display, ptr %39, i32 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %44, label %43

43:                                               ; preds = %37, %22
  br label %44

44:                                               ; preds = %43, %37
  %45 = phi i32 [ 0, %43 ], [ %41, %37 ]
  %46 = getelementptr inbounds %struct.fbcon_ops, ptr %33, i32 0, i32 20
  store i32 %45, ptr %46, align 4
  tail call void @fbcon_set_bitops(ptr noundef nonnull %3) #20
  %47 = tail call zeroext i1 @con_is_visible(ptr noundef %11) #20
  br i1 %47, label %48, label %162

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6
  %50 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %25, i32 7
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %25, i32 8
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %25, i32 11
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %25, i32 12
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 12
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %25, i32 13
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 16
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %25, i32 14
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 14
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %25, i32 9
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 15
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %25, i32 10
  store i32 %72, ptr %73, align 4
  %74 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %25, i32 16
  %75 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %74, ptr noundef align 4 dereferenceable(12) %75, i32 12, i1 false) #20
  %76 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %25, i32 17
  %77 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %76, ptr noundef align 4 dereferenceable(12) %77, i32 12, i1 false) #20
  %78 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %25, i32 18
  %79 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %78, ptr noundef align 4 dereferenceable(12) %79, i32 12, i1 false) #20
  %80 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %25, i32 19
  %81 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %80, ptr noundef align 4 dereferenceable(12) %81, i32 12, i1 false) #20
  %82 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 26
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %25, i32 15
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 13
  %86 = tail call ptr @fb_match_mode(ptr noundef %49, ptr noundef %85) #20
  %87 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %25, i32 20
  store ptr %86, ptr %87, align 4
  %88 = load i32, ptr %49, align 4
  %89 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 20
  %92 = load i32, ptr %91, align 4
  switch i32 %92, label %93 [
    i32 0, label %94
    i32 2, label %94
  ]

93:                                               ; preds = %48
  br label %94

94:                                               ; preds = %93, %48, %48
  %95 = phi i32 [ %90, %93 ], [ %88, %48 ], [ %88, %48 ]
  switch i32 %92, label %96 [
    i32 0, label %97
    i32 2, label %97
  ]

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %96, %94, %94
  %98 = phi i32 [ %88, %96 ], [ %90, %94 ], [ %90, %94 ]
  %99 = getelementptr inbounds %struct.vc_data, ptr %11, i32 0, i32 28
  %100 = load i32, ptr %99, align 4
  %101 = udiv i32 %95, %100
  %102 = getelementptr inbounds %struct.vc_data, ptr %11, i32 0, i32 28, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = udiv i32 %98, %103
  %105 = tail call i32 @vc_resize(ptr noundef %11, i32 noundef %101, i32 noundef %104) #20
  %106 = load ptr, ptr %2, align 4
  %107 = load i32, ptr %102, align 4
  %108 = getelementptr inbounds %struct.fbcon_ops, ptr %106, i32 0, i32 20
  %109 = load i32, ptr %108, align 4
  switch i32 %109, label %110 [
    i32 0, label %111
    i32 2, label %111
  ]

110:                                              ; preds = %97
  br label %111

111:                                              ; preds = %110, %97, %97
  %112 = phi ptr [ %49, %110 ], [ %89, %97 ], [ %89, %97 ]
  %113 = load i32, ptr %112, align 4
  switch i32 %109, label %114 [
    i32 0, label %115
    i32 2, label %115
  ]

114:                                              ; preds = %111
  br label %115

115:                                              ; preds = %114, %111, %111
  %116 = phi ptr [ %50, %114 ], [ %53, %111 ], [ %53, %111 ]
  %117 = load i32, ptr %116, align 4
  %118 = freeze i32 %117
  %119 = freeze i32 %107
  %120 = sdiv i32 %118, %119
  %121 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %25, i32 4
  store i32 %120, ptr %121, align 4
  %122 = getelementptr inbounds %struct.vc_data, ptr %11, i32 0, i32 5
  %123 = load i32, ptr %122, align 4
  %124 = add i32 %123, 1
  %125 = mul i32 %124, %107
  %126 = icmp ugt i32 %113, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %115
  %128 = mul i32 %123, %107
  %129 = sub i32 %113, %128
  %130 = udiv i32 %129, %107
  %131 = sub i32 %120, %130
  store i32 %131, ptr %121, align 4
  br label %132

132:                                              ; preds = %127, %115
  %133 = phi i32 [ %131, %127 ], [ %120, %115 ]
  %134 = srem i32 %113, %107
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %132
  %137 = mul i32 %120, %119
  %138 = sub i32 %118, %137
  %139 = icmp slt i32 %138, %134
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = add i32 %133, -1
  store i32 %141, ptr %121, align 4
  br label %142

142:                                              ; preds = %140, %136, %132
  %143 = load ptr, ptr %2, align 4
  %144 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 27
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %142
  %148 = load i8, ptr %12, align 4
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.fbcon_ops, ptr %143, i32 0, i32 17
  %152 = load i32, ptr %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %150
  %155 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %25, i32 3
  store i16 0, ptr %155, align 2
  %156 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 7, i32 5
  store i32 0, ptr %156, align 4
  %157 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 7, i32 4
  store i32 0, ptr %157, align 4
  %158 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 5
  %159 = load ptr, ptr %158, align 4
  %160 = tail call i32 %159(ptr noundef %0) #20
  br label %161

161:                                              ; preds = %154, %150, %147, %142
  tail call void @fbcon_set_palette(ptr noundef %11, ptr noundef nonnull @color_table)
  tail call void @redraw_screen(ptr noundef %11, i32 noundef 0) #20
  br label %162

162:                                              ; preds = %161, %44, %15, %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fbcon_mode_deleted(ptr noundef readnone %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr @first_fb_vc, align 4
  %4 = load i32, ptr @last_fb_vc, align 4
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %33, label %6

6:                                                ; preds = %29, %2
  %7 = phi i32 [ %30, %29 ], [ %4, %2 ]
  %8 = phi i32 [ %31, %29 ], [ %3, %2 ]
  %9 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, -1
  br i1 %11, label %29, label %12

12:                                               ; preds = %6
  %13 = sext i8 %10 to i32
  %14 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ne ptr %15, %0
  %17 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8
  %18 = icmp eq ptr %17, null
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %12
  %21 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 20
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @fb_mode_is_equal(ptr noundef nonnull %22, ptr noundef %1) #20
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, ptr @last_fb_vc, align 4
  br label %29

29:                                               ; preds = %27, %20, %12, %6
  %30 = phi i32 [ %28, %27 ], [ %7, %20 ], [ %7, %12 ], [ %7, %6 ]
  %31 = add i32 %8, 1
  %32 = icmp sgt i32 %31, %30
  br i1 %32, label %33, label %6

33:                                               ; preds = %29, %24, %2
  %34 = phi i32 [ 0, %2 ], [ 1, %24 ], [ 0, %29 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_mode_is_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fbcon_fb_unbind(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = tail call i32 @is_console_locked() #20
  %8 = icmp eq i32 %7, 0
  %9 = load i32, ptr @oops_in_progress, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2792, i32 noundef 9, ptr noundef null) #20
  br label %13

13:                                               ; preds = %12, %6, %1
  %14 = load i1, ptr @fbcon_has_console_bind, align 4
  br i1 %14, label %15, label %93

15:                                               ; preds = %13
  %16 = load i32, ptr @first_fb_vc, align 4
  %17 = load i32, ptr @last_fb_vc, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %84, label %22

19:                                               ; preds = %22
  %20 = add i32 %23, 1
  %21 = icmp sgt i32 %20, %17
  br i1 %21, label %46, label %22

22:                                               ; preds = %19, %15
  %23 = phi i32 [ %20, %19 ], [ %16, %15 ]
  %24 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %3, %26
  %28 = icmp eq i8 %25, -1
  %29 = or i1 %28, %27
  br i1 %29, label %19, label %30

30:                                               ; preds = %22
  %31 = sext i8 %25 to i32
  br label %32

32:                                               ; preds = %42, %30
  %33 = phi i32 [ %43, %42 ], [ %17, %30 ]
  %34 = phi i32 [ %44, %42 ], [ %16, %30 ]
  %35 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %34
  %36 = load i8, ptr %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %3, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = tail call fastcc i32 @set_con2fb_map(i32 noundef %34, i32 noundef %31, i32 noundef 0)
  %41 = load i32, ptr @last_fb_vc, align 4
  br label %42

42:                                               ; preds = %39, %32
  %43 = phi i32 [ %33, %32 ], [ %41, %39 ]
  %44 = add i32 %34, 1
  %45 = icmp sgt i32 %44, %43
  br i1 %45, label %93, label %32

46:                                               ; preds = %19
  %47 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %3
  %48 = load ptr, ptr %47, align 4
  br i1 %18, label %84, label %49

49:                                               ; preds = %78, %46
  %50 = phi i32 [ %79, %78 ], [ %17, %46 ]
  %51 = phi i32 [ %80, %78 ], [ %16, %46 ]
  %52 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %51
  %53 = load i8, ptr %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %3, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %49
  store i8 -1, ptr %52, align 1
  %57 = load i32, ptr @first_fb_vc, align 4
  %58 = icmp sgt i32 %57, %50
  br i1 %58, label %71, label %59

59:                                               ; preds = %59, %56
  %60 = phi i32 [ %66, %59 ], [ 0, %56 ]
  %61 = phi i32 [ %67, %59 ], [ %57, %56 ]
  %62 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %61
  %63 = load i8, ptr %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %3, %64
  %66 = select i1 %65, i32 1, i32 %60
  %67 = add i32 %61, 1
  %68 = icmp sgt i32 %67, %50
  br i1 %68, label %69, label %59

69:                                               ; preds = %59
  %70 = icmp eq i32 %66, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %69, %56
  %72 = tail call fastcc i32 @con2fb_release_oldinfo(ptr noundef %48, ptr noundef null, i32 noundef %51, i32 noundef %3, i32 noundef 0)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, ptr @last_fb_vc, align 4
  br label %78

76:                                               ; preds = %71
  %77 = trunc i32 %3 to i8
  store i8 %77, ptr %52, align 1
  br label %93

78:                                               ; preds = %74, %69, %49
  %79 = phi i32 [ %75, %74 ], [ %50, %49 ], [ %50, %69 ]
  %80 = add i32 %51, 1
  %81 = icmp sgt i32 %80, %79
  br i1 %81, label %82, label %49

82:                                               ; preds = %78
  %83 = load i32, ptr @first_fb_vc, align 4
  br label %84

84:                                               ; preds = %82, %46, %15
  %85 = phi i32 [ %16, %46 ], [ %83, %82 ], [ %16, %15 ]
  %86 = phi i32 [ %17, %46 ], [ %79, %82 ], [ %17, %15 ]
  %87 = load i1, ptr @fbcon_is_default, align 4
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = tail call i32 @do_unbind_con_driver(ptr noundef nonnull @fb_con, i32 noundef %85, i32 noundef %86, i32 noundef %89) #20
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i1 false, ptr @fbcon_has_console_bind, align 4
  br label %93

93:                                               ; preds = %92, %84, %76, %42, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_console_locked() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_con2fb_map(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %0
  %7 = load i8, ptr %6, align 1
  %8 = sext i8 %7 to i32
  %9 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %1
  %10 = load ptr, ptr %9, align 4
  %11 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = tail call i32 @is_console_locked() #20
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr @oops_in_progress, align 4
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 842, i32 noundef 9, ptr noundef null) #20
  br label %20

20:                                               ; preds = %19, %13, %3
  %21 = icmp eq i32 %8, %1
  br i1 %21, label %201, label %22

22:                                               ; preds = %20
  %23 = icmp eq ptr %10, null
  br i1 %23, label %201, label %24

24:                                               ; preds = %22
  %25 = load i32, ptr @first_fb_vc, align 4
  %26 = load i32, ptr @last_fb_vc, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %42, label %28

28:                                               ; preds = %28, %24
  %29 = phi i32 [ %34, %28 ], [ 0, %24 ]
  %30 = phi i32 [ %35, %28 ], [ %25, %24 ]
  %31 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %30
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, -1
  %34 = select i1 %33, i32 %29, i32 1
  %35 = add i32 %30, 1
  %36 = icmp sgt i32 %35, %26
  br i1 %36, label %37, label %28

37:                                               ; preds = %28
  %38 = icmp eq i32 %34, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = tail call i32 @con_is_bound(ptr noundef nonnull @fb_con) #20
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %39, %37, %24
  store i32 %1, ptr @info_idx, align 4
  %43 = load i32, ptr @num_registered_fb, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %201, label %45

45:                                               ; preds = %42
  store i32 -3, ptr @logo_shown, align 4
  %46 = load i32, ptr @first_fb_vc, align 4
  %47 = load i32, ptr @last_fb_vc, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  %50 = trunc i32 %1 to i8
  br label %51

51:                                               ; preds = %51, %49
  %52 = phi i32 [ %46, %49 ], [ %54, %51 ]
  %53 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %52
  store i8 %50, ptr %53, align 1
  %54 = add i32 %52, 1
  %55 = icmp sgt i32 %54, %47
  br i1 %55, label %56, label %51

56:                                               ; preds = %51, %45
  %57 = load i1, ptr @fbcon_is_default, align 4
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = tail call i32 @do_take_over_console(ptr noundef nonnull @fb_con, i32 noundef %46, i32 noundef %47, i32 noundef %59) #20
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %56
  %63 = load i32, ptr @first_fb_vc, align 4
  %64 = load i32, ptr @last_fb_vc, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %66, %62
  %67 = phi i32 [ %69, %66 ], [ %63, %62 ]
  %68 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %67
  store i8 -1, ptr %68, align 1
  %69 = add i32 %67, 1
  %70 = icmp sgt i32 %69, %64
  br i1 %70, label %71, label %66

71:                                               ; preds = %66, %62
  store i32 -1, ptr @info_idx, align 4
  br label %201

72:                                               ; preds = %56
  store i1 true, ptr @fbcon_has_console_bind, align 4
  br label %201

73:                                               ; preds = %39
  %74 = icmp eq i8 %7, -1
  br i1 %74, label %78, label %75

75:                                               ; preds = %73
  %76 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %8
  %77 = load ptr, ptr %76, align 4
  br label %78

78:                                               ; preds = %75, %73
  %79 = phi ptr [ %77, %75 ], [ null, %73 ]
  %80 = load i32, ptr @first_fb_vc, align 4
  %81 = load i32, ptr @last_fb_vc, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = trunc i32 %1 to i8
  store i8 %84, ptr %6, align 1
  br label %98

85:                                               ; preds = %85, %78
  %86 = phi i32 [ %92, %85 ], [ 0, %78 ]
  %87 = phi i32 [ %93, %85 ], [ %80, %78 ]
  %88 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %87
  %89 = load i8, ptr %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, %1
  %92 = select i1 %91, i32 1, i32 %86
  %93 = add i32 %87, 1
  %94 = icmp sgt i32 %93, %81
  br i1 %94, label %95, label %85

95:                                               ; preds = %85
  %96 = trunc i32 %1 to i8
  store i8 %96, ptr %6, align 1
  %97 = icmp eq i32 %92, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95, %83
  %99 = phi i8 [ %84, %83 ], [ %96, %95 ]
  %100 = tail call fastcc i32 @con2fb_acquire_newinfo(ptr noundef %5, ptr noundef nonnull %10, i32 noundef %0, i32 noundef %8)
  br label %101

101:                                              ; preds = %98, %95
  %102 = phi i1 [ false, %95 ], [ true, %98 ]
  %103 = phi i8 [ %96, %95 ], [ %99, %98 ]
  %104 = phi i32 [ %92, %95 ], [ 0, %98 ]
  %105 = phi i32 [ 0, %95 ], [ %100, %98 ]
  %106 = icmp eq i32 %105, 0
  %107 = icmp ne ptr %79, null
  %108 = select i1 %106, i1 %107, i1 false
  br i1 %108, label %109, label %126

109:                                              ; preds = %101
  %110 = load i32, ptr @first_fb_vc, align 4
  %111 = load i32, ptr @last_fb_vc, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %124, label %113

113:                                              ; preds = %113, %109
  %114 = phi i32 [ %119, %113 ], [ 0, %109 ]
  %115 = phi i32 [ %120, %113 ], [ %110, %109 ]
  %116 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %115
  %117 = load i8, ptr %116, align 1
  %118 = icmp eq i8 %117, %7
  %119 = select i1 %118, i32 1, i32 %114
  %120 = add i32 %115, 1
  %121 = icmp sgt i32 %120, %111
  br i1 %121, label %122, label %113

122:                                              ; preds = %113
  %123 = icmp eq i32 %119, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %122, %109
  %125 = tail call fastcc i32 @con2fb_release_oldinfo(ptr noundef nonnull %79, ptr noundef nonnull %10, i32 noundef %0, i32 noundef %8, i32 noundef %104)
  br label %126

126:                                              ; preds = %124, %101
  %127 = phi i32 [ %125, %124 ], [ %105, %101 ]
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %182

129:                                              ; preds = %126, %122
  %130 = load i32, ptr @fg_console, align 4
  %131 = or i32 %130, %2
  %132 = icmp ne i32 %131, 0
  %133 = load i32, ptr @logo_shown, align 4
  %134 = icmp eq i32 %133, -3
  %135 = select i1 %132, i1 true, i1 %134
  br i1 %102, label %136, label %138

136:                                              ; preds = %129
  tail call fastcc void @fbcon_add_cursor_timer(ptr noundef nonnull %10)
  %137 = load i32, ptr @fg_console, align 4
  br label %138

138:                                              ; preds = %136, %129
  %139 = phi i32 [ %137, %136 ], [ %130, %129 ]
  %140 = getelementptr [63 x i8], ptr @con2fb_map_boot, i32 0, i32 %0
  store i8 %103, ptr %140, align 1
  %141 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 28
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.fbcon_ops, ptr %142, i32 0, i32 12
  store i32 %139, ptr %143, align 4
  %144 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 20
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.fb_ops, ptr %145, i32 0, i32 6
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %159, label %149

149:                                              ; preds = %138
  %150 = getelementptr inbounds %struct.fbcon_ops, ptr %142, i32 0, i32 19
  %151 = load i32, ptr %150, align 4
  %152 = and i32 %151, 1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = tail call i32 %147(ptr noundef nonnull %10) #20
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %154
  %158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %155) #21
  br label %159

159:                                              ; preds = %157, %154, %149, %138
  %160 = getelementptr inbounds %struct.fbcon_ops, ptr %142, i32 0, i32 19
  %161 = load i32, ptr %160, align 4
  %162 = or i32 %161, 1
  store i32 %162, ptr %160, align 4
  %163 = getelementptr inbounds %struct.fbcon_ops, ptr %142, i32 0, i32 17
  store i32 0, ptr %163, align 4
  %164 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 6
  tail call fastcc void @fbcon_set_disp(ptr noundef nonnull %10, ptr noundef %164, i32 noundef %0) #20
  br i1 %135, label %178, label %165

165:                                              ; preds = %159
  %166 = load i32, ptr @fg_console, align 4
  %167 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %166
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %166
  %170 = load i8, ptr %169, align 1
  %171 = sext i8 %170 to i32
  %172 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %171
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.vc_data, ptr %168, i32 0, i32 4
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr inbounds %struct.vc_data, ptr %168, i32 0, i32 5
  %177 = load i32, ptr %176, align 4
  tail call fastcc void @fbcon_prepare_logo(ptr noundef %168, ptr noundef %173, i32 noundef %175, i32 noundef %177, i32 noundef %175, i32 noundef %177) #20
  br label %178

178:                                              ; preds = %165, %159
  %179 = load i32, ptr @fg_console, align 4
  %180 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %179
  %181 = load ptr, ptr %180, align 4
  tail call void @redraw_screen(ptr noundef %181, i32 noundef 0) #20
  br label %182

182:                                              ; preds = %178, %126
  %183 = phi i32 [ 0, %178 ], [ %127, %126 ]
  %184 = load i32, ptr @info_idx, align 4
  %185 = load i32, ptr @first_fb_vc, align 4
  %186 = load i32, ptr @last_fb_vc, align 4
  %187 = icmp sgt i32 %185, %186
  br i1 %187, label %200, label %188

188:                                              ; preds = %188, %182
  %189 = phi i32 [ %195, %188 ], [ 0, %182 ]
  %190 = phi i32 [ %196, %188 ], [ %185, %182 ]
  %191 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %190
  %192 = load i8, ptr %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %184, %193
  %195 = select i1 %194, i32 1, i32 %189
  %196 = add i32 %190, 1
  %197 = icmp sgt i32 %196, %186
  br i1 %197, label %198, label %188

198:                                              ; preds = %188
  %199 = icmp eq i32 %195, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %198, %182
  store i32 %1, ptr @info_idx, align 4
  br label %201

201:                                              ; preds = %200, %198, %72, %71, %42, %22, %20
  %202 = phi i32 [ 0, %20 ], [ -22, %22 ], [ %183, %200 ], [ %183, %198 ], [ -19, %42 ], [ 0, %72 ], [ %60, %71 ]
  ret i32 %202
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @con2fb_release_oldinfo(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 28
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fb_ops, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %5
  %14 = tail call i32 %11(ptr noundef %0, i32 noundef 0) #20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 4
  br label %34

18:                                               ; preds = %13
  %19 = trunc i32 %3 to i8
  %20 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %2
  store i8 %19, ptr %20, align 1
  %21 = icmp eq i32 %4, 0
  br i1 %21, label %22, label %73

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.fb_ops, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = tail call i32 %26(ptr noundef %1, i32 noundef 0) #20
  %30 = load ptr, ptr %23, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi ptr [ %24, %22 ], [ %30, %28 ]
  %33 = load ptr, ptr %32, align 4
  tail call void @module_put(ptr noundef %33) #20
  br label %73

34:                                               ; preds = %16, %5
  %35 = phi ptr [ %17, %16 ], [ %7, %5 ]
  %36 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 9, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, @fb_flashcursor
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.fbcon_ops, ptr %35, i32 0, i32 19
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.fbcon_ops, ptr %35, i32 0, i32 8
  %46 = tail call i32 @del_timer_sync(ptr noundef %45) #20
  %47 = load i32, ptr %40, align 4
  %48 = and i32 %47, -3
  store i32 %48, ptr %40, align 4
  br label %49

49:                                               ; preds = %44, %39, %34
  %50 = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 9, i32 3
  %51 = load ptr, ptr %50, align 4
  tail call void @kfree(ptr noundef %51) #20
  %52 = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 22
  %53 = load ptr, ptr %52, align 4
  tail call void @kfree(ptr noundef %53) #20
  %54 = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 25
  %55 = load ptr, ptr %54, align 4
  tail call void @kfree(ptr noundef %55) #20
  %56 = getelementptr inbounds %struct.fbcon_ops, ptr %7, i32 0, i32 23
  %57 = load ptr, ptr %56, align 4
  tail call void @kfree(ptr noundef %57) #20
  %58 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %58) #20
  store ptr null, ptr %6, align 4
  %59 = load ptr, ptr %8, align 4
  %60 = load ptr, ptr %59, align 4
  tail call void @module_put(ptr noundef %60) #20
  %61 = icmp eq ptr %1, null
  br i1 %61, label %73, label %62

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.fb_ops, ptr %64, i32 0, i32 6
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = tail call i32 %66(ptr noundef nonnull %1) #20
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %69) #21
  br label %73

73:                                               ; preds = %71, %68, %62, %49, %31, %18
  %74 = phi i32 [ 0, %49 ], [ 0, %62 ], [ 0, %71 ], [ 0, %68 ], [ -19, %18 ], [ -19, %31 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fbcon_fb_unregistered(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call i32 @is_console_locked() #20
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr @oops_in_progress, align 4
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2842, i32 noundef 9, ptr noundef null) #20
  br label %11

11:                                               ; preds = %10, %4, %1
  %12 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr @first_fb_vc, align 4
  %15 = load i32, ptr @last_fb_vc, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %24, %11
  %18 = phi i32 [ %25, %24 ], [ %14, %11 ]
  %19 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %18
  %20 = load i8, ptr %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %13, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i8 -1, ptr %19, align 1
  br label %24

24:                                               ; preds = %23, %17
  %25 = add i32 %18, 1
  %26 = icmp sgt i32 %25, %15
  br i1 %26, label %27, label %17

27:                                               ; preds = %24, %11
  %28 = load i32, ptr @info_idx, align 4
  %29 = icmp eq i32 %13, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  store i32 -1, ptr @info_idx, align 4
  br label %31

31:                                               ; preds = %37, %30
  %32 = phi i32 [ 0, %30 ], [ %38, %37 ]
  %33 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 %32, ptr @info_idx, align 4
  br label %40

37:                                               ; preds = %31
  %38 = add nuw nsw i32 %32, 1
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %55, label %31

40:                                               ; preds = %36, %27
  %41 = phi i32 [ %32, %36 ], [ %28, %27 ]
  %42 = icmp eq i32 %41, -1
  %43 = select i1 %42, i1 true, i1 %16
  br i1 %43, label %55, label %44

44:                                               ; preds = %40
  %45 = trunc i32 %41 to i8
  br label %46

46:                                               ; preds = %52, %44
  %47 = phi i32 [ %14, %44 ], [ %53, %52 ]
  %48 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %47
  %49 = load i8, ptr %48, align 1
  %50 = icmp eq i8 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i8 %45, ptr %48, align 1
  br label %52

52:                                               ; preds = %51, %46
  %53 = add i32 %47, 1
  %54 = icmp sgt i32 %53, %15
  br i1 %54, label %55, label %46

55:                                               ; preds = %52, %40, %37
  %56 = load i32, ptr @num_registered_fb, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = tail call i32 @do_unregister_con_driver(ptr noundef nonnull @fb_con) #20
  br label %60

60:                                               ; preds = %58, %55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_unregister_con_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fbcon_remap_all(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  tail call void @console_lock() #20
  %4 = load i32, ptr @first_fb_vc, align 4
  %5 = load i32, ptr @last_fb_vc, align 4
  %6 = icmp sgt i32 %4, %5
  br i1 %6, label %13, label %7

7:                                                ; preds = %7, %1
  %8 = phi i32 [ %10, %7 ], [ %4, %1 ]
  %9 = tail call fastcc i32 @set_con2fb_map(i32 noundef %8, i32 noundef %3, i32 noundef 0)
  %10 = add i32 %8, 1
  %11 = load i32, ptr @last_fb_vc, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %7

13:                                               ; preds = %7, %1
  %14 = tail call i32 @con_is_bound(ptr noundef nonnull @fb_con) #20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr @first_fb_vc, align 4
  %18 = add i32 %17, 1
  %19 = load i32, ptr @last_fb_vc, align 4
  %20 = add i32 %19, 1
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %3, i32 noundef %18, i32 noundef %20) #21
  store i32 %3, ptr @info_idx, align 4
  br label %22

22:                                               ; preds = %16, %13
  tail call void @console_unlock() #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_is_bound(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fbcon_fb_registered(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call i32 @is_console_locked() #20
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr @oops_in_progress, align 4
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2936, i32 noundef 9, ptr noundef null) #20
  br label %11

11:                                               ; preds = %10, %4, %1
  %12 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr @info_idx, align 4
  %15 = icmp eq i32 %14, -1
  %16 = load i32, ptr @first_fb_vc, align 4
  %17 = load i32, ptr @last_fb_vc, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %15, label %19, label %59

19:                                               ; preds = %11
  br i1 %18, label %74, label %23

20:                                               ; preds = %23
  %21 = add i32 %24, 1
  %22 = icmp sgt i32 %21, %17
  br i1 %22, label %74, label %23

23:                                               ; preds = %20, %19
  %24 = phi i32 [ %21, %20 ], [ %16, %19 ]
  %25 = getelementptr [63 x i8], ptr @con2fb_map_boot, i32 0, i32 %24
  %26 = load i8, ptr %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %13, %27
  br i1 %28, label %29, label %20

29:                                               ; preds = %23
  store i32 %13, ptr @info_idx, align 4
  %30 = icmp eq i32 %13, -1
  br i1 %30, label %74, label %31

31:                                               ; preds = %29
  %32 = load i32, ptr @num_registered_fb, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %74, label %34

34:                                               ; preds = %31
  br i1 %18, label %42, label %35

35:                                               ; preds = %34
  %36 = trunc i32 %13 to i8
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi i32 [ %16, %35 ], [ %40, %37 ]
  %39 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %38
  store i8 %36, ptr %39, align 1
  %40 = add i32 %38, 1
  %41 = icmp sgt i32 %40, %17
  br i1 %41, label %42, label %37

42:                                               ; preds = %37, %34
  %43 = load i1, ptr @fbcon_is_default, align 4
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = tail call i32 @do_take_over_console(ptr noundef nonnull @fb_con, i32 noundef %16, i32 noundef %17, i32 noundef %45) #20
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %42
  %49 = load i32, ptr @first_fb_vc, align 4
  %50 = load i32, ptr @last_fb_vc, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %52, %48
  %53 = phi i32 [ %55, %52 ], [ %49, %48 ]
  %54 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %53
  store i8 -1, ptr %54, align 1
  %55 = add i32 %53, 1
  %56 = icmp sgt i32 %55, %50
  br i1 %56, label %57, label %52

57:                                               ; preds = %52, %48
  store i32 -1, ptr @info_idx, align 4
  br label %74

58:                                               ; preds = %42
  store i1 true, ptr @fbcon_has_console_bind, align 4
  br label %74

59:                                               ; preds = %11
  br i1 %18, label %74, label %60

60:                                               ; preds = %70, %59
  %61 = phi i32 [ %71, %70 ], [ %17, %59 ]
  %62 = phi i32 [ %72, %70 ], [ %16, %59 ]
  %63 = getelementptr [63 x i8], ptr @con2fb_map_boot, i32 0, i32 %62
  %64 = load i8, ptr %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %13, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = tail call fastcc i32 @set_con2fb_map(i32 noundef %62, i32 noundef %13, i32 noundef 0)
  %69 = load i32, ptr @last_fb_vc, align 4
  br label %70

70:                                               ; preds = %67, %60
  %71 = phi i32 [ %61, %60 ], [ %69, %67 ]
  %72 = add i32 %62, 1
  %73 = icmp sgt i32 %72, %71
  br i1 %73, label %74, label %60

74:                                               ; preds = %70, %59, %58, %57, %31, %29, %20, %19
  %75 = phi i32 [ 0, %29 ], [ -19, %31 ], [ 0, %58 ], [ %46, %57 ], [ 0, %59 ], [ 0, %19 ], [ 0, %20 ], [ 0, %70 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fbcon_fb_blanked(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 28
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fbcon_ops, ptr %4, i32 0, i32 12
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %6
  %11 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.vc_data, ptr %12, i32 0, i32 17
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %8
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  %20 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = tail call zeroext i1 @con_is_visible(ptr noundef %12) #20
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  tail call void @do_blank_screen(i32 noundef 0) #20
  br label %29

28:                                               ; preds = %25
  tail call void @do_unblank_screen(i32 noundef 0) #20
  br label %29

29:                                               ; preds = %28, %27, %23
  %30 = getelementptr inbounds %struct.fbcon_ops, ptr %4, i32 0, i32 16
  store i32 %1, ptr %30, align 4
  br label %31

31:                                               ; preds = %29, %16, %10, %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @con_is_visible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_blank_screen(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_unblank_screen(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fbcon_new_modelist(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.fb_var_screeninfo, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %2) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %2, i8 0, i32 160, i1 false), !annotation !9
  %3 = load i32, ptr @first_fb_vc, align 4
  %4 = load i32, ptr @last_fb_vc, align 4
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %69, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 2
  %8 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 3
  %9 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 6
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 7
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 12
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 16
  %13 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 14
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 15
  %15 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 8
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 9
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 10
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 11
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 26
  %20 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 13
  br label %21

21:                                               ; preds = %65, %6
  %22 = phi i32 [ %4, %6 ], [ %66, %65 ]
  %23 = phi i32 [ %3, %6 ], [ %67, %65 ]
  %24 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = sext i8 %25 to i32
  %27 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %30, label %65

30:                                               ; preds = %21
  %31 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %23, i32 20
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %65, label %34

34:                                               ; preds = %30
  %35 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %23
  %36 = load ptr, ptr %35, align 4
  call void @fb_videomode_to_var(ptr noundef nonnull %2, ptr noundef nonnull %32) #20
  %37 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %23, i32 7
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %7, align 4
  %39 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %23, i32 8
  %40 = load i32, ptr %39, align 4
  store i32 %40, ptr %8, align 4
  %41 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %23, i32 11
  %42 = load i32, ptr %41, align 4
  store i32 %42, ptr %9, align 4
  %43 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %23, i32 12
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %10, align 4
  %45 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %23, i32 13
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr %11, align 4
  %47 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %23, i32 14
  %48 = load i32, ptr %47, align 4
  store i32 %48, ptr %12, align 4
  %49 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %23, i32 9
  %50 = load i32, ptr %49, align 4
  store i32 %50, ptr %13, align 4
  %51 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %23, i32 10
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %14, align 4
  %53 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %23, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %15, ptr noundef align 4 dereferenceable(12) %53, i32 12, i1 false) #20
  %54 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %23, i32 17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %16, ptr noundef align 4 dereferenceable(12) %54, i32 12, i1 false) #20
  %55 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %23, i32 18
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %17, ptr noundef align 4 dereferenceable(12) %55, i32 12, i1 false) #20
  %56 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %23, i32 19
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %18, ptr noundef align 4 dereferenceable(12) %56, i32 12, i1 false) #20
  %57 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %23, i32 15
  %58 = load i32, ptr %57, align 4
  store i32 %58, ptr %19, align 4
  %59 = load ptr, ptr %31, align 4
  %60 = call ptr @fb_find_nearest_mode(ptr noundef %59, ptr noundef %20) #20
  call void @fb_videomode_to_var(ptr noundef nonnull %2, ptr noundef %60) #20
  %61 = getelementptr inbounds %struct.vc_data, ptr %36, i32 0, i32 3
  %62 = load i16, ptr %61, align 4
  %63 = zext i16 %62 to i32
  call fastcc void @fbcon_set_disp(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %63)
  %64 = load i32, ptr @last_fb_vc, align 4
  br label %65

65:                                               ; preds = %34, %30, %21
  %66 = phi i32 [ %22, %30 ], [ %22, %21 ], [ %64, %34 ]
  %67 = add i32 %23, 1
  %68 = icmp sgt i32 %67, %66
  br i1 %68, label %69, label %21

69:                                               ; preds = %65, %1
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %2) #20
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_find_nearest_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fbcon_set_disp(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 28
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %2
  %7 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %2, i32 7
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %2, i32 8
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %2, i32 11
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %2, i32 12
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 12
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %2, i32 13
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 16
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %2, i32 14
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 14
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %2, i32 9
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 15
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %2, i32 10
  store i32 %29, ptr %30, align 4
  %31 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %2, i32 16
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %31, ptr noundef align 4 dereferenceable(12) %32, i32 12, i1 false) #20
  %33 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %2, i32 17
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %33, ptr noundef align 4 dereferenceable(12) %34, i32 12, i1 false) #20
  %35 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %2, i32 18
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %35, ptr noundef align 4 dereferenceable(12) %36, i32 12, i1 false) #20
  %37 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %2, i32 19
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %37, ptr noundef align 4 dereferenceable(12) %38, i32 12, i1 false) #20
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 26
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %2, i32 15
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 13
  %43 = tail call ptr @fb_match_mode(ptr noundef %1, ptr noundef %42) #20
  %44 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %2, i32 20
  store ptr %43, ptr %44, align 4
  %45 = icmp eq ptr %43, null
  br i1 %45, label %148, label %46

46:                                               ; preds = %3
  %47 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %2
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %148, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.vc_data, ptr %48, i32 0, i32 47
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.vc_data, ptr %48, i32 0, i32 28
  %55 = getelementptr inbounds %struct.vc_data, ptr %48, i32 0, i32 28, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %84

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.vc_data, ptr %53, i32 0, i32 3
  %60 = load i16, ptr %59, align 4
  %61 = zext i16 %60 to i32
  %62 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %61
  %63 = load ptr, ptr %62, align 4
  store ptr %63, ptr %6, align 4
  store ptr %63, ptr %55, align 4
  %64 = load ptr, ptr %52, align 4
  %65 = getelementptr inbounds %struct.vc_data, ptr %64, i32 0, i32 28
  %66 = load i32, ptr %65, align 4
  store i32 %66, ptr %54, align 4
  %67 = load ptr, ptr %52, align 4
  %68 = getelementptr inbounds %struct.vc_data, ptr %67, i32 0, i32 28, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.vc_data, ptr %48, i32 0, i32 28, i32 1
  store i32 %69, ptr %70, align 4
  %71 = load ptr, ptr %52, align 4
  %72 = getelementptr inbounds %struct.vc_data, ptr %71, i32 0, i32 28, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.vc_data, ptr %48, i32 0, i32 28, i32 2
  store i32 %73, ptr %74, align 4
  %75 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %61, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %2, i32 1
  store i32 %76, ptr %77, align 4
  %78 = icmp eq i32 %76, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %58
  %80 = load ptr, ptr %6, align 4
  %81 = getelementptr i32, ptr %80, i32 -1
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, 1
  store i32 %83, ptr %81, align 4
  br label %84

84:                                               ; preds = %79, %58, %50
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 13
  store i32 0, ptr %85, align 4
  %86 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 13
  store i32 0, ptr %87, align 4
  %88 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 5
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 5
  store i32 %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 4
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %1, i32 0, i32 4
  store i32 %92, ptr %93, align 4
  %94 = tail call i32 @fb_set_var(ptr noundef %0, ptr noundef %1) #20
  %95 = getelementptr inbounds %struct.fbcon_ops, ptr %5, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(160) %95, ptr noundef align 4 dereferenceable(160) %86, i32 160, i1 false)
  %96 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7
  %97 = tail call i32 @fb_get_color_depth(ptr noundef %86, ptr noundef %96) #20
  %98 = icmp eq i32 %97, 1
  %99 = getelementptr inbounds %struct.vc_data, ptr %48, i32 0, i32 37
  %100 = load i16, ptr %99, align 4
  %101 = select i1 %98, i16 0, i16 2048
  %102 = and i16 %100, -2049
  %103 = or i16 %102, %101
  store i16 %103, ptr %99, align 4
  %104 = select i1 %98, i16 2048, i16 30464
  %105 = getelementptr inbounds %struct.vc_data, ptr %48, i32 0, i32 24
  store i16 %104, ptr %105, align 4
  %106 = getelementptr inbounds %struct.vc_data, ptr %48, i32 0, i32 28, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 256
  %109 = getelementptr inbounds %struct.vc_data, ptr %48, i32 0, i32 27
  br i1 %108, label %110, label %111

110:                                              ; preds = %84
  store i16 0, ptr %109, align 4
  br label %114

111:                                              ; preds = %84
  store i16 256, ptr %109, align 4
  br i1 %98, label %114, label %112

112:                                              ; preds = %111
  %113 = shl nuw i16 %104, 1
  store i16 %113, ptr %105, align 4
  br label %114

114:                                              ; preds = %112, %111, %110
  %115 = getelementptr inbounds %struct.vc_data, ptr %53, i32 0, i32 49
  %116 = load ptr, ptr %115, align 4
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = tail call i32 @con_set_default_unimap(ptr noundef %53) #20
  br label %121

121:                                              ; preds = %119, %114
  %122 = getelementptr inbounds %struct.vc_data, ptr %48, i32 0, i32 49
  %123 = load ptr, ptr %122, align 4
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = tail call i32 @con_copy_unimap(ptr noundef nonnull %48, ptr noundef %53) #20
  br label %128

128:                                              ; preds = %126, %121
  %129 = load i32, ptr %86, align 4
  %130 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr inbounds %struct.fbcon_ops, ptr %5, i32 0, i32 20
  %133 = load i32, ptr %132, align 4
  switch i32 %133, label %134 [
    i32 0, label %135
    i32 2, label %135
  ]

134:                                              ; preds = %128
  br label %135

135:                                              ; preds = %134, %128, %128
  %136 = phi i32 [ %131, %134 ], [ %129, %128 ], [ %129, %128 ]
  switch i32 %133, label %137 [
    i32 0, label %138
    i32 2, label %138
  ]

137:                                              ; preds = %135
  br label %138

138:                                              ; preds = %137, %135, %135
  %139 = phi i32 [ %129, %137 ], [ %131, %135 ], [ %131, %135 ]
  %140 = load i32, ptr %54, align 4
  %141 = udiv i32 %136, %140
  %142 = getelementptr inbounds %struct.vc_data, ptr %48, i32 0, i32 28, i32 1
  %143 = load i32, ptr %142, align 4
  %144 = udiv i32 %139, %143
  %145 = tail call i32 @vc_resize(ptr noundef nonnull %48, i32 noundef %141, i32 noundef %144) #20
  %146 = tail call zeroext i1 @con_is_visible(ptr noundef nonnull %48) #20
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  tail call void @redraw_screen(ptr noundef nonnull %48, i32 noundef 0) #20
  br label %148

148:                                              ; preds = %147, %138, %46, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fbcon_get_requirement(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.fb_blit_caps, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %50, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr @first_fb_vc, align 4
  %8 = load i32, ptr @last_fb_vc, align 4
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %79, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 1
  %12 = getelementptr inbounds %struct.fb_blit_caps, ptr %1, i32 0, i32 1
  %13 = getelementptr inbounds %struct.fb_blit_caps, ptr %1, i32 0, i32 2
  br label %14

14:                                               ; preds = %47, %10
  %15 = phi i32 [ %7, %10 ], [ %48, %47 ]
  %16 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %47, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.vc_data, ptr %17, i32 0, i32 17
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load i32, ptr %11, align 4
  %25 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %15
  %26 = load i8, ptr %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.vc_data, ptr %17, i32 0, i32 28
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -1
  %33 = shl nuw i32 1, %32
  %34 = load i32, ptr %1, align 4
  %35 = or i32 %33, %34
  store i32 %35, ptr %1, align 4
  %36 = getelementptr inbounds %struct.vc_data, ptr %17, i32 0, i32 28, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, -1
  %39 = shl nuw i32 1, %38
  %40 = load i32, ptr %12, align 4
  %41 = or i32 %39, %40
  store i32 %41, ptr %12, align 4
  %42 = getelementptr inbounds %struct.vc_data, ptr %17, i32 0, i32 28, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = load i32, ptr %13, align 4
  %45 = icmp ult i32 %44, %43
  br i1 %45, label %46, label %47

46:                                               ; preds = %29
  store i32 %43, ptr %13, align 4
  br label %47

47:                                               ; preds = %46, %29, %23, %19, %14
  %48 = add i32 %15, 1
  %49 = icmp sgt i32 %48, %8
  br i1 %49, label %79, label %14

50:                                               ; preds = %2
  %51 = load i32, ptr @fg_console, align 4
  %52 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %51
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %79, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.vc_data, ptr %53, i32 0, i32 17
  %57 = load i8, ptr %56, align 4
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %51
  %63 = load i8, ptr %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.vc_data, ptr %53, i32 0, i32 28
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, -1
  %70 = shl nuw i32 1, %69
  store i32 %70, ptr %1, align 4
  %71 = getelementptr inbounds %struct.vc_data, ptr %53, i32 0, i32 28, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, -1
  %74 = shl nuw i32 1, %73
  %75 = getelementptr inbounds %struct.fb_blit_caps, ptr %1, i32 0, i32 1
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.vc_data, ptr %53, i32 0, i32 28, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.fb_blit_caps, ptr %1, i32 0, i32 2
  store i32 %77, ptr %78, align 4
  br label %79

79:                                               ; preds = %66, %59, %55, %50, %47, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fbcon_set_con2fb_map_ioctl(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.fb_con2fbmap, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  store i64 0, ptr %2, align 8, !annotation !9
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1090519040) #22, !srcloc !10
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14, !prof !11

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #20
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #23, !srcloc !12
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #20, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !14
  %12 = call i32 @arm_copy_from_user(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #20, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !11

14:                                               ; preds = %6, %1
  %15 = phi i32 [ %12, %6 ], [ 8, %1 ]
  %16 = sub i32 8, %15
  %17 = getelementptr i8, ptr %2, i32 %16
  call void @llvm.memset.p0.i32(ptr align 1 %17, i8 0, i32 %15, i1 false) #20
  br label %41

18:                                               ; preds = %6
  %19 = load i32, ptr %2, align 8
  %20 = add i32 %19, -64
  %21 = icmp ult i32 %20, -63
  br i1 %21, label %41, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.fb_con2fbmap, ptr %2, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %24, 31
  br i1 %25, label %41, label %26

26:                                               ; preds = %22
  %27 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %24
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.2, i32 noundef %24) #20
  %32 = load i32, ptr %23, align 4
  %33 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %30, %26
  call void @console_lock() #20
  %37 = load i32, ptr %2, align 8
  %38 = add i32 %37, -1
  %39 = load i32, ptr %23, align 4
  %40 = call fastcc i32 @set_con2fb_map(i32 noundef %38, i32 noundef %39, i32 noundef 1)
  call void @console_unlock() #20
  br label %41

41:                                               ; preds = %36, %30, %22, %18, %14
  %42 = phi i32 [ %40, %36 ], [ -22, %18 ], [ -22, %22 ], [ -22, %30 ], [ -14, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fbcon_get_con2fb_map_ioctl(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.fb_con2fbmap, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  store i64 0, ptr %2, align 8, !annotation !9
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1090519040) #22
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14, !prof !11

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #20
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #23, !srcloc !12
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #20, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !14
  %12 = call i32 @arm_copy_from_user(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #20, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !11

14:                                               ; preds = %6, %1
  %15 = phi i32 [ %12, %6 ], [ 8, %1 ]
  %16 = sub i32 8, %15
  %17 = getelementptr i8, ptr %2, i32 %16
  call void @llvm.memset.p0.i32(ptr align 1 %17, i8 0, i32 %15, i1 false) #20
  br label %35

18:                                               ; preds = %6
  %19 = load i32, ptr %2, align 8
  %20 = add i32 %19, -64
  %21 = icmp ult i32 %20, -63
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  call void @console_lock() #20
  %23 = load i32, ptr %2, align 8
  %24 = add i32 %23, -1
  %25 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %24
  %26 = load i8, ptr %25, align 1
  %27 = sext i8 %26 to i32
  %28 = getelementptr inbounds %struct.fb_con2fbmap, ptr %2, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  call void @console_unlock() #20
  %29 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #23, !srcloc !12
  %30 = and i32 %29, -13
  %31 = or i32 %30, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #20, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !14
  %32 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 8) #20
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #20, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #20, !srcloc !14
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 0, i32 -14
  br label %35

35:                                               ; preds = %22, %18, %14
  %36 = phi i32 [ -22, %18 ], [ -14, %14 ], [ %34, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i32 %36
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @fb_console_init() local_unnamed_addr #0 section ".init.text" {
  tail call void @console_lock() #20
  %1 = load ptr, ptr @fb_class, align 4
  %2 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.3) #20
  store ptr %2, ptr @fbcon_device, align 4
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = ptrtoint ptr %2 to i32
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %5) #21
  store ptr null, ptr @fbcon_device, align 4
  br label %26

7:                                                ; preds = %0
  %8 = tail call i32 @device_create_file(ptr noundef %2, ptr noundef nonnull @device_attrs) #20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load ptr, ptr @fbcon_device, align 4
  %12 = tail call i32 @device_create_file(ptr noundef %11, ptr noundef getelementptr inbounds ([3 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 1)) #20
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load ptr, ptr @fbcon_device, align 4
  %16 = tail call i32 @device_create_file(ptr noundef %15, ptr noundef getelementptr inbounds ([3 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 2)) #20
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14, %10
  %19 = phi i32 [ 0, %10 ], [ 1, %14 ]
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i32 [ %24, %20 ], [ %19, %18 ]
  %22 = load ptr, ptr @fbcon_device, align 4
  %23 = getelementptr [3 x %struct.device_attribute], ptr @device_attrs, i32 0, i32 %21
  tail call void @device_remove_file(ptr noundef %22, ptr noundef %23) #20
  %24 = add nsw i32 %21, -1
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %26, label %20

26:                                               ; preds = %20, %14, %7, %4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(63) @con2fb_map, i8 -1, i32 63, i1 false)
  %27 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = tail call i32 @is_console_locked() #20
  %31 = icmp eq i32 %30, 0
  %32 = load i32, ptr @oops_in_progress, align 4
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %36, !prof !8

35:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3297, i32 noundef 9, ptr noundef null) #20
  br label %36

36:                                               ; preds = %35, %29, %26
  %37 = load i32, ptr @num_registered_fb, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %77, label %39

39:                                               ; preds = %45, %36
  %40 = phi i32 [ %46, %45 ], [ 0, %36 ]
  %41 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 %40, ptr @info_idx, align 4
  br label %48

45:                                               ; preds = %39
  %46 = add nuw nsw i32 %40, 1
  %47 = icmp eq i32 %46, 32
  br i1 %47, label %48, label %39

48:                                               ; preds = %45, %44
  store i32 -3, ptr @logo_shown, align 4
  %49 = load i32, ptr @first_fb_vc, align 4
  %50 = load i32, ptr @last_fb_vc, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load i32, ptr @info_idx, align 4
  %54 = trunc i32 %53 to i8
  br label %55

55:                                               ; preds = %55, %52
  %56 = phi i32 [ %49, %52 ], [ %58, %55 ]
  %57 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %56
  store i8 %54, ptr %57, align 1
  %58 = add i32 %56, 1
  %59 = icmp sgt i32 %58, %50
  br i1 %59, label %60, label %55

60:                                               ; preds = %55, %48
  %61 = load i1, ptr @fbcon_is_default, align 4
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = tail call i32 @do_take_over_console(ptr noundef nonnull @fb_con, i32 noundef %49, i32 noundef %50, i32 noundef %63) #20
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %60
  %67 = load i32, ptr @first_fb_vc, align 4
  %68 = load i32, ptr @last_fb_vc, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %70, %66
  %71 = phi i32 [ %73, %70 ], [ %67, %66 ]
  %72 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %71
  store i8 -1, ptr %72, align 1
  %73 = add i32 %71, 1
  %74 = icmp sgt i32 %73, %68
  br i1 %74, label %75, label %70

75:                                               ; preds = %70, %66
  store i32 -1, ptr @info_idx, align 4
  br label %77

76:                                               ; preds = %60
  store i1 true, ptr @fbcon_has_console_bind, align 4
  br label %77

77:                                               ; preds = %76, %75, %36
  tail call void @console_unlock() #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fbcon_add_cursor_timer(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 28
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 9
  %5 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 9, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %6, @fb_flashcursor
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 19
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 2
  %14 = icmp ne i32 %13, 0
  %15 = load i1, ptr @fbcon_cursor_noblink, align 4
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %30, label %17

17:                                               ; preds = %10
  br i1 %7, label %18, label %21

18:                                               ; preds = %17
  store i32 -32, ptr %4, align 4
  %19 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 9, i32 1
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 9, i32 1, i32 1
  store ptr %19, ptr %20, align 4
  store ptr @fb_flashcursor, ptr %5, align 4
  br label %21

21:                                               ; preds = %18, %17
  %22 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 8
  tail call void @init_timer_key(ptr noundef %22, ptr noundef nonnull @cursor_timer_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #20
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = getelementptr inbounds %struct.fbcon_ops, ptr %3, i32 0, i32 13
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %23
  %27 = tail call i32 @mod_timer(ptr noundef %22, i32 noundef %26) #20
  %28 = load i32, ptr %11, align 4
  %29 = or i32 %28, 2
  store i32 %29, ptr %11, align 4
  br label %30

30:                                               ; preds = %21, %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fb_flashcursor(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -424
  %3 = getelementptr i8, ptr %0, i32 372
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @console_trylock() #20
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %149, label %7

7:                                                ; preds = %1
  %8 = icmp eq ptr %4, null
  br i1 %8, label %148, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.fbcon_ops, ptr %4, i32 0, i32 12
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %148, label %13

13:                                               ; preds = %9
  %14 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %11
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %148, label %17

17:                                               ; preds = %13
  %18 = tail call zeroext i1 @con_is_visible(ptr noundef nonnull %15) #20
  br i1 %18, label %19, label %148

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.vc_data, ptr %15, i32 0, i32 3
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = sext i8 %24 to i32
  %26 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %2
  br i1 %28, label %29, label %148

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.vc_data, ptr %15, i32 0, i32 37
  %31 = load i16, ptr %30, align 4
  %32 = and i16 %31, 32
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %148, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.vc_data, ptr %15, i32 0, i32 26
  %36 = load i32, ptr %35, align 4
  %37 = inttoptr i32 %36 to ptr
  %38 = load i16, ptr %37, align 2
  %39 = getelementptr inbounds %struct.fbcon_ops, ptr %4, i32 0, i32 14
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.fbcon_ops, ptr %4, i32 0, i32 9, i32 1
  %44 = load i16, ptr %43, align 2
  %45 = icmp eq i16 %44, 0
  %46 = select i1 %45, i32 1, i32 2
  br label %47

47:                                               ; preds = %42, %34
  %48 = phi i32 [ 2, %34 ], [ %46, %42 ]
  %49 = getelementptr inbounds %struct.fbcon_ops, ptr %4, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %0, i32 -368
  %52 = getelementptr i8, ptr %0, i32 -208
  %53 = tail call i32 @fb_get_color_depth(ptr noundef %51, ptr noundef %52) #20
  %54 = load i32, ptr @console_blanked, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.vc_data, ptr %15, i32 0, i32 27
  %58 = load i16, ptr %57, align 4
  %59 = icmp eq i16 %58, 0
  %60 = select i1 %59, i16 255, i16 511
  %61 = getelementptr inbounds %struct.vc_data, ptr %15, i32 0, i32 29
  %62 = load i16, ptr %61, align 4
  %63 = and i16 %60, %62
  br label %64

64:                                               ; preds = %56, %47
  %65 = phi i16 [ %63, %56 ], [ %38, %47 ]
  %66 = icmp eq i32 %53, 1
  br i1 %66, label %75, label %67

67:                                               ; preds = %64
  %68 = zext i16 %65 to i32
  %69 = getelementptr inbounds %struct.vc_data, ptr %15, i32 0, i32 27
  %70 = load i16, ptr %69, align 4
  %71 = icmp eq i16 %70, 0
  %72 = select i1 %71, i32 8, i32 9
  %73 = lshr i32 %68, %72
  %74 = and i32 %73, 15
  switch i32 %53, label %100 [
    i32 3, label %95
    i32 2, label %93
  ]

75:                                               ; preds = %64
  %76 = getelementptr i8, ptr %0, i32 -320
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr i8, ptr %0, i32 -332
  %79 = load i32, ptr %78, align 4
  %80 = tail call i32 @llvm.umax.i32(i32 %77, i32 %79) #20
  %81 = getelementptr i8, ptr %0, i32 -308
  %82 = load i32, ptr %81, align 4
  %83 = tail call i32 @llvm.umax.i32(i32 %82, i32 %80) #20
  %84 = shl i32 4095, %83
  %85 = and i32 %84, 255
  %86 = xor i32 %85, 255
  %87 = getelementptr i8, ptr %0, i32 -176
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i32 0, i32 %86
  %91 = select i1 %89, i32 %86, i32 0
  %92 = select i1 %55, i32 %90, i32 %91
  br label %100

93:                                               ; preds = %67
  %94 = icmp ult i32 %74, 9
  br i1 %94, label %97, label %100

95:                                               ; preds = %67
  %96 = and i32 %73, 7
  br label %100

97:                                               ; preds = %93
  %98 = getelementptr inbounds [9 x i32], ptr @switch.table.fbcon_putcs.31, i32 0, i32 %74
  %99 = load i32, ptr %98, align 4
  br label %100

100:                                              ; preds = %97, %95, %93, %75, %67
  %101 = phi i32 [ %74, %67 ], [ %96, %95 ], [ %92, %75 ], [ %99, %97 ], [ 3, %93 ]
  %102 = tail call i32 @fb_get_color_depth(ptr noundef %51, ptr noundef %52) #20
  %103 = load i32, ptr @console_blanked, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.vc_data, ptr %15, i32 0, i32 27
  %107 = load i16, ptr %106, align 4
  %108 = icmp eq i16 %107, 0
  %109 = select i1 %108, i16 255, i16 511
  %110 = getelementptr inbounds %struct.vc_data, ptr %15, i32 0, i32 29
  %111 = load i16, ptr %110, align 4
  %112 = and i16 %109, %111
  br label %113

113:                                              ; preds = %105, %100
  %114 = phi i16 [ %112, %105 ], [ %38, %100 ]
  %115 = icmp eq i32 %102, 1
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = zext i16 %114 to i32
  %118 = getelementptr inbounds %struct.vc_data, ptr %15, i32 0, i32 27
  %119 = load i16, ptr %118, align 4
  %120 = icmp eq i16 %119, 0
  %121 = select i1 %120, i32 12, i32 13
  %122 = lshr i32 %117, %121
  switch i32 %102, label %146 [
    i32 3, label %141
    i32 2, label %139
  ]

123:                                              ; preds = %113
  %124 = getelementptr i8, ptr %0, i32 -320
  %125 = load i32, ptr %124, align 4
  %126 = getelementptr i8, ptr %0, i32 -332
  %127 = load i32, ptr %126, align 4
  %128 = tail call i32 @llvm.umax.i32(i32 %125, i32 %127) #20
  %129 = getelementptr i8, ptr %0, i32 -308
  %130 = load i32, ptr %129, align 4
  %131 = tail call i32 @llvm.umax.i32(i32 %130, i32 %128) #20
  %132 = shl i32 4095, %131
  %133 = and i32 %132, 255
  %134 = xor i32 %133, 255
  %135 = getelementptr i8, ptr %0, i32 -176
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, 0
  %138 = select i1 %137, i32 %134, i32 0
  br label %146

139:                                              ; preds = %116
  %140 = icmp ult i32 %122, 9
  br i1 %140, label %143, label %146

141:                                              ; preds = %116
  %142 = and i32 %122, 7
  br label %146

143:                                              ; preds = %139
  %144 = getelementptr inbounds [9 x i32], ptr @switch.table.fbcon_putcs.31, i32 0, i32 %122
  %145 = load i32, ptr %144, align 4
  br label %146

146:                                              ; preds = %143, %141, %139, %123, %116
  %147 = phi i32 [ %122, %116 ], [ %142, %141 ], [ %138, %123 ], [ %145, %143 ], [ 3, %139 ]
  tail call void %50(ptr noundef nonnull %15, ptr noundef %2, i32 noundef %48, i32 noundef %101, i32 noundef %147) #20
  br label %148

148:                                              ; preds = %146, %29, %19, %17, %13, %9, %7
  tail call void @console_unlock() #20
  br label %149

149:                                              ; preds = %148, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @console_trylock() local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cursor_timer_handler(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 96
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr @system_power_efficient_wq, align 4
  %5 = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 9
  %6 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %5) #20
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = getelementptr i8, ptr %0, i32 104
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  %11 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %10) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_color_depth(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_set_bitops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_match_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fbcon_set_palette(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = sext i8 %7 to i32
  %9 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 28
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 27
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %70

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.fbcon_ops, ptr %12, i32 0, i32 17
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %70

24:                                               ; preds = %20
  %25 = tail call zeroext i1 @con_is_visible(ptr noundef %0) #20
  br i1 %25, label %26, label %70

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 6
  %28 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 7
  %29 = tail call i32 @fb_get_color_depth(ptr noundef %27, ptr noundef %28) #20
  %30 = icmp sgt i32 %29, 3
  br i1 %30, label %31, label %64

31:                                               ; preds = %31, %26
  %32 = phi i32 [ %53, %31 ], [ 0, %26 ]
  %33 = phi i32 [ %61, %31 ], [ 0, %26 ]
  %34 = getelementptr i8, ptr %1, i32 %33
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = add nuw nsw i32 %32, 1
  %38 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 41, i32 %32
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 8
  %42 = or i32 %41, %40
  %43 = trunc i32 %42 to i16
  %44 = getelementptr [16 x i16], ptr @palette_red, i32 0, i32 %36
  store i16 %43, ptr %44, align 2
  %45 = add nuw nsw i32 %32, 2
  %46 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 41, i32 %37
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 8
  %50 = or i32 %49, %48
  %51 = trunc i32 %50 to i16
  %52 = getelementptr [16 x i16], ptr @palette_green, i32 0, i32 %36
  store i16 %51, ptr %52, align 2
  %53 = add nuw nsw i32 %32, 3
  %54 = getelementptr %struct.vc_data, ptr %0, i32 0, i32 41, i32 %45
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 8
  %58 = or i32 %57, %56
  %59 = trunc i32 %58 to i16
  %60 = getelementptr [16 x i16], ptr @palette_blue, i32 0, i32 %36
  store i16 %59, ptr %60, align 2
  %61 = add nuw nsw i32 %33, 1
  %62 = icmp eq i32 %61, 16
  br i1 %62, label %63, label %31

63:                                               ; preds = %31
  store i32 16, ptr getelementptr inbounds (%struct.fb_cmap, ptr @palette_cmap, i32 0, i32 1), align 4
  store i32 0, ptr @palette_cmap, align 4
  br label %68

64:                                               ; preds = %26
  %65 = shl nuw nsw i32 1, %29
  %66 = tail call ptr @fb_default_cmap(i32 noundef %65) #20
  %67 = tail call i32 @fb_copy_cmap(ptr noundef %66, ptr noundef nonnull @palette_cmap) #20
  br label %68

68:                                               ; preds = %64, %63
  %69 = tail call i32 @fb_set_cmap(ptr noundef nonnull @palette_cmap, ptr noundef %10) #20
  br label %70

70:                                               ; preds = %68, %24, %20, %16, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_copy_cmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_default_cmap(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_cmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @con2fb_acquire_newinfo(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 @try_module_get(ptr noundef %7) #20
  br i1 %8, label %9, label %40

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.fb_ops, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = tail call i32 %12(ptr noundef %1, i32 noundef 0) #20
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %14, %9
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 352) #24
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.fbcon_ops, ptr %19, i32 0, i32 13
  store i32 20, ptr %22, align 4
  %23 = getelementptr inbounds %struct.fbcon_ops, ptr %19, i32 0, i32 11
  store ptr %1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 28
  store ptr %19, ptr %24, align 4
  %25 = icmp eq ptr %0, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, -131073
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %32
  %34 = getelementptr inbounds %struct.fbcon_ops, ptr %19, i32 0, i32 10
  store ptr %33, ptr %34, align 8
  %35 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %32, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = icmp slt i32 %36, 4
  %38 = select i1 %37, i32 %36, i32 0
  %39 = getelementptr inbounds %struct.fbcon_ops, ptr %19, i32 0, i32 20
  store i32 %38, ptr %39, align 8
  tail call void @fbcon_set_bitops(ptr noundef nonnull %19) #20
  br label %46

40:                                               ; preds = %17, %14, %4
  %41 = phi i32 [ -19, %14 ], [ -12, %17 ], [ -19, %4 ]
  %42 = trunc i32 %3 to i8
  %43 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %2
  store i8 %42, ptr %43, align 1
  %44 = load ptr, ptr %5, align 4
  %45 = load ptr, ptr %44, align 4
  tail call void @module_put(ptr noundef %45) #20
  br label %46

46:                                               ; preds = %40, %26, %21
  %47 = phi i32 [ 0, %21 ], [ 0, %26 ], [ %41, %40 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fbcon_prepare_logo(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
  %7 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %8 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  store i32 -3, ptr @logo_shown, align 4
  br label %212

13:                                               ; preds = %6
  %14 = load i16, ptr %7, align 4
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 28
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %19 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7
  %20 = tail call i32 @fb_get_color_depth(ptr noundef %18, ptr noundef %19) #20
  %21 = icmp eq i32 %20, 1
  %22 = and i32 %15, 64511
  %23 = select i1 %21, i32 %22, i32 %15
  %24 = getelementptr inbounds %struct.fbcon_ops, ptr %17, i32 0, i32 20
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @fb_prepare_logo(ptr noundef %1, i32 noundef %25) #20
  %27 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %26, -1
  %30 = add i32 %29, %28
  %31 = udiv i32 %30, %28
  store i32 %31, ptr @logo_lines, align 4
  %32 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = mul i32 %35, %3
  %37 = add i32 %36, %33
  %38 = inttoptr i32 %37 to ptr
  %39 = mul i32 %31, %2
  %40 = sub i32 0, %39
  %41 = getelementptr i16, ptr %38, i32 %40
  %42 = icmp ult ptr %41, %38
  br i1 %42, label %43, label %52

43:                                               ; preds = %13
  %44 = load i16, ptr %7, align 4
  br label %45

45:                                               ; preds = %49, %43
  %46 = phi ptr [ %41, %43 ], [ %50, %49 ]
  %47 = load i16, ptr %46, align 2
  %48 = icmp eq i16 %47, %44
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = getelementptr i16, ptr %46, i32 1
  %51 = icmp ult ptr %50, %38
  br i1 %51, label %45, label %52

52:                                               ; preds = %49, %45, %13
  %53 = phi ptr [ %41, %13 ], [ %46, %45 ], [ %50, %49 ]
  %54 = icmp eq ptr %53, %38
  %55 = add i32 %31, %3
  %56 = icmp sgt i32 %55, %5
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %100, label %58

58:                                               ; preds = %52
  %59 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %31, i32 %4) #20
  %60 = extractvalue { i32, i1 } %59, 1
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = extractvalue { i32, i1 } %59, 0
  %63 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %62, i32 2) #20
  %64 = extractvalue { i32, i1 } %63, 1
  %65 = extractvalue { i32, i1 } %63, 0
  %66 = select i1 %64, i32 -1, i32 %65
  br label %67

67:                                               ; preds = %61, %58
  %68 = phi i32 [ -1, %58 ], [ %66, %61 ]
  %69 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %68, i32 noundef 3264) #25
  %70 = icmp eq ptr %69, null
  br i1 %70, label %100, label %71

71:                                               ; preds = %67
  %72 = load i32, ptr @logo_lines, align 4
  %73 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %72, i32 %4) #20
  %74 = tail call i32 @llvm.smin.i32(i32 %2, i32 %4)
  %75 = trunc i32 %23 to i16
  %76 = extractvalue { i32, i1 } %73, 1
  br i1 %76, label %84, label %77

77:                                               ; preds = %71
  %78 = extractvalue { i32, i1 } %73, 0
  %79 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %78, i32 2) #20
  %80 = extractvalue { i32, i1 } %79, 1
  %81 = extractvalue { i32, i1 } %79, 0
  %82 = lshr exact i32 %81, 1
  %83 = select i1 %80, i32 2147483647, i32 %82
  br label %84

84:                                               ; preds = %77, %71
  %85 = phi i32 [ 2147483647, %71 ], [ %83, %77 ]
  %86 = tail call ptr @memset16(ptr noundef nonnull %69, i16 noundef zeroext %75, i32 noundef %85) #20
  %87 = load i32, ptr @logo_lines, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %84
  %90 = shl i32 %74, 1
  %91 = load i32, ptr @logo_lines, align 4
  br label %92

92:                                               ; preds = %92, %89
  %93 = phi ptr [ %41, %89 ], [ %98, %92 ]
  %94 = phi i32 [ 0, %89 ], [ %97, %92 ]
  %95 = mul i32 %94, %4
  %96 = getelementptr i16, ptr %69, i32 %95
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %96, ptr align 2 %93, i32 %90, i1 false) #20
  %97 = add nuw nsw i32 %94, 1
  %98 = getelementptr i16, ptr %93, i32 %74
  %99 = icmp slt i32 %97, %91
  br i1 %99, label %92, label %103

100:                                              ; preds = %67, %52
  br i1 %54, label %101, label %134

101:                                              ; preds = %100
  %102 = load i32, ptr @logo_lines, align 4
  br label %103

103:                                              ; preds = %101, %92, %84
  %104 = phi i32 [ %102, %101 ], [ %87, %84 ], [ %91, %92 ]
  %105 = phi ptr [ null, %101 ], [ %69, %84 ], [ %69, %92 ]
  %106 = sub i32 0, %2
  %107 = sub i32 %3, %104
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %109, %103
  %110 = phi ptr [ %112, %109 ], [ %41, %103 ]
  %111 = phi i32 [ %115, %109 ], [ %107, %103 ]
  %112 = getelementptr i16, ptr %110, i32 %106
  %113 = getelementptr i16, ptr %112, i32 %39
  %114 = load i32, ptr %34, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %113, ptr align 2 %112, i32 %114, i1 false) #20
  %115 = add nsw i32 %111, -1
  %116 = icmp ugt i32 %111, 1
  br i1 %116, label %109, label %117

117:                                              ; preds = %109, %103
  %118 = icmp eq ptr %105, null
  br i1 %118, label %119, label %134

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = load i32, ptr @logo_lines, align 4
  %123 = add i32 %122, %121
  %124 = icmp ult i32 %123, %3
  %125 = xor i32 %121, -1
  %126 = add i32 %125, %3
  %127 = select i1 %124, i32 %122, i32 %126
  %128 = add i32 %127, %121
  store i32 %128, ptr %120, align 4
  %129 = load i32, ptr %34, align 4
  %130 = mul i32 %127, %129
  %131 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  %132 = load i32, ptr %131, align 4
  %133 = add i32 %130, %132
  store i32 %133, ptr %131, align 4
  br label %134

134:                                              ; preds = %119, %117, %100
  %135 = phi ptr [ %105, %117 ], [ null, %119 ], [ null, %100 ]
  %136 = load i32, ptr %32, align 4
  %137 = inttoptr i32 %136 to ptr
  %138 = trunc i32 %23 to i16
  %139 = load i32, ptr %34, align 4
  %140 = load i32, ptr @logo_lines, align 4
  %141 = mul i32 %140, %139
  %142 = lshr i32 %141, 1
  %143 = tail call ptr @memset16(ptr noundef %137, i16 noundef zeroext %138, i32 noundef %142) #20
  %144 = tail call zeroext i1 @con_is_visible(ptr noundef %0) #20
  br i1 %144, label %145, label %172

145:                                              ; preds = %134
  %146 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %147 = load i8, ptr %146, align 4
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %172

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %151 = load i16, ptr %150, align 4
  %152 = zext i16 %151 to i32
  %153 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %152
  %154 = load i8, ptr %153, align 1
  %155 = sext i8 %154 to i32
  %156 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %155
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.fb_info, ptr %157, i32 0, i32 28
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr inbounds %struct.fb_info, ptr %157, i32 0, i32 27
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %149
  %164 = getelementptr inbounds %struct.fbcon_ops, ptr %159, i32 0, i32 17
  %165 = load i32, ptr %164, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.fbcon_ops, ptr %159, i32 0, i32 3
  %169 = load ptr, ptr %168, align 4
  %170 = load i32, ptr @margin_color, align 4
  tail call void %169(ptr noundef %0, ptr noundef %157, i32 noundef %170, i32 noundef 0) #20
  br label %171

171:                                              ; preds = %167, %163, %149
  tail call void @redraw_screen(ptr noundef %0, i32 noundef 0) #20
  br label %172

172:                                              ; preds = %171, %145, %134
  %173 = icmp eq ptr %135, null
  br i1 %173, label %200, label %174

174:                                              ; preds = %172
  %175 = load i32, ptr %32, align 4
  %176 = load i32, ptr %34, align 4
  %177 = mul i32 %176, %3
  %178 = add i32 %177, %175
  %179 = inttoptr i32 %178 to ptr
  %180 = load i32, ptr @logo_lines, align 4
  %181 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %180, i32 %4) #20
  %182 = extractvalue { i32, i1 } %181, 1
  br i1 %182, label %189, label %183

183:                                              ; preds = %174
  %184 = extractvalue { i32, i1 } %181, 0
  %185 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %184, i32 2) #20
  %186 = extractvalue { i32, i1 } %185, 1
  %187 = extractvalue { i32, i1 } %185, 0
  %188 = select i1 %186, i32 -1, i32 %187
  br label %189

189:                                              ; preds = %183, %174
  %190 = phi i32 [ -1, %174 ], [ %188, %183 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %179, ptr nonnull align 2 %135, i32 %190, i1 false) #20
  %191 = load i32, ptr @logo_lines, align 4
  %192 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 1, i32 1
  %193 = load i32, ptr %192, align 4
  %194 = add i32 %193, %191
  store i32 %194, ptr %192, align 4
  %195 = load i32, ptr %34, align 4
  %196 = mul i32 %195, %191
  %197 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 26
  %198 = load i32, ptr %197, align 4
  %199 = add i32 %198, %196
  store i32 %199, ptr %197, align 4
  tail call void @kfree(ptr noundef nonnull %135) #20
  br label %200

200:                                              ; preds = %189, %172
  %201 = load i32, ptr @logo_shown, align 4
  %202 = icmp eq i32 %201, -3
  br i1 %202, label %212, label %203

203:                                              ; preds = %200
  %204 = load i32, ptr @logo_lines, align 4
  %205 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 13
  %206 = load i32, ptr %205, align 4
  %207 = icmp ugt i32 %204, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  store i32 -1, ptr @logo_shown, align 4
  %209 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #21
  br label %212

210:                                              ; preds = %203
  store i32 -2, ptr @logo_shown, align 4
  %211 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 12
  store i32 %204, ptr %211, align 4
  br label %212

212:                                              ; preds = %210, %208, %200, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_prepare_logo(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memset16(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_unbind_con_driver(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_take_over_console(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_var(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_set_default_unimap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_copy_unimap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @fbcon_startup() #1 {
  %1 = load i32, ptr @fg_console, align 4
  %2 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %1
  %3 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %1
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @num_registered_fb, align 4
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr @info_idx, align 4
  %8 = icmp eq i32 %7, -1
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %159, label %10

10:                                               ; preds = %0
  %11 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %159, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 20
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call zeroext i1 @try_module_get(ptr noundef %17) #20
  br i1 %18, label %19, label %159

19:                                               ; preds = %14
  %20 = load ptr, ptr %15, align 4
  %21 = getelementptr inbounds %struct.fb_ops, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = tail call i32 %22(ptr noundef nonnull %12, i32 noundef 0) #20
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @module_put(ptr noundef %17) #20
  br label %159

28:                                               ; preds = %24, %19
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %30 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 352) #24
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void @module_put(ptr noundef %17) #20
  br label %159

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.fbcon_ops, ptr %30, i32 0, i32 12
  store i32 -1, ptr %34, align 8
  %35 = getelementptr inbounds %struct.fbcon_ops, ptr %30, i32 0, i32 17
  store i32 1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.fbcon_ops, ptr %30, i32 0, i32 21
  store i32 -1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.fbcon_ops, ptr %30, i32 0, i32 13
  store i32 20, ptr %37, align 4
  %38 = getelementptr inbounds %struct.fbcon_ops, ptr %30, i32 0, i32 11
  store ptr %12, ptr %38, align 4
  %39 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 28
  store ptr %30, ptr %39, align 4
  %40 = load i32, ptr @initial_rotation, align 4
  %41 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %1, i32 6
  store i32 %40, ptr %41, align 4
  %42 = icmp eq i32 %40, -1
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, -1
  %47 = select i1 %46, i32 0, i32 %45
  store i32 %47, ptr %41, align 4
  br label %48

48:                                               ; preds = %43, %33
  %49 = load ptr, ptr %39, align 4
  %50 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, -131073
  store i32 %52, ptr %50, align 4
  %53 = getelementptr inbounds %struct.vc_data, ptr %4, i32 0, i32 3
  %54 = load i16, ptr %53, align 4
  %55 = zext i16 %54 to i32
  %56 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %55
  %57 = getelementptr inbounds %struct.fbcon_ops, ptr %49, i32 0, i32 10
  store ptr %56, ptr %57, align 4
  %58 = load ptr, ptr %39, align 4
  %59 = load i32, ptr %50, align 4
  %60 = and i32 %59, 131072
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %48
  %63 = getelementptr inbounds %struct.fbcon_ops, ptr %58, i32 0, i32 10
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.fbcon_display, ptr %64, i32 0, i32 6
  %66 = load i32, ptr %65, align 4
  %67 = icmp slt i32 %66, 4
  br i1 %67, label %69, label %68

68:                                               ; preds = %62, %48
  br label %69

69:                                               ; preds = %68, %62
  %70 = phi i32 [ 0, %68 ], [ %66, %62 ]
  %71 = getelementptr inbounds %struct.fbcon_ops, ptr %58, i32 0, i32 20
  store i32 %70, ptr %71, align 4
  tail call void @fbcon_set_bitops(ptr noundef %49) #20
  %72 = load ptr, ptr %2, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.vc_data, ptr %4, i32 0, i32 28, i32 3
  %76 = load ptr, ptr %75, align 4
  br label %110

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.vc_data, ptr %4, i32 0, i32 28
  %79 = getelementptr inbounds %struct.vc_data, ptr %4, i32 0, i32 28, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %110

82:                                               ; preds = %77
  %83 = load i8, ptr @fontname, align 1
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = tail call ptr @find_font(ptr noundef nonnull @fontname) #20
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %85, %82
  %89 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 6
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 6, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 10, i32 7
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 10, i32 8
  %96 = load i32, ptr %95, align 4
  %97 = tail call ptr @get_default_font(i32 noundef %90, i32 noundef %92, i32 noundef %94, i32 noundef %96) #20
  br label %98

98:                                               ; preds = %88, %85
  %99 = phi ptr [ %86, %85 ], [ %97, %88 ]
  %100 = getelementptr inbounds %struct.font_desc, ptr %99, i32 0, i32 2
  %101 = load i32, ptr %100, align 4
  store i32 %101, ptr %78, align 4
  %102 = getelementptr inbounds %struct.font_desc, ptr %99, i32 0, i32 3
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.vc_data, ptr %4, i32 0, i32 28, i32 1
  store i32 %103, ptr %104, align 4
  %105 = getelementptr inbounds %struct.font_desc, ptr %99, i32 0, i32 5
  %106 = load ptr, ptr %105, align 4
  store ptr %106, ptr %2, align 4
  store ptr %106, ptr %79, align 4
  %107 = getelementptr inbounds %struct.font_desc, ptr %99, i32 0, i32 4
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.vc_data, ptr %4, i32 0, i32 28, i32 2
  store i32 %108, ptr %109, align 4
  br label %112

110:                                              ; preds = %77, %74
  %111 = phi ptr [ %76, %74 ], [ %80, %77 ]
  store ptr %111, ptr %2, align 4
  br label %112

112:                                              ; preds = %110, %98
  %113 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 6
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 6, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr inbounds %struct.fbcon_ops, ptr %30, i32 0, i32 20
  %118 = load i32, ptr %117, align 8
  switch i32 %118, label %119 [
    i32 0, label %120
    i32 2, label %120
  ]

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119, %112, %112
  %121 = phi i32 [ %116, %119 ], [ %114, %112 ], [ %114, %112 ]
  switch i32 %118, label %122 [
    i32 0, label %123
    i32 2, label %123
  ]

122:                                              ; preds = %120
  br label %123

123:                                              ; preds = %122, %120, %120
  %124 = phi i32 [ %114, %122 ], [ %116, %120 ], [ %116, %120 ]
  %125 = getelementptr inbounds %struct.vc_data, ptr %4, i32 0, i32 28
  %126 = load i32, ptr %125, align 4
  %127 = udiv i32 %121, %126
  %128 = getelementptr inbounds %struct.vc_data, ptr %4, i32 0, i32 28, i32 1
  %129 = load i32, ptr %128, align 4
  %130 = udiv i32 %124, %129
  %131 = tail call i32 @vc_resize(ptr noundef %4, i32 noundef %127, i32 noundef %130) #20
  %132 = load ptr, ptr %39, align 4
  %133 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 9
  %134 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 9, i32 2
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  %137 = icmp eq ptr %135, @fb_flashcursor
  %138 = or i1 %136, %137
  br i1 %138, label %139, label %159

139:                                              ; preds = %123
  %140 = getelementptr inbounds %struct.fbcon_ops, ptr %132, i32 0, i32 19
  %141 = load i32, ptr %140, align 4
  %142 = and i32 %141, 2
  %143 = icmp ne i32 %142, 0
  %144 = load i1, ptr @fbcon_cursor_noblink, align 4
  %145 = select i1 %143, i1 true, i1 %144
  br i1 %145, label %159, label %146

146:                                              ; preds = %139
  br i1 %136, label %147, label %150

147:                                              ; preds = %146
  store i32 -32, ptr %133, align 4
  %148 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 9, i32 1
  store volatile ptr %148, ptr %148, align 4
  %149 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 9, i32 1, i32 1
  store ptr %148, ptr %149, align 4
  store ptr @fb_flashcursor, ptr %134, align 4
  br label %150

150:                                              ; preds = %147, %146
  %151 = getelementptr inbounds %struct.fbcon_ops, ptr %132, i32 0, i32 8
  tail call void @init_timer_key(ptr noundef %151, ptr noundef nonnull @cursor_timer_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #20
  %152 = load volatile i32, ptr @jiffies, align 64
  %153 = getelementptr inbounds %struct.fbcon_ops, ptr %132, i32 0, i32 13
  %154 = load i32, ptr %153, align 4
  %155 = add i32 %154, %152
  %156 = tail call i32 @mod_timer(ptr noundef %151, i32 noundef %155) #20
  %157 = load i32, ptr %140, align 4
  %158 = or i32 %157, 2
  store i32 %158, ptr %140, align 4
  br label %159

159:                                              ; preds = %150, %139, %123, %32, %27, %14, %10, %0
  %160 = phi ptr [ null, %27 ], [ null, %32 ], [ @.str.22, %0 ], [ null, %10 ], [ null, %14 ], [ @.str.22, %123 ], [ @.str.22, %139 ], [ @.str.22, %150 ]
  ret ptr %160
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fbcon_init(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8
  %10 = load i32, ptr @info_idx, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13, !prof !15

12:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1030, i32 noundef 9, ptr noundef null) #20
  br label %308

13:                                               ; preds = %2
  %14 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %8
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = trunc i32 %10 to i8
  store i8 %18, ptr %14, align 1
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi i8 [ %18, %17 ], [ %15, %13 ]
  %21 = sext i8 %20 to i32
  %22 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr @logo_shown, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, ptr @console_printk, align 4
  %28 = icmp slt i32 %27, 5
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 -3, ptr @logo_shown, align 4
  br label %38

30:                                               ; preds = %26, %19
  %31 = icmp ne ptr %5, %0
  %32 = icmp eq i32 %24, -3
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 7, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %30, %29
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i1 [ true, %38 ], [ false, %34 ]
  %41 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 6
  %42 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 6, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 7
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 6, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 8
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 6, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 11
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 6, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 12
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 6, i32 12
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 13
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 6, i32 16
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 14
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 6, i32 14
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 9
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 6, i32 15
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 10
  store i32 %64, ptr %65, align 4
  %66 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 16
  %67 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 6, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %66, ptr noundef align 4 dereferenceable(12) %67, i32 12, i1 false) #20
  %68 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 17
  %69 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 6, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %68, ptr noundef align 4 dereferenceable(12) %69, i32 12, i1 false) #20
  %70 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 18
  %71 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 6, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %70, ptr noundef align 4 dereferenceable(12) %71, i32 12, i1 false) #20
  %72 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 19
  %73 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 6, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %72, ptr noundef align 4 dereferenceable(12) %73, i32 12, i1 false) #20
  %74 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 6, i32 26
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 15
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 13
  %78 = tail call ptr @fb_match_mode(ptr noundef %41, ptr noundef %77) #20
  %79 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 20
  store ptr %78, ptr %79, align 4
  %80 = icmp eq ptr %78, null
  br i1 %80, label %308, label %81

81:                                               ; preds = %39
  %82 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 28
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i16, ptr %6, align 4
  %87 = zext i16 %86 to i32
  %88 = tail call fastcc i32 @con2fb_acquire_newinfo(ptr noundef %0, ptr noundef %23, i32 noundef %87, i32 noundef -1)
  br label %89

89:                                               ; preds = %85, %81
  %90 = load i32, ptr @fg_console, align 4
  %91 = load ptr, ptr %9, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %150

93:                                               ; preds = %89
  %94 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %90
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %121, label %97

97:                                               ; preds = %93
  %98 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %90
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.vc_data, ptr %99, i32 0, i32 28
  %101 = getelementptr inbounds %struct.vc_data, ptr %99, i32 0, i32 28, i32 3
  %102 = load ptr, ptr %101, align 4
  store ptr %102, ptr %9, align 4
  %103 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  %104 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 3
  store ptr %102, ptr %104, align 4
  %105 = load i32, ptr %100, align 4
  store i32 %105, ptr %103, align 4
  %106 = getelementptr inbounds %struct.vc_data, ptr %99, i32 0, i32 28, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  store i32 %107, ptr %108, align 4
  %109 = getelementptr inbounds %struct.vc_data, ptr %99, i32 0, i32 28, i32 2
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 2
  store i32 %110, ptr %111, align 4
  %112 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %90, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 1
  store i32 %113, ptr %114, align 4
  %115 = icmp eq i32 %113, 0
  br i1 %115, label %150, label %116

116:                                              ; preds = %97
  %117 = load ptr, ptr %9, align 4
  %118 = getelementptr i32, ptr %117, i32 -1
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %119, 1
  store i32 %120, ptr %118, align 4
  br label %150

121:                                              ; preds = %93
  %122 = load i8, ptr @fontname, align 1
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = tail call ptr @find_font(ptr noundef nonnull @fontname) #20
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %136

127:                                              ; preds = %124, %121
  %128 = load i32, ptr %41, align 4
  %129 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 6, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 10, i32 7
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 10, i32 8
  %134 = load i32, ptr %133, align 4
  %135 = tail call ptr @get_default_font(i32 noundef %128, i32 noundef %130, i32 noundef %132, i32 noundef %134) #20
  br label %136

136:                                              ; preds = %127, %124
  %137 = phi ptr [ %125, %124 ], [ %135, %127 ]
  %138 = getelementptr inbounds %struct.font_desc, ptr %137, i32 0, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  store i32 %139, ptr %140, align 4
  %141 = getelementptr inbounds %struct.font_desc, ptr %137, i32 0, i32 3
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  store i32 %142, ptr %143, align 4
  %144 = getelementptr inbounds %struct.font_desc, ptr %137, i32 0, i32 5
  %145 = load ptr, ptr %144, align 4
  store ptr %145, ptr %9, align 4
  %146 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 3
  store ptr %145, ptr %146, align 4
  %147 = getelementptr inbounds %struct.font_desc, ptr %137, i32 0, i32 4
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 2
  store i32 %148, ptr %149, align 4
  br label %150

150:                                              ; preds = %136, %116, %97, %89
  %151 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 7
  %152 = tail call i32 @fb_get_color_depth(ptr noundef %41, ptr noundef %151) #20
  %153 = icmp eq i32 %152, 1
  %154 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %155 = load i16, ptr %154, align 4
  %156 = select i1 %153, i16 0, i16 2048
  %157 = and i16 %155, -2049
  %158 = or i16 %157, %156
  store i16 %158, ptr %154, align 4
  %159 = select i1 %153, i16 2048, i16 30464
  %160 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 24
  store i16 %159, ptr %160, align 4
  %161 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  %162 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 2
  %163 = load i32, ptr %162, align 4
  %164 = icmp eq i32 %163, 256
  %165 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  br i1 %164, label %166, label %167

166:                                              ; preds = %150
  store i16 0, ptr %165, align 4
  br label %170

167:                                              ; preds = %150
  store i16 256, ptr %165, align 4
  br i1 %153, label %170, label %168

168:                                              ; preds = %167
  %169 = shl nuw i16 %159, 1
  store i16 %169, ptr %160, align 4
  br label %170

170:                                              ; preds = %168, %167, %166
  %171 = getelementptr inbounds %struct.vc_data, ptr %5, i32 0, i32 49
  %172 = load ptr, ptr %171, align 4
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = tail call i32 @con_set_default_unimap(ptr noundef %5) #20
  br label %177

177:                                              ; preds = %175, %170
  %178 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 49
  %179 = load ptr, ptr %178, align 4
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = tail call i32 @con_copy_unimap(ptr noundef %0, ptr noundef %5) #20
  br label %184

184:                                              ; preds = %182, %177
  %185 = load ptr, ptr %82, align 4
  %186 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 46
  %187 = load i16, ptr %186, align 4
  %188 = zext i16 %187 to i32
  %189 = tail call i32 @__msecs_to_jiffies(i32 noundef %188) #20
  %190 = getelementptr inbounds %struct.fbcon_ops, ptr %185, i32 0, i32 13
  store i32 %189, ptr %190, align 4
  %191 = load i32, ptr @initial_rotation, align 4
  %192 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 6
  store i32 %191, ptr %192, align 4
  %193 = icmp eq i32 %191, -1
  br i1 %193, label %194, label %199

194:                                              ; preds = %184
  %195 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 3
  %196 = load i32, ptr %195, align 4
  %197 = icmp eq i32 %196, -1
  %198 = select i1 %197, i32 0, i32 %196
  store i32 %198, ptr %192, align 4
  br label %199

199:                                              ; preds = %194, %184
  %200 = load ptr, ptr %82, align 4
  %201 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 2
  %202 = load i32, ptr %201, align 4
  %203 = and i32 %202, -131073
  store i32 %203, ptr %201, align 4
  %204 = load i16, ptr %6, align 4
  %205 = zext i16 %204 to i32
  %206 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %205
  %207 = getelementptr inbounds %struct.fbcon_ops, ptr %200, i32 0, i32 10
  store ptr %206, ptr %207, align 4
  %208 = load ptr, ptr %82, align 4
  %209 = load i32, ptr %201, align 4
  %210 = and i32 %209, 131072
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %199
  %213 = getelementptr inbounds %struct.fbcon_ops, ptr %208, i32 0, i32 10
  %214 = load ptr, ptr %213, align 4
  %215 = getelementptr inbounds %struct.fbcon_display, ptr %214, i32 0, i32 6
  %216 = load i32, ptr %215, align 4
  %217 = icmp slt i32 %216, 4
  br i1 %217, label %219, label %218

218:                                              ; preds = %212, %199
  br label %219

219:                                              ; preds = %218, %212
  %220 = phi i32 [ 0, %218 ], [ %216, %212 ]
  %221 = getelementptr inbounds %struct.fbcon_ops, ptr %208, i32 0, i32 20
  store i32 %220, ptr %221, align 4
  tail call void @fbcon_set_bitops(ptr noundef %200) #20
  %222 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %223 = load i32, ptr %222, align 4
  %224 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  %225 = load i32, ptr %224, align 4
  %226 = load i32, ptr %41, align 4
  %227 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 6, i32 1
  %228 = load i32, ptr %227, align 4
  %229 = getelementptr inbounds %struct.fbcon_ops, ptr %185, i32 0, i32 20
  %230 = load i32, ptr %229, align 4
  switch i32 %230, label %231 [
    i32 0, label %232
    i32 2, label %232
  ]

231:                                              ; preds = %219
  br label %232

232:                                              ; preds = %231, %219, %219
  %233 = phi i32 [ %228, %231 ], [ %226, %219 ], [ %226, %219 ]
  switch i32 %230, label %234 [
    i32 0, label %235
    i32 2, label %235
  ]

234:                                              ; preds = %232
  br label %235

235:                                              ; preds = %234, %232, %232
  %236 = phi i32 [ %226, %234 ], [ %228, %232 ], [ %228, %232 ]
  %237 = load i32, ptr %161, align 4
  %238 = udiv i32 %233, %237
  %239 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %240 = load i32, ptr %239, align 4
  %241 = udiv i32 %236, %240
  %242 = tail call zeroext i1 @con_is_visible(ptr noundef %0) #20
  br i1 %242, label %243, label %267

243:                                              ; preds = %235
  %244 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %245 = load i8, ptr %244, align 4
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %247, label %267

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 20
  %249 = load ptr, ptr %248, align 4
  %250 = getelementptr inbounds %struct.fb_ops, ptr %249, i32 0, i32 6
  %251 = load ptr, ptr %250, align 4
  %252 = icmp eq ptr %251, null
  br i1 %252, label %263, label %253

253:                                              ; preds = %247
  %254 = getelementptr inbounds %struct.fbcon_ops, ptr %185, i32 0, i32 19
  %255 = load i32, ptr %254, align 4
  %256 = and i32 %255, 1
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %253
  %259 = tail call i32 %251(ptr noundef %23) #20
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %263, label %261

261:                                              ; preds = %258
  %262 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %259) #21
  br label %263

263:                                              ; preds = %261, %258, %253, %247
  %264 = getelementptr inbounds %struct.fbcon_ops, ptr %185, i32 0, i32 19
  %265 = load i32, ptr %264, align 4
  %266 = or i32 %265, 1
  store i32 %266, ptr %264, align 4
  br label %267

267:                                              ; preds = %263, %243, %235
  %268 = getelementptr inbounds %struct.fbcon_ops, ptr %185, i32 0, i32 17
  store i32 0, ptr %268, align 4
  %269 = icmp eq i32 %1, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %267
  store i32 %238, ptr %222, align 4
  store i32 %241, ptr %224, align 4
  br label %273

271:                                              ; preds = %267
  %272 = tail call i32 @vc_resize(ptr noundef %0, i32 noundef %238, i32 noundef %241) #20
  br label %273

273:                                              ; preds = %271, %270
  br i1 %40, label %275, label %274

274:                                              ; preds = %273
  tail call fastcc void @fbcon_prepare_logo(ptr noundef %0, ptr noundef %23, i32 noundef %223, i32 noundef %225, i32 noundef %238, i32 noundef %241)
  br label %275

275:                                              ; preds = %274, %273
  %276 = getelementptr inbounds %struct.fbcon_ops, ptr %185, i32 0, i32 6
  %277 = load ptr, ptr %276, align 4
  %278 = icmp eq ptr %277, null
  br i1 %278, label %304, label %279

279:                                              ; preds = %275
  %280 = tail call i32 %277(ptr noundef %23, ptr noundef %0) #20
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %304, label %282

282:                                              ; preds = %279
  store i32 0, ptr %229, align 4
  %283 = load ptr, ptr %82, align 4
  %284 = load i32, ptr %201, align 4
  %285 = and i32 %284, -131073
  store i32 %285, ptr %201, align 4
  %286 = load i16, ptr %6, align 4
  %287 = zext i16 %286 to i32
  %288 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %287
  %289 = getelementptr inbounds %struct.fbcon_ops, ptr %283, i32 0, i32 10
  store ptr %288, ptr %289, align 4
  %290 = load ptr, ptr %82, align 4
  %291 = load i32, ptr %201, align 4
  %292 = and i32 %291, 131072
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %300

294:                                              ; preds = %282
  %295 = getelementptr inbounds %struct.fbcon_ops, ptr %290, i32 0, i32 10
  %296 = load ptr, ptr %295, align 4
  %297 = getelementptr inbounds %struct.fbcon_display, ptr %296, i32 0, i32 6
  %298 = load i32, ptr %297, align 4
  %299 = icmp slt i32 %298, 4
  br i1 %299, label %301, label %300

300:                                              ; preds = %294, %282
  br label %301

301:                                              ; preds = %300, %294
  %302 = phi i32 [ 0, %300 ], [ %298, %294 ]
  %303 = getelementptr inbounds %struct.fbcon_ops, ptr %290, i32 0, i32 20
  store i32 %302, ptr %303, align 4
  tail call void @fbcon_set_bitops(ptr noundef %283) #20
  br label %304

304:                                              ; preds = %301, %279, %275
  %305 = load i32, ptr @fg_console, align 4
  %306 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %305
  %307 = getelementptr inbounds %struct.fbcon_ops, ptr %185, i32 0, i32 10
  store ptr %306, ptr %307, align 4
  br label %308

308:                                              ; preds = %304, %39, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fbcon_deinit(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %3 = load i16, ptr %2, align 4
  %4 = zext i16 %3 to i32
  %5 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %4
  %6 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %4
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, -1
  br i1 %8, label %58, label %9

9:                                                ; preds = %1
  %10 = sext i8 %7 to i32
  %11 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %70, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 524288
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 28
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %14
  %23 = tail call zeroext i1 @con_is_visible(ptr noundef %0) #20
  br i1 %23, label %24, label %39

24:                                               ; preds = %22
  %25 = load ptr, ptr %19, align 4
  %26 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 9, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, @fb_flashcursor
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.fbcon_ops, ptr %25, i32 0, i32 19
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.fbcon_ops, ptr %25, i32 0, i32 8
  %36 = tail call i32 @del_timer_sync(ptr noundef %35) #20
  %37 = load i32, ptr %30, align 4
  %38 = and i32 %37, -3
  store i32 %38, ptr %30, align 4
  br label %39

39:                                               ; preds = %34, %29, %24, %22
  %40 = getelementptr inbounds %struct.fbcon_ops, ptr %20, i32 0, i32 19
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, -2
  store i32 %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %39, %14
  br i1 %18, label %44, label %56

44:                                               ; preds = %43
  %45 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %4, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %86, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %5, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %86, label %51

51:                                               ; preds = %48
  %52 = getelementptr i32, ptr %49, i32 -1
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, -1
  store i32 %54, ptr %52, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %82, label %86

56:                                               ; preds = %43
  store ptr null, ptr %5, align 4
  %57 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %4, i32 1
  store i32 0, ptr %57, align 4
  br label %89

58:                                               ; preds = %1
  %59 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %4, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %86, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %5, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %86, label %65

65:                                               ; preds = %62
  %66 = getelementptr i32, ptr %63, i32 -1
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, -1
  store i32 %68, ptr %66, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %82, label %86

70:                                               ; preds = %9
  %71 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %4, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %5, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %86, label %77

77:                                               ; preds = %74
  %78 = getelementptr i32, ptr %75, i32 -1
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, -1
  store i32 %80, ptr %78, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77, %65, %51
  %83 = phi ptr [ %45, %51 ], [ %59, %65 ], [ %71, %77 ]
  %84 = load ptr, ptr %5, align 4
  %85 = getelementptr i8, ptr %84, i32 -16
  tail call void @kfree(ptr noundef %85) #20
  br label %86

86:                                               ; preds = %82, %77, %74, %70, %65, %62, %58, %51, %48, %44
  %87 = phi ptr [ %45, %44 ], [ %45, %48 ], [ %45, %51 ], [ %59, %58 ], [ %59, %62 ], [ %59, %65 ], [ %71, %70 ], [ %71, %74 ], [ %71, %77 ], [ %83, %82 ]
  store ptr null, ptr %5, align 4
  store i32 0, ptr %87, align 4
  %88 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 3
  store ptr null, ptr %88, align 4
  br label %89

89:                                               ; preds = %86, %56
  %90 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %91 = load i16, ptr %90, align 4
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %138, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 15
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %138, label %97

97:                                               ; preds = %93
  store i16 0, ptr %90, align 4
  %98 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %99 = load i16, ptr %98, align 4
  %100 = and i16 %99, 2048
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %138, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 24
  %104 = load i16, ptr %103, align 4
  %105 = lshr i16 %104, 1
  store i16 %105, ptr %103, align 4
  %106 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 25
  %107 = load i16, ptr %106, align 2
  %108 = lshr i16 %107, 1
  store i16 %108, ptr %106, align 2
  %109 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 16
  %110 = load i32, ptr %109, align 4
  %111 = icmp ult i32 %110, 2
  br i1 %111, label %128, label %112

112:                                              ; preds = %102
  %113 = lshr i32 %110, 1
  %114 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %115 = load i32, ptr %114, align 4
  %116 = inttoptr i32 %115 to ptr
  br label %117

117:                                              ; preds = %117, %112
  %118 = phi i32 [ %125, %117 ], [ %113, %112 ]
  %119 = phi ptr [ %126, %117 ], [ %116, %112 ]
  %120 = load i16, ptr %119, align 2
  %121 = lshr i16 %120, 1
  %122 = and i16 %121, 32512
  %123 = and i16 %120, 255
  %124 = or i16 %122, %123
  store i16 %124, ptr %119, align 2
  %125 = add nsw i32 %118, -1
  %126 = getelementptr i16, ptr %119, i32 1
  %127 = icmp ugt i32 %118, 1
  br i1 %127, label %117, label %128

128:                                              ; preds = %117, %102
  %129 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %130 = load i16, ptr %129, align 4
  %131 = lshr i16 %130, 1
  %132 = and i16 %131, 32512
  %133 = and i16 %130, 255
  %134 = or i16 %132, %133
  store i16 %134, ptr %129, align 4
  %135 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 18
  %136 = load i8, ptr %135, align 1
  %137 = lshr i8 %136, 1
  store i8 %137, ptr %135, align 1
  br label %138

138:                                              ; preds = %128, %97, %93, %89
  %139 = tail call i32 @con_is_bound(ptr noundef nonnull @fb_con) #20
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %214

141:                                              ; preds = %211, %138
  %142 = phi i32 [ %212, %211 ], [ 0, %138 ]
  %143 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %142
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %211, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.fb_info, ptr %144, i32 0, i32 9, i32 2
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.fb_info, ptr %144, i32 0, i32 9
  %152 = tail call zeroext i1 @cancel_work_sync(ptr noundef %151) #20
  br label %153

153:                                              ; preds = %150, %146
  %154 = load i32, ptr @first_fb_vc, align 4
  %155 = load i32, ptr @last_fb_vc, align 4
  %156 = icmp sgt i32 %154, %155
  br i1 %156, label %211, label %157

157:                                              ; preds = %169, %153
  %158 = phi i1 [ false, %169 ], [ true, %153 ]
  %159 = phi i32 [ %170, %169 ], [ %154, %153 ]
  br label %160

160:                                              ; preds = %166, %157
  %161 = phi i32 [ %167, %166 ], [ %159, %157 ]
  %162 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %161
  %163 = load i8, ptr %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %142, %164
  br i1 %165, label %169, label %166

166:                                              ; preds = %160
  %167 = add i32 %161, 1
  %168 = icmp sgt i32 %167, %155
  br i1 %168, label %172, label %160

169:                                              ; preds = %160
  store i8 -1, ptr %162, align 1
  %170 = add i32 %161, 1
  %171 = icmp sgt i32 %170, %155
  br i1 %171, label %173, label %157

172:                                              ; preds = %166
  br i1 %158, label %211, label %173

173:                                              ; preds = %172, %169
  %174 = getelementptr inbounds %struct.fb_info, ptr %144, i32 0, i32 20
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.fb_ops, ptr %175, i32 0, i32 2
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %173
  %180 = tail call i32 %177(ptr noundef nonnull %144, i32 noundef 0) #20
  %181 = load ptr, ptr %174, align 4
  br label %182

182:                                              ; preds = %179, %173
  %183 = phi ptr [ %181, %179 ], [ %175, %173 ]
  %184 = load ptr, ptr %183, align 4
  tail call void @module_put(ptr noundef %184) #20
  %185 = getelementptr inbounds %struct.fb_info, ptr %144, i32 0, i32 28
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %207, label %188

188:                                              ; preds = %182
  %189 = load ptr, ptr %147, align 4
  %190 = icmp eq ptr %189, @fb_flashcursor
  br i1 %190, label %191, label %201

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.fbcon_ops, ptr %186, i32 0, i32 19
  %193 = load i32, ptr %192, align 4
  %194 = and i32 %193, 2
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.fbcon_ops, ptr %186, i32 0, i32 8
  %198 = tail call i32 @del_timer_sync(ptr noundef %197) #20
  %199 = load i32, ptr %192, align 4
  %200 = and i32 %199, -3
  store i32 %200, ptr %192, align 4
  br label %201

201:                                              ; preds = %196, %191, %188
  %202 = getelementptr inbounds %struct.fbcon_ops, ptr %186, i32 0, i32 25
  %203 = load ptr, ptr %202, align 4
  tail call void @kfree(ptr noundef %203) #20
  %204 = getelementptr inbounds %struct.fbcon_ops, ptr %186, i32 0, i32 9, i32 3
  %205 = load ptr, ptr %204, align 4
  tail call void @kfree(ptr noundef %205) #20
  %206 = load ptr, ptr %185, align 4
  tail call void @kfree(ptr noundef %206) #20
  store ptr null, ptr %185, align 4
  br label %207

207:                                              ; preds = %201, %182
  %208 = load ptr, ptr %147, align 4
  %209 = icmp eq ptr %208, @fb_flashcursor
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  store ptr null, ptr %147, align 4
  br label %211

211:                                              ; preds = %210, %207, %172, %153, %141
  %212 = add nuw nsw i32 %142, 1
  %213 = icmp eq i32 %212, 32
  br i1 %213, label %214, label %141

214:                                              ; preds = %211, %138
  %215 = load i16, ptr %2, align 4
  %216 = zext i16 %215 to i32
  %217 = load i32, ptr @logo_shown, align 4
  %218 = icmp eq i32 %217, %216
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  store i32 -1, ptr @logo_shown, align 4
  br label %220

220:                                              ; preds = %219, %214
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fbcon_clear(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = sext i8 %10 to i32
  %12 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 28
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 27
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %89

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %89

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.fbcon_ops, ptr %15, i32 0, i32 17
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %89

27:                                               ; preds = %23
  %28 = icmp ne i32 %3, 0
  %29 = icmp ne i32 %4, 0
  %30 = and i1 %28, %29
  br i1 %30, label %31, label %89

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 12
  %33 = load i32, ptr %32, align 4
  %34 = icmp ugt i32 %33, %1
  %35 = load i32, ptr @logo_lines, align 4
  %36 = icmp eq i32 %33, %35
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  store i32 0, ptr %32, align 4
  %39 = load ptr, ptr %12, align 4
  %40 = getelementptr inbounds %struct.fb_info, ptr %39, i32 0, i32 28
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.fb_info, ptr %39, i32 0, i32 27
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.fbcon_ops, ptr %41, i32 0, i32 17
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.fbcon_ops, ptr %41, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = load i32, ptr @margin_color, align 4
  tail call void %51(ptr noundef %0, ptr noundef %39, i32 noundef %52, i32 noundef 0) #20
  br label %53

53:                                               ; preds = %49, %45, %38, %31
  %54 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 3
  %57 = load i16, ptr %56, align 2
  %58 = sext i16 %57 to i32
  %59 = sub i32 %55, %58
  %60 = icmp ugt i32 %59, %1
  br i1 %60, label %61, label %82

61:                                               ; preds = %53
  %62 = add i32 %1, -1
  %63 = add i32 %62, %3
  %64 = icmp ult i32 %63, %59
  br i1 %64, label %82, label %65

65:                                               ; preds = %61
  %66 = sub i32 %59, %1
  %67 = getelementptr inbounds %struct.fbcon_ops, ptr %15, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = add i32 %58, %1
  %70 = icmp slt i32 %69, %55
  %71 = select i1 %70, i32 0, i32 %55
  %72 = sub i32 %69, %71
  tail call void %68(ptr noundef %0, ptr noundef %13, i32 noundef %72, i32 noundef %2, i32 noundef %66, i32 noundef %4) #20
  %73 = load ptr, ptr %67, align 4
  %74 = load i32, ptr %54, align 4
  %75 = load i16, ptr %56, align 2
  %76 = sext i16 %75 to i32
  %77 = add i32 %59, %76
  %78 = icmp slt i32 %77, %74
  %79 = select i1 %78, i32 0, i32 %74
  %80 = sub i32 %77, %79
  %81 = sub i32 %3, %66
  tail call void %73(ptr noundef %0, ptr noundef %13, i32 noundef %80, i32 noundef %2, i32 noundef %81, i32 noundef %4) #20
  br label %89

82:                                               ; preds = %61, %53
  %83 = getelementptr inbounds %struct.fbcon_ops, ptr %15, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = add i32 %58, %1
  %86 = icmp slt i32 %85, %55
  %87 = select i1 %86, i32 0, i32 %55
  %88 = sub i32 %85, %87
  tail call void %84(ptr noundef %0, ptr noundef %13, i32 noundef %88, i32 noundef %2, i32 noundef %3, i32 noundef %4) #20
  br label %89

89:                                               ; preds = %82, %65, %27, %23, %19, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fbcon_putc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #20
  %6 = trunc i32 %1 to i16
  store i16 %6, ptr %5, align 2
  call void @fbcon_putcs(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %2, i32 noundef %3)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fbcon_putcs(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = sext i8 %10 to i32
  %12 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 28
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 27
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %138

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %138

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.fbcon_ops, ptr %15, i32 0, i32 17
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %138

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.fbcon_ops, ptr %15, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 3
  %33 = load i16, ptr %32, align 2
  %34 = sext i16 %33 to i32
  %35 = add i32 %34, %3
  %36 = icmp slt i32 %35, %31
  %37 = select i1 %36, i32 0, i32 %31
  %38 = sub i32 %35, %37
  %39 = load i16, ptr %1, align 2
  %40 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6
  %41 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 7
  %42 = tail call i32 @fb_get_color_depth(ptr noundef %40, ptr noundef %41) #20
  %43 = load i32, ptr @console_blanked, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %27
  %46 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %47 = load i16, ptr %46, align 4
  %48 = icmp eq i16 %47, 0
  %49 = select i1 %48, i16 255, i16 511
  %50 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %51 = load i16, ptr %50, align 4
  %52 = and i16 %49, %51
  br label %53

53:                                               ; preds = %45, %27
  %54 = phi i16 [ %52, %45 ], [ %39, %27 ]
  %55 = icmp eq i32 %42, 1
  br i1 %55, label %64, label %56

56:                                               ; preds = %53
  %57 = zext i16 %54 to i32
  %58 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %59 = load i16, ptr %58, align 4
  %60 = icmp eq i16 %59, 0
  %61 = select i1 %60, i32 8, i32 9
  %62 = lshr i32 %57, %61
  %63 = and i32 %62, 15
  switch i32 %42, label %89 [
    i32 3, label %84
    i32 2, label %82
  ]

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 9, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 8, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = tail call i32 @llvm.umax.i32(i32 %66, i32 %68) #20
  %70 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 10, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = tail call i32 @llvm.umax.i32(i32 %71, i32 %69) #20
  %73 = shl i32 4095, %72
  %74 = and i32 %73, 255
  %75 = xor i32 %74, 255
  %76 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 7, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 0, i32 %75
  %80 = select i1 %78, i32 %75, i32 0
  %81 = select i1 %44, i32 %79, i32 %80
  br label %89

82:                                               ; preds = %56
  %83 = icmp ult i32 %63, 9
  br i1 %83, label %86, label %89

84:                                               ; preds = %56
  %85 = and i32 %62, 7
  br label %89

86:                                               ; preds = %82
  %87 = getelementptr inbounds [9 x i32], ptr @switch.table.fbcon_putcs.31, i32 0, i32 %63
  %88 = load i32, ptr %87, align 4
  br label %89

89:                                               ; preds = %86, %84, %82, %64, %56
  %90 = phi i32 [ %63, %56 ], [ %85, %84 ], [ %81, %64 ], [ %88, %86 ], [ 3, %82 ]
  %91 = load i16, ptr %1, align 2
  %92 = tail call i32 @fb_get_color_depth(ptr noundef %40, ptr noundef %41) #20
  %93 = load i32, ptr @console_blanked, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %97 = load i16, ptr %96, align 4
  %98 = icmp eq i16 %97, 0
  %99 = select i1 %98, i16 255, i16 511
  %100 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %101 = load i16, ptr %100, align 4
  %102 = and i16 %99, %101
  br label %103

103:                                              ; preds = %95, %89
  %104 = phi i16 [ %102, %95 ], [ %91, %89 ]
  %105 = icmp eq i32 %92, 1
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = zext i16 %104 to i32
  %108 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %109 = load i16, ptr %108, align 4
  %110 = icmp eq i16 %109, 0
  %111 = select i1 %110, i32 12, i32 13
  %112 = lshr i32 %107, %111
  switch i32 %92, label %136 [
    i32 3, label %131
    i32 2, label %129
  ]

113:                                              ; preds = %103
  %114 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 9, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 8, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = tail call i32 @llvm.umax.i32(i32 %115, i32 %117) #20
  %119 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 10, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = tail call i32 @llvm.umax.i32(i32 %120, i32 %118) #20
  %122 = shl i32 4095, %121
  %123 = and i32 %122, 255
  %124 = xor i32 %123, 255
  %125 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 7, i32 5
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i32 %124, i32 0
  br label %136

129:                                              ; preds = %106
  %130 = icmp ult i32 %112, 9
  br i1 %130, label %133, label %136

131:                                              ; preds = %106
  %132 = and i32 %112, 7
  br label %136

133:                                              ; preds = %129
  %134 = getelementptr inbounds [9 x i32], ptr @switch.table.fbcon_putcs.31, i32 0, i32 %112
  %135 = load i32, ptr %134, align 4
  br label %136

136:                                              ; preds = %133, %131, %129, %113, %106
  %137 = phi i32 [ %112, %106 ], [ %132, %131 ], [ %128, %113 ], [ %135, %133 ], [ 3, %129 ]
  tail call void %29(ptr noundef %0, ptr noundef %13, ptr noundef %1, i32 noundef %2, i32 noundef %38, i32 noundef %4, i32 noundef %90, i32 noundef %137) #20
  br label %138

138:                                              ; preds = %136, %23, %19, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @fbcon_scroll(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = sext i8 %10 to i32
  %12 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 28
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 27
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %75

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %75

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.fbcon_ops, ptr %15, i32 0, i32 17
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %75

27:                                               ; preds = %23
  tail call void @fbcon_cursor(ptr noundef %0, i32 noundef 2)
  switch i32 %3, label %75 [
    i32 0, label %28
    i32 1, label %51
  ]

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %4)
  %32 = add i32 %31, %1
  %33 = sub i32 %2, %32
  %34 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = mul i32 %31, %35
  tail call fastcc void @fbcon_redraw(ptr noundef %0, i32 noundef %1, i32 noundef %33, i32 noundef %36)
  %37 = sub i32 %2, %31
  %38 = load i32, ptr %34, align 4
  tail call void @fbcon_clear(ptr noundef %0, i32 noundef %37, i32 noundef 0, i32 noundef %31, i32 noundef %38)
  %39 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = mul i32 %42, %37
  %44 = add i32 %43, %40
  %45 = inttoptr i32 %44 to ptr
  %46 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %47 = load i16, ptr %46, align 4
  %48 = mul i32 %42, %31
  %49 = lshr i32 %48, 1
  %50 = tail call ptr @memset16(ptr noundef %45, i16 noundef zeroext %47, i32 noundef %49) #20
  br label %75

51:                                               ; preds = %27
  %52 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = tail call i32 @llvm.umin.i32(i32 %53, i32 %4)
  %55 = add i32 %2, -1
  %56 = add i32 %54, %1
  %57 = sub i32 %2, %56
  %58 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = mul i32 %59, %54
  %61 = sub i32 0, %60
  tail call fastcc void @fbcon_redraw(ptr noundef %0, i32 noundef %55, i32 noundef %57, i32 noundef %61)
  %62 = load i32, ptr %58, align 4
  tail call void @fbcon_clear(ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef %54, i32 noundef %62)
  %63 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 6
  %66 = load i32, ptr %65, align 4
  %67 = mul i32 %66, %1
  %68 = add i32 %67, %64
  %69 = inttoptr i32 %68 to ptr
  %70 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %71 = load i16, ptr %70, align 4
  %72 = mul i32 %66, %54
  %73 = lshr i32 %72, 1
  %74 = tail call ptr @memset16(ptr noundef %69, i16 noundef zeroext %71, i32 noundef %73) #20
  br label %75

75:                                               ; preds = %51, %28, %27, %23, %19, %5
  %76 = phi i1 [ true, %51 ], [ true, %28 ], [ true, %23 ], [ false, %27 ], [ true, %19 ], [ true, %5 ]
  ret i1 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fbcon_switch(ptr noundef %0) #1 {
  %2 = alloca %struct.fb_var_screeninfo, align 4
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %2) #20
  %6 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = sext i8 %7 to i32
  %9 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 28
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr @logo_shown, align 4
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %13
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.vc_data, ptr %17, i32 0, i32 12
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr @logo_lines, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.vc_data, ptr %17, i32 0, i32 13
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.vc_data, ptr %17, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, ptr %18, align 4
  br label %29

29:                                               ; preds = %28, %22, %15
  store i32 -1, ptr @logo_shown, align 4
  br label %30

30:                                               ; preds = %29, %1
  %31 = getelementptr inbounds %struct.fbcon_ops, ptr %12, i32 0, i32 12
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %32
  %36 = load i8, ptr %35, align 1
  %37 = sext i8 %36 to i32
  %38 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %37
  %39 = load ptr, ptr %38, align 4
  br label %40

40:                                               ; preds = %34, %30
  %41 = phi ptr [ %39, %34 ], [ null, %30 ]
  br label %42

42:                                               ; preds = %55, %40
  %43 = phi i32 [ 0, %40 ], [ %56, %55 ]
  %44 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.fb_info, ptr %45, i32 0, i32 28
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i16, ptr %3, align 4
  %53 = zext i16 %52 to i32
  %54 = getelementptr inbounds %struct.fbcon_ops, ptr %49, i32 0, i32 12
  store i32 %53, ptr %54, align 4
  br label %55

55:                                               ; preds = %51, %47, %42
  %56 = add nuw nsw i32 %43, 1
  %57 = icmp eq i32 %56, 32
  br i1 %57, label %58, label %42

58:                                               ; preds = %55
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %2, i8 0, i32 160, i1 false)
  %59 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %5, i32 20
  %60 = load ptr, ptr %59, align 4
  call void @fb_videomode_to_var(ptr noundef nonnull %2, ptr noundef %60) #20
  %61 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %5, i32 7
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 2
  store i32 %62, ptr %63, align 4
  %64 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %5, i32 8
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 3
  store i32 %65, ptr %66, align 4
  %67 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %5, i32 11
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 6
  store i32 %68, ptr %69, align 4
  %70 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %5, i32 12
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 7
  store i32 %71, ptr %72, align 4
  %73 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %5, i32 13
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 12
  store i32 %74, ptr %75, align 4
  %76 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %5, i32 14
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 16
  store i32 %77, ptr %78, align 4
  %79 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %5, i32 9
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 14
  store i32 %80, ptr %81, align 4
  %82 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %5, i32 10
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 15
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 8
  %86 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %5, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %85, ptr noundef align 4 dereferenceable(12) %86, i32 12, i1 false) #20
  %87 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 9
  %88 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %5, i32 17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %87, ptr noundef align 4 dereferenceable(12) %88, i32 12, i1 false) #20
  %89 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 10
  %90 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %5, i32 18
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %89, ptr noundef align 4 dereferenceable(12) %90, i32 12, i1 false) #20
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 11
  %92 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %5, i32 19
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %91, ptr noundef align 4 dereferenceable(12) %92, i32 12, i1 false) #20
  %93 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %5, i32 15
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 26
  store i32 %94, ptr %95, align 4
  %96 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 13
  store i32 0, ptr %96, align 4
  %97 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 6
  %98 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 6, i32 13
  store i32 0, ptr %98, align 4
  %99 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 6, i32 25
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, -256
  %102 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 25
  %103 = load i32, ptr %102, align 4
  %104 = or i32 %103, %101
  store i32 %104, ptr %102, align 4
  %105 = call i32 @fb_set_var(ptr noundef %10, ptr noundef nonnull %2) #20
  %106 = getelementptr inbounds %struct.fbcon_ops, ptr %12, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(160) %106, ptr noundef align 4 dereferenceable(160) %97, i32 160, i1 false)
  %107 = icmp eq ptr %41, null
  br i1 %107, label %143, label %108

108:                                              ; preds = %58
  %109 = icmp eq ptr %41, %10
  br i1 %109, label %110, label %115

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 2
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %112, 262144
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %143, label %115

115:                                              ; preds = %110, %108
  %116 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 20
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.fb_ops, ptr %117, i32 0, i32 6
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %115
  %122 = call i32 %119(ptr noundef %10) #20
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %122) #21
  br label %126

126:                                              ; preds = %124, %121, %115
  br i1 %109, label %143, label %127

127:                                              ; preds = %126
  %128 = getelementptr inbounds %struct.fb_info, ptr %41, i32 0, i32 28
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.fb_info, ptr %41, i32 0, i32 9, i32 2
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, @fb_flashcursor
  br i1 %132, label %133, label %143

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.fbcon_ops, ptr %129, i32 0, i32 19
  %135 = load i32, ptr %134, align 4
  %136 = and i32 %135, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.fbcon_ops, ptr %129, i32 0, i32 8
  %140 = call i32 @del_timer_sync(ptr noundef %139) #20
  %141 = load i32, ptr %134, align 4
  %142 = and i32 %141, -3
  store i32 %142, ptr %134, align 4
  br label %143

143:                                              ; preds = %138, %133, %127, %126, %110, %58
  %144 = load ptr, ptr %11, align 4
  %145 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 27
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %150 = load i8, ptr %149, align 4
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.fbcon_ops, ptr %144, i32 0, i32 17
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.fbcon_ops, ptr %12, i32 0, i32 16
  %158 = load i32, ptr %157, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %174, label %160

160:                                              ; preds = %156, %152, %148, %143
  %161 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 9, i32 2
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, @fb_flashcursor
  br i1 %163, label %164, label %201

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.fbcon_ops, ptr %144, i32 0, i32 19
  %166 = load i32, ptr %165, align 4
  %167 = and i32 %166, 2
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %201, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.fbcon_ops, ptr %144, i32 0, i32 8
  %171 = call i32 @del_timer_sync(ptr noundef %170) #20
  %172 = load i32, ptr %165, align 4
  %173 = and i32 %172, -3
  store i32 %173, ptr %165, align 4
  br label %201

174:                                              ; preds = %156
  %175 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 9
  %176 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 9, i32 2
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  %179 = icmp eq ptr %177, @fb_flashcursor
  %180 = or i1 %178, %179
  br i1 %180, label %181, label %201

181:                                              ; preds = %174
  %182 = getelementptr inbounds %struct.fbcon_ops, ptr %144, i32 0, i32 19
  %183 = load i32, ptr %182, align 4
  %184 = and i32 %183, 2
  %185 = icmp ne i32 %184, 0
  %186 = load i1, ptr @fbcon_cursor_noblink, align 4
  %187 = select i1 %185, i1 true, i1 %186
  br i1 %187, label %201, label %188

188:                                              ; preds = %181
  br i1 %178, label %189, label %192

189:                                              ; preds = %188
  store i32 -32, ptr %175, align 4
  %190 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 9, i32 1
  store volatile ptr %190, ptr %190, align 4
  %191 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 9, i32 1, i32 1
  store ptr %190, ptr %191, align 4
  store ptr @fb_flashcursor, ptr %176, align 4
  br label %192

192:                                              ; preds = %189, %188
  %193 = getelementptr inbounds %struct.fbcon_ops, ptr %144, i32 0, i32 8
  call void @init_timer_key(ptr noundef %193, ptr noundef nonnull @cursor_timer_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #20
  %194 = load volatile i32, ptr @jiffies, align 64
  %195 = getelementptr inbounds %struct.fbcon_ops, ptr %144, i32 0, i32 13
  %196 = load i32, ptr %195, align 4
  %197 = add i32 %196, %194
  %198 = call i32 @mod_timer(ptr noundef %193, i32 noundef %197) #20
  %199 = load i32, ptr %182, align 4
  %200 = or i32 %199, 2
  store i32 %200, ptr %182, align 4
  br label %201

201:                                              ; preds = %192, %181, %174, %169, %164, %160
  %202 = load ptr, ptr %11, align 4
  %203 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 2
  %204 = load i32, ptr %203, align 4
  %205 = and i32 %204, -131073
  store i32 %205, ptr %203, align 4
  %206 = load i16, ptr %3, align 4
  %207 = zext i16 %206 to i32
  %208 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %207
  %209 = getelementptr inbounds %struct.fbcon_ops, ptr %202, i32 0, i32 10
  store ptr %208, ptr %209, align 4
  %210 = load ptr, ptr %11, align 4
  %211 = load i32, ptr %203, align 4
  %212 = and i32 %211, 131072
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %201
  %215 = getelementptr inbounds %struct.fbcon_ops, ptr %210, i32 0, i32 10
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.fbcon_display, ptr %216, i32 0, i32 6
  %218 = load i32, ptr %217, align 4
  %219 = icmp slt i32 %218, 4
  br i1 %219, label %221, label %220

220:                                              ; preds = %214, %201
  br label %221

221:                                              ; preds = %220, %214
  %222 = phi i32 [ 0, %220 ], [ %218, %214 ]
  %223 = getelementptr inbounds %struct.fbcon_ops, ptr %210, i32 0, i32 20
  store i32 %222, ptr %223, align 4
  call void @fbcon_set_bitops(ptr noundef %202) #20
  %224 = getelementptr inbounds %struct.fbcon_ops, ptr %12, i32 0, i32 15
  store i32 1, ptr %224, align 4
  %225 = getelementptr inbounds %struct.fbcon_ops, ptr %12, i32 0, i32 6
  %226 = load ptr, ptr %225, align 4
  %227 = icmp eq ptr %226, null
  br i1 %227, label %254, label %228

228:                                              ; preds = %221
  %229 = call i32 %226(ptr noundef %10, ptr noundef %0) #20
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %254, label %231

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.fbcon_ops, ptr %12, i32 0, i32 20
  store i32 0, ptr %232, align 4
  %233 = load ptr, ptr %11, align 4
  %234 = load i32, ptr %203, align 4
  %235 = and i32 %234, -131073
  store i32 %235, ptr %203, align 4
  %236 = load i16, ptr %3, align 4
  %237 = zext i16 %236 to i32
  %238 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %237
  %239 = getelementptr inbounds %struct.fbcon_ops, ptr %233, i32 0, i32 10
  store ptr %238, ptr %239, align 4
  %240 = load ptr, ptr %11, align 4
  %241 = load i32, ptr %203, align 4
  %242 = and i32 %241, 131072
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %231
  %245 = getelementptr inbounds %struct.fbcon_ops, ptr %240, i32 0, i32 10
  %246 = load ptr, ptr %245, align 4
  %247 = getelementptr inbounds %struct.fbcon_display, ptr %246, i32 0, i32 6
  %248 = load i32, ptr %247, align 4
  %249 = icmp slt i32 %248, 4
  br i1 %249, label %251, label %250

250:                                              ; preds = %244, %231
  br label %251

251:                                              ; preds = %250, %244
  %252 = phi i32 [ 0, %250 ], [ %248, %244 ]
  %253 = getelementptr inbounds %struct.fbcon_ops, ptr %240, i32 0, i32 20
  store i32 %252, ptr %253, align 4
  call void @fbcon_set_bitops(ptr noundef %233) #20
  br label %254

254:                                              ; preds = %251, %228, %221
  %255 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 7
  %256 = call i32 @fb_get_color_depth(ptr noundef %97, ptr noundef %255) #20
  %257 = icmp eq i32 %256, 1
  %258 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %259 = load i16, ptr %258, align 4
  %260 = select i1 %257, i16 0, i16 2048
  %261 = and i16 %259, -2049
  %262 = or i16 %261, %260
  store i16 %262, ptr %258, align 4
  %263 = select i1 %257, i16 2048, i16 30464
  %264 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 24
  store i16 %263, ptr %264, align 4
  %265 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 2
  %266 = load i32, ptr %265, align 4
  %267 = icmp ugt i32 %266, 256
  br i1 %267, label %268, label %270

268:                                              ; preds = %254
  %269 = shl nuw i16 %263, 1
  store i16 %269, ptr %264, align 4
  br label %270

270:                                              ; preds = %268, %254
  %271 = load ptr, ptr %11, align 4
  %272 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 6, i32 1
  %275 = getelementptr inbounds %struct.fbcon_ops, ptr %271, i32 0, i32 20
  %276 = load i32, ptr %275, align 4
  switch i32 %276, label %277 [
    i32 0, label %278
    i32 2, label %278
  ]

277:                                              ; preds = %270
  br label %278

278:                                              ; preds = %277, %270, %270
  %279 = phi ptr [ %97, %277 ], [ %274, %270 ], [ %274, %270 ]
  %280 = load i32, ptr %279, align 4
  %281 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 6, i32 3
  switch i32 %276, label %282 [
    i32 0, label %284
    i32 2, label %284
  ]

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.fb_info, ptr %10, i32 0, i32 6, i32 2
  br label %284

284:                                              ; preds = %282, %278, %278
  %285 = phi ptr [ %283, %282 ], [ %281, %278 ], [ %281, %278 ]
  %286 = load i32, ptr %285, align 4
  %287 = freeze i32 %286
  %288 = freeze i32 %273
  %289 = sdiv i32 %287, %288
  %290 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %5, i32 4
  store i32 %289, ptr %290, align 4
  %291 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  %292 = load i32, ptr %291, align 4
  %293 = add i32 %292, 1
  %294 = mul i32 %293, %273
  %295 = icmp ugt i32 %280, %294
  br i1 %295, label %296, label %301

296:                                              ; preds = %284
  %297 = mul i32 %292, %273
  %298 = sub i32 %280, %297
  %299 = udiv i32 %298, %273
  %300 = sub i32 %289, %299
  store i32 %300, ptr %290, align 4
  br label %301

301:                                              ; preds = %296, %284
  %302 = phi i32 [ %300, %296 ], [ %289, %284 ]
  %303 = srem i32 %280, %273
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %311, label %305

305:                                              ; preds = %301
  %306 = mul i32 %289, %288
  %307 = sub i32 %287, %306
  %308 = icmp slt i32 %307, %303
  br i1 %308, label %309, label %311

309:                                              ; preds = %305
  %310 = add i32 %302, -1
  store i32 %310, ptr %290, align 4
  br label %311

311:                                              ; preds = %309, %305, %301
  %312 = load ptr, ptr %11, align 4
  %313 = load i32, ptr %145, align 4
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %330

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %317 = load i8, ptr %316, align 4
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %319, label %330

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.fbcon_ops, ptr %312, i32 0, i32 17
  %321 = load i32, ptr %320, align 4
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %330

323:                                              ; preds = %319
  %324 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %5, i32 3
  store i16 0, ptr %324, align 2
  %325 = getelementptr inbounds %struct.fbcon_ops, ptr %12, i32 0, i32 7, i32 5
  store i32 0, ptr %325, align 4
  %326 = getelementptr inbounds %struct.fbcon_ops, ptr %12, i32 0, i32 7, i32 4
  store i32 0, ptr %326, align 4
  %327 = getelementptr inbounds %struct.fbcon_ops, ptr %12, i32 0, i32 5
  %328 = load ptr, ptr %327, align 4
  %329 = call i32 %328(ptr noundef %10) #20
  br label %330

330:                                              ; preds = %323, %319, %315, %311
  call void @fbcon_set_palette(ptr noundef %0, ptr noundef nonnull @color_table)
  %331 = load i16, ptr %3, align 4
  %332 = zext i16 %331 to i32
  %333 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %332
  %334 = load i8, ptr %333, align 1
  %335 = sext i8 %334 to i32
  %336 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %335
  %337 = load ptr, ptr %336, align 4
  %338 = getelementptr inbounds %struct.fb_info, ptr %337, i32 0, i32 28
  %339 = load ptr, ptr %338, align 4
  %340 = getelementptr inbounds %struct.fb_info, ptr %337, i32 0, i32 27
  %341 = load i32, ptr %340, align 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %355

343:                                              ; preds = %330
  %344 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %345 = load i8, ptr %344, align 4
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %347, label %355

347:                                              ; preds = %343
  %348 = getelementptr inbounds %struct.fbcon_ops, ptr %339, i32 0, i32 17
  %349 = load i32, ptr %348, align 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %355

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.fbcon_ops, ptr %339, i32 0, i32 3
  %353 = load ptr, ptr %352, align 4
  %354 = load i32, ptr @margin_color, align 4
  call void %353(ptr noundef %0, ptr noundef %337, i32 noundef %354, i32 noundef 0) #20
  br label %355

355:                                              ; preds = %351, %347, %343, %330
  %356 = load i32, ptr @logo_shown, align 4
  %357 = icmp eq i32 %356, -2
  br i1 %357, label %358, label %376

358:                                              ; preds = %355
  %359 = load i32, ptr @fg_console, align 4
  store i32 %359, ptr @logo_shown, align 4
  %360 = getelementptr inbounds %struct.fbcon_ops, ptr %12, i32 0, i32 20
  %361 = load i32, ptr %360, align 4
  %362 = call i32 @fb_show_logo(ptr noundef %10, i32 noundef %361) #20
  %363 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %364 = load i32, ptr %363, align 4
  %365 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 6
  %366 = load i32, ptr %365, align 4
  %367 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 12
  %368 = load i32, ptr %367, align 4
  %369 = mul i32 %368, %366
  %370 = add i32 %369, %364
  %371 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 13
  %372 = load i32, ptr %371, align 4
  %373 = sub i32 %372, %368
  %374 = mul i32 %373, %366
  %375 = lshr i32 %374, 1
  call void @update_region(ptr noundef %0, i32 noundef %370, i32 noundef %375) #20
  br label %376

376:                                              ; preds = %358, %355
  %377 = phi i32 [ 0, %358 ], [ 1, %355 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %2) #20
  ret i32 %377
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fbcon_blank(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.fb_var_screeninfo, align 4
  %5 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = sext i8 %9 to i32
  %11 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 28
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %4) #20
  %17 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %4, ptr noundef align 4 dereferenceable(160) %17, i32 160, i1 false)
  %18 = getelementptr inbounds %struct.fbcon_ops, ptr %14, i32 0, i32 17
  store i32 1, ptr %18, align 4
  %19 = icmp eq i32 %1, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %4, i32 0, i32 13
  store i32 640, ptr %21, align 4
  %22 = call i32 @fb_set_var(ptr noundef %12, ptr noundef nonnull %4) #20
  store i32 0, ptr %18, align 4
  %23 = getelementptr inbounds %struct.fbcon_ops, ptr %14, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(160) %23, ptr noundef align 4 dereferenceable(160) %17, i32 160, i1 false)
  br label %24

24:                                               ; preds = %20, %16
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %4) #20
  %25 = load ptr, ptr %13, align 4
  br label %26

26:                                               ; preds = %24, %3
  %27 = phi ptr [ %25, %24 ], [ %14, %3 ]
  %28 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 27
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %33 = load i8, ptr %32, align 4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.fbcon_ops, ptr %27, i32 0, i32 17
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.fbcon_ops, ptr %14, i32 0, i32 16
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, %1
  br i1 %42, label %63, label %43

43:                                               ; preds = %39
  store i32 %1, ptr %40, align 4
  %44 = icmp eq i32 %1, 0
  %45 = select i1 %44, i32 1, i32 2
  call void @fbcon_cursor(ptr noundef %0, i32 noundef %45)
  %46 = zext i1 %44 to i32
  %47 = getelementptr inbounds %struct.fbcon_ops, ptr %14, i32 0, i32 14
  store i32 %46, ptr %47, align 4
  %48 = call i32 @fb_blank(ptr noundef %12, i32 noundef %1) #20
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %43
  br i1 %44, label %65, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %53 = load i16, ptr %52, align 4
  %54 = icmp eq i16 %53, 0
  %55 = select i1 %54, i16 255, i16 511
  %56 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %57 = load i16, ptr %56, align 4
  %58 = and i16 %55, %57
  store i16 %58, ptr %56, align 4
  %59 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  call void @fbcon_clear(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %60, i32 noundef %62) #20
  store i16 %57, ptr %56, align 4
  br label %66

63:                                               ; preds = %43, %39
  %64 = icmp eq i32 %1, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %63, %50
  call void @redraw_screen(ptr noundef %0, i32 noundef 0) #20
  br label %66

66:                                               ; preds = %65, %63, %51, %35, %31, %26
  %67 = load ptr, ptr %13, align 4
  br i1 %15, label %68, label %83

68:                                               ; preds = %66
  %69 = load i32, ptr %28, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %73 = load i8, ptr %72, align 4
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.fbcon_ops, ptr %67, i32 0, i32 17
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.fbcon_ops, ptr %14, i32 0, i32 16
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %79, %75, %71, %68, %66
  %84 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 9, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, @fb_flashcursor
  br i1 %86, label %87, label %124

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.fbcon_ops, ptr %67, i32 0, i32 19
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %124, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.fbcon_ops, ptr %67, i32 0, i32 8
  %94 = call i32 @del_timer_sync(ptr noundef %93) #20
  %95 = load i32, ptr %88, align 4
  %96 = and i32 %95, -3
  store i32 %96, ptr %88, align 4
  br label %124

97:                                               ; preds = %79
  %98 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 9
  %99 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 9, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  %102 = icmp eq ptr %100, @fb_flashcursor
  %103 = or i1 %101, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.fbcon_ops, ptr %67, i32 0, i32 19
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, 2
  %108 = icmp ne i32 %107, 0
  %109 = load i1, ptr @fbcon_cursor_noblink, align 4
  %110 = select i1 %108, i1 true, i1 %109
  br i1 %110, label %124, label %111

111:                                              ; preds = %104
  br i1 %101, label %112, label %115

112:                                              ; preds = %111
  store i32 -32, ptr %98, align 4
  %113 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 9, i32 1
  store volatile ptr %113, ptr %113, align 4
  %114 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 9, i32 1, i32 1
  store ptr %113, ptr %114, align 4
  store ptr @fb_flashcursor, ptr %99, align 4
  br label %115

115:                                              ; preds = %112, %111
  %116 = getelementptr inbounds %struct.fbcon_ops, ptr %67, i32 0, i32 8
  call void @init_timer_key(ptr noundef %116, ptr noundef nonnull @cursor_timer_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #20
  %117 = load volatile i32, ptr @jiffies, align 64
  %118 = getelementptr inbounds %struct.fbcon_ops, ptr %67, i32 0, i32 13
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %119, %117
  %121 = call i32 @mod_timer(ptr noundef %116, i32 noundef %120) #20
  %122 = load i32, ptr %105, align 4
  %123 = or i32 %122, 2
  store i32 %123, ptr %105, align 4
  br label %124

124:                                              ; preds = %115, %104, %97, %92, %87, %83
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fbcon_set_font(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.console_font, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %1, align 4
  %7 = getelementptr inbounds %struct.console_font, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.console_font, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = add i32 %6, 7
  %12 = lshr i32 %11, 3
  switch i32 %5, label %94 [
    i32 512, label %13
    i32 256, label %13
  ]

13:                                               ; preds = %3, %3
  %14 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  %20 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.fb_info, ptr %21, i32 0, i32 10, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %6, -1
  %25 = shl nuw i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %94, label %28

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.fb_info, ptr %21, i32 0, i32 10, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %8, -1
  %32 = shl nuw i32 1, %31
  %33 = and i32 %30, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %94, label %35

35:                                               ; preds = %28
  %36 = mul i32 %12, %8
  %37 = mul i32 %36, %5
  %38 = add i32 %37, 16
  %39 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %38, i32 noundef 1051840) #25
  %40 = icmp eq ptr %39, null
  br i1 %40, label %94, label %41

41:                                               ; preds = %35
  store i64 0, ptr %39, align 64
  %42 = getelementptr i8, ptr %39, i32 16
  %43 = getelementptr i8, ptr %39, i32 8
  store i32 %37, ptr %43, align 8
  %44 = getelementptr i8, ptr %39, i32 12
  store i32 0, ptr %44, align 4
  %45 = shl i32 %12, 5
  br label %46

46:                                               ; preds = %46, %41
  %47 = phi i32 [ 0, %41 ], [ %52, %46 ]
  %48 = mul i32 %36, %47
  %49 = getelementptr i8, ptr %42, i32 %48
  %50 = mul i32 %45, %47
  %51 = getelementptr i8, ptr %10, i32 %50
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %49, ptr align 1 %51, i32 %36, i1 false)
  %52 = add nuw i32 %47, 1
  %53 = icmp eq i32 %52, %5
  br i1 %53, label %54, label %46

54:                                               ; preds = %46
  %55 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %42, i32 noundef %37) #26
  store i32 %55, ptr %39, align 64
  %56 = load i32, ptr @first_fb_vc, align 4
  %57 = load i32, ptr @last_fb_vc, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %90, label %59

59:                                               ; preds = %87, %54
  %60 = phi i32 [ %88, %87 ], [ %56, %54 ]
  %61 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %60
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %60
  %64 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %60, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %87, label %67

67:                                               ; preds = %59
  %68 = load ptr, ptr %63, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %87, label %70

70:                                               ; preds = %67
  %71 = getelementptr i32, ptr %68, i32 -4
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, %55
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = getelementptr i32, ptr %68, i32 -2
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, %37
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.vc_data, ptr %62, i32 0, i32 28
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, %6
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = tail call i32 @bcmp(ptr nonnull %68, ptr %42, i32 %37)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  tail call void @kfree(ptr noundef nonnull %39) #20
  %86 = load ptr, ptr %63, align 4
  br label %90

87:                                               ; preds = %82, %78, %74, %70, %67, %59
  %88 = add i32 %60, 1
  %89 = icmp sgt i32 %88, %57
  br i1 %89, label %90, label %59

90:                                               ; preds = %87, %85, %54
  %91 = phi ptr [ %86, %85 ], [ %42, %54 ], [ %42, %87 ]
  %92 = load i32, ptr %1, align 4
  %93 = load i32, ptr %7, align 4
  tail call fastcc void @fbcon_do_set_font(ptr noundef %0, i32 noundef %92, i32 noundef %93, i32 noundef %5, ptr noundef %91, i32 noundef 1)
  br label %94

94:                                               ; preds = %90, %35, %28, %13, %3
  %95 = phi i32 [ 0, %90 ], [ -22, %3 ], [ -22, %28 ], [ -22, %13 ], [ -12, %35 ]
  ret i32 %95
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fbcon_get_font(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #14 {
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  %4 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.console_font, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %3, align 4
  store i32 %8, ptr %1, align 4
  %9 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.console_font, ptr %1, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, 0
  %15 = select i1 %14, i32 256, i32 512
  %16 = getelementptr inbounds %struct.console_font, ptr %1, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  %17 = icmp eq ptr %7, null
  br i1 %17, label %120, label %18

18:                                               ; preds = %2
  %19 = icmp ult i32 %8, 9
  br i1 %19, label %20, label %38

20:                                               ; preds = %18
  %21 = load i32, ptr %9, align 4
  %22 = mul i32 %21, %15
  %23 = getelementptr i32, ptr %5, i32 -2
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %22, %24
  br i1 %25, label %120, label %26

26:                                               ; preds = %20
  %27 = sub i32 32, %21
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi i32 [ 0, %26 ], [ %35, %28 ]
  %30 = phi ptr [ %7, %26 ], [ %33, %28 ]
  %31 = phi ptr [ %5, %26 ], [ %34, %28 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %30, ptr align 1 %31, i32 %21, i1 false)
  %32 = getelementptr i8, ptr %30, i32 %21
  tail call void @llvm.memset.p0.i32(ptr align 1 %32, i8 0, i32 %27, i1 false)
  %33 = getelementptr i8, ptr %30, i32 32
  %34 = getelementptr i8, ptr %31, i32 %21
  %35 = add nuw i32 %29, 1
  %36 = load i32, ptr %16, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %28, label %120

38:                                               ; preds = %18
  %39 = icmp ult i32 %8, 17
  br i1 %39, label %40, label %59

40:                                               ; preds = %38
  %41 = load i32, ptr %9, align 4
  %42 = shl i32 %41, 1
  %43 = mul i32 %42, %15
  %44 = getelementptr i32, ptr %5, i32 -2
  %45 = load i32, ptr %44, align 4
  %46 = icmp ugt i32 %43, %45
  br i1 %46, label %120, label %47

47:                                               ; preds = %40
  %48 = sub i32 64, %42
  br label %49

49:                                               ; preds = %49, %47
  %50 = phi i32 [ 0, %47 ], [ %56, %49 ]
  %51 = phi ptr [ %7, %47 ], [ %54, %49 ]
  %52 = phi ptr [ %5, %47 ], [ %55, %49 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %51, ptr align 1 %52, i32 %42, i1 false)
  %53 = getelementptr i8, ptr %51, i32 %42
  tail call void @llvm.memset.p0.i32(ptr align 1 %53, i8 0, i32 %48, i1 false)
  %54 = getelementptr i8, ptr %51, i32 64
  %55 = getelementptr i8, ptr %52, i32 %42
  %56 = add nuw i32 %50, 1
  %57 = load i32, ptr %16, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %49, label %120

59:                                               ; preds = %38
  %60 = icmp ult i32 %8, 25
  %61 = load i32, ptr %9, align 4
  br i1 %60, label %62, label %102

62:                                               ; preds = %59
  %63 = shl nuw nsw i32 %15, 2
  %64 = mul i32 %63, %61
  %65 = getelementptr i32, ptr %5, i32 -2
  %66 = load i32, ptr %65, align 4
  %67 = icmp ugt i32 %64, %66
  br i1 %67, label %120, label %68

68:                                               ; preds = %99, %62
  %69 = phi i32 [ %101, %99 ], [ %61, %62 ]
  %70 = phi i32 [ %96, %99 ], [ 0, %62 ]
  %71 = phi ptr [ %100, %99 ], [ %7, %62 ]
  %72 = phi ptr [ %91, %99 ], [ %5, %62 ]
  %73 = icmp eq i32 %69, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %74, %68
  %75 = phi i32 [ %87, %74 ], [ 0, %68 ]
  %76 = phi ptr [ %85, %74 ], [ %71, %68 ]
  %77 = phi ptr [ %86, %74 ], [ %72, %68 ]
  %78 = load i8, ptr %77, align 1
  %79 = getelementptr i8, ptr %76, i32 1
  store i8 %78, ptr %76, align 1
  %80 = getelementptr i8, ptr %77, i32 1
  %81 = load i8, ptr %80, align 1
  %82 = getelementptr i8, ptr %76, i32 2
  store i8 %81, ptr %79, align 1
  %83 = getelementptr i8, ptr %77, i32 2
  %84 = load i8, ptr %83, align 1
  %85 = getelementptr i8, ptr %76, i32 3
  store i8 %84, ptr %82, align 1
  %86 = getelementptr i8, ptr %77, i32 4
  %87 = add nuw i32 %75, 1
  %88 = load i32, ptr %9, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %74, label %90

90:                                               ; preds = %74, %68
  %91 = phi ptr [ %72, %68 ], [ %86, %74 ]
  %92 = phi ptr [ %71, %68 ], [ %85, %74 ]
  %93 = phi i32 [ 0, %68 ], [ %87, %74 ]
  %94 = sub i32 32, %93
  %95 = mul i32 %94, 3
  tail call void @llvm.memset.p0.i32(ptr align 1 %92, i8 0, i32 %95, i1 false)
  %96 = add nuw i32 %70, 1
  %97 = load i32, ptr %16, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %120

99:                                               ; preds = %90
  %100 = getelementptr i8, ptr %92, i32 %95
  %101 = load i32, ptr %9, align 4
  br label %68

102:                                              ; preds = %59
  %103 = shl i32 %61, 2
  %104 = mul i32 %103, %15
  %105 = getelementptr i32, ptr %5, i32 -2
  %106 = load i32, ptr %105, align 4
  %107 = icmp ugt i32 %104, %106
  br i1 %107, label %120, label %108

108:                                              ; preds = %102
  %109 = sub i32 128, %103
  br label %110

110:                                              ; preds = %110, %108
  %111 = phi i32 [ 0, %108 ], [ %117, %110 ]
  %112 = phi ptr [ %7, %108 ], [ %115, %110 ]
  %113 = phi ptr [ %5, %108 ], [ %116, %110 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %112, ptr align 1 %113, i32 %103, i1 false)
  %114 = getelementptr i8, ptr %112, i32 %103
  tail call void @llvm.memset.p0.i32(ptr align 1 %114, i8 0, i32 %109, i1 false)
  %115 = getelementptr i8, ptr %112, i32 128
  %116 = getelementptr i8, ptr %113, i32 %103
  %117 = add nuw i32 %111, 1
  %118 = load i32, ptr %16, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %110, label %120

120:                                              ; preds = %110, %102, %90, %62, %49, %40, %28, %20, %2
  %121 = phi i32 [ 0, %2 ], [ -22, %20 ], [ -22, %40 ], [ -22, %62 ], [ -22, %102 ], [ 0, %28 ], [ 0, %49 ], [ 0, %90 ], [ 0, %110 ]
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fbcon_set_def_font(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #1 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %23

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = sext i8 %10 to i32
  %12 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 10, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 10, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = tail call ptr @get_default_font(i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #20
  br label %26

23:                                               ; preds = %3
  %24 = tail call ptr @find_font(ptr noundef nonnull %2) #20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %23, %5
  %27 = phi ptr [ %24, %23 ], [ %22, %5 ]
  %28 = getelementptr inbounds %struct.font_desc, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr %1, align 4
  %30 = getelementptr inbounds %struct.font_desc, ptr %27, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.console_font, ptr %1, i32 0, i32 1
  store i32 %31, ptr %32, align 4
  %33 = load i32, ptr %28, align 4
  %34 = load i32, ptr %30, align 4
  %35 = getelementptr inbounds %struct.font_desc, ptr %27, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.font_desc, ptr %27, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  tail call fastcc void @fbcon_do_set_font(ptr noundef %0, i32 noundef %33, i32 noundef %34, i32 noundef %36, ptr noundef %38, i32 noundef 0)
  br label %39

39:                                               ; preds = %26, %23
  %40 = phi i32 [ 0, %26 ], [ -2, %23 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fbcon_resize(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca %struct.fb_var_screeninfo, align 4
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = sext i8 %10 to i32
  %12 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 28
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %5, i8 0, i32 160, i1 false), !annotation !9
  %16 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %5, ptr noundef align 4 dereferenceable(160) %16, i32 160, i1 false)
  %17 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i32, ptr %22, i32 -2
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 7
  %30 = icmp ult i32 %29, 8
  br i1 %30, label %198, label %31

31:                                               ; preds = %26
  %32 = lshr i32 %29, 3
  %33 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = mul i32 %34, %32
  %36 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = mul i32 %35, %37
  %39 = icmp sgt i32 %38, %24
  br i1 %39, label %198, label %40

40:                                               ; preds = %31, %20, %4
  %41 = getelementptr inbounds %struct.fbcon_ops, ptr %15, i32 0, i32 20
  %42 = load i32, ptr %41, align 4
  switch i32 %42, label %43 [
    i32 0, label %44
    i32 2, label %44
  ]

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %40, %40
  %45 = phi i32 [ %2, %43 ], [ %1, %40 ], [ %1, %40 ]
  switch i32 %42, label %46 [
    i32 0, label %47
    i32 2, label %47
  ]

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46, %44, %44
  %48 = phi i32 [ %1, %46 ], [ %2, %44 ], [ %2, %44 ]
  %49 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %52 = load i32, ptr %51, align 4
  switch i32 %42, label %53 [
    i32 0, label %54
    i32 2, label %54
  ]

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %47, %47
  %55 = phi i32 [ %52, %53 ], [ %50, %47 ], [ %50, %47 ]
  switch i32 %42, label %56 [
    i32 0, label %57
    i32 2, label %57
  ]

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56, %54, %54
  %58 = phi i32 [ %50, %56 ], [ %52, %54 ], [ %52, %54 ]
  %59 = mul i32 %55, %45
  store i32 %59, ptr %5, align 4
  %60 = mul i32 %58, %48
  %61 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 1
  store i32 %60, ptr %61, align 4
  %62 = load i32, ptr %16, align 4
  %63 = sub i32 %62, %59
  %64 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 1
  %65 = icmp slt i32 %63, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %57
  %67 = load i32, ptr %64, align 4
  %68 = sub i32 %67, %60
  %69 = icmp sgt i32 %63, %55
  %70 = icmp slt i32 %68, 0
  %71 = select i1 %69, i1 true, i1 %70
  %72 = icmp sgt i32 %68, %58
  %73 = select i1 %71, i1 true, i1 %72
  br i1 %73, label %74, label %161

74:                                               ; preds = %66, %57
  %75 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 13
  %76 = call ptr @fb_find_best_mode(ptr noundef nonnull %5, ptr noundef %75) #20
  %77 = icmp eq ptr %76, null
  br i1 %77, label %198, label %78

78:                                               ; preds = %74
  %79 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 20
  %80 = load ptr, ptr %79, align 4
  call void @fb_videomode_to_var(ptr noundef nonnull %5, ptr noundef %80) #20
  %81 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 7
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 2
  store i32 %82, ptr %83, align 4
  %84 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 8
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 3
  store i32 %85, ptr %86, align 4
  %87 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 11
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 6
  store i32 %88, ptr %89, align 4
  %90 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 12
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 7
  store i32 %91, ptr %92, align 4
  %93 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 13
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 12
  store i32 %94, ptr %95, align 4
  %96 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 14
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 16
  store i32 %97, ptr %98, align 4
  %99 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 9
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 14
  store i32 %100, ptr %101, align 4
  %102 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 10
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 15
  store i32 %103, ptr %104, align 4
  %105 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 8
  %106 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %105, ptr noundef align 4 dereferenceable(12) %106, i32 12, i1 false) #20
  %107 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 9
  %108 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %107, ptr noundef align 4 dereferenceable(12) %108, i32 12, i1 false) #20
  %109 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 10
  %110 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 18
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %109, ptr noundef align 4 dereferenceable(12) %110, i32 12, i1 false) #20
  %111 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 11
  %112 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 19
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %111, ptr noundef align 4 dereferenceable(12) %112, i32 12, i1 false) #20
  %113 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 15
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 26
  store i32 %114, ptr %115, align 4
  call void @fb_videomode_to_var(ptr noundef nonnull %5, ptr noundef nonnull %76) #20
  %116 = load i32, ptr %5, align 4
  %117 = udiv i32 %116, %55
  %118 = icmp ugt i32 %45, %117
  br i1 %118, label %198, label %119

119:                                              ; preds = %78
  %120 = load i32, ptr %61, align 4
  %121 = udiv i32 %120, %58
  %122 = icmp ugt i32 %48, %121
  br i1 %122, label %198, label %123

123:                                              ; preds = %119
  %124 = call zeroext i1 @con_is_visible(ptr noundef %0) #20
  br i1 %124, label %125, label %132

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %127 = load i8, ptr %126, align 4
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %5, i32 0, i32 13
  store i32 128, ptr %130, align 4
  %131 = call i32 @fb_set_var(ptr noundef %13, ptr noundef nonnull %5) #20
  br label %132

132:                                              ; preds = %129, %125, %123
  %133 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 2
  %134 = load i32, ptr %133, align 4
  store i32 %134, ptr %81, align 4
  %135 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 3
  %136 = load i32, ptr %135, align 4
  store i32 %136, ptr %84, align 4
  %137 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 6
  %138 = load i32, ptr %137, align 4
  store i32 %138, ptr %87, align 4
  %139 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 7
  %140 = load i32, ptr %139, align 4
  store i32 %140, ptr %90, align 4
  %141 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 12
  %142 = load i32, ptr %141, align 4
  store i32 %142, ptr %93, align 4
  %143 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 16
  %144 = load i32, ptr %143, align 4
  store i32 %144, ptr %96, align 4
  %145 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 14
  %146 = load i32, ptr %145, align 4
  store i32 %146, ptr %99, align 4
  %147 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 15
  %148 = load i32, ptr %147, align 4
  store i32 %148, ptr %102, align 4
  %149 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %106, ptr noundef align 4 dereferenceable(12) %149, i32 12, i1 false) #20
  %150 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %108, ptr noundef align 4 dereferenceable(12) %150, i32 12, i1 false) #20
  %151 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %110, ptr noundef align 4 dereferenceable(12) %151, i32 12, i1 false) #20
  %152 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %112, ptr noundef align 4 dereferenceable(12) %152, i32 12, i1 false) #20
  %153 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 26
  %154 = load i32, ptr %153, align 4
  store i32 %154, ptr %113, align 4
  %155 = call ptr @fb_match_mode(ptr noundef %16, ptr noundef %75) #20
  store ptr %155, ptr %79, align 4
  %156 = getelementptr inbounds %struct.fbcon_ops, ptr %15, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(160) %156, ptr noundef align 4 dereferenceable(160) %16, i32 160, i1 false)
  %157 = load ptr, ptr %14, align 4
  %158 = load i32, ptr %51, align 4
  %159 = getelementptr inbounds %struct.fbcon_ops, ptr %157, i32 0, i32 20
  %160 = load i32, ptr %159, align 4
  br label %161

161:                                              ; preds = %132, %66
  %162 = phi i32 [ %160, %132 ], [ %42, %66 ]
  %163 = phi i32 [ %158, %132 ], [ %52, %66 ]
  switch i32 %162, label %164 [
    i32 0, label %165
    i32 2, label %165
  ]

164:                                              ; preds = %161
  br label %165

165:                                              ; preds = %164, %161, %161
  %166 = phi ptr [ %16, %164 ], [ %64, %161 ], [ %64, %161 ]
  %167 = load i32, ptr %166, align 4
  %168 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 3
  switch i32 %162, label %169 [
    i32 0, label %171
    i32 2, label %171
  ]

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 6, i32 2
  br label %171

171:                                              ; preds = %169, %165, %165
  %172 = phi ptr [ %170, %169 ], [ %168, %165 ], [ %168, %165 ]
  %173 = load i32, ptr %172, align 4
  %174 = freeze i32 %173
  %175 = freeze i32 %163
  %176 = sdiv i32 %174, %175
  %177 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %8, i32 4
  store i32 %176, ptr %177, align 4
  %178 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 5
  %179 = load i32, ptr %178, align 4
  %180 = add i32 %179, 1
  %181 = mul i32 %180, %163
  %182 = icmp ugt i32 %167, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %171
  %184 = mul i32 %179, %163
  %185 = sub i32 %167, %184
  %186 = udiv i32 %185, %163
  %187 = sub i32 %176, %186
  store i32 %187, ptr %177, align 4
  br label %188

188:                                              ; preds = %183, %171
  %189 = phi i32 [ %187, %183 ], [ %176, %171 ]
  %190 = srem i32 %167, %163
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %198, label %192

192:                                              ; preds = %188
  %193 = mul i32 %176, %175
  %194 = sub i32 %174, %193
  %195 = icmp slt i32 %194, %190
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = add i32 %189, -1
  store i32 %197, ptr %177, align 4
  br label %198

198:                                              ; preds = %196, %192, %188, %119, %78, %74, %31, %26
  %199 = phi i32 [ -22, %31 ], [ -22, %78 ], [ -22, %119 ], [ -22, %74 ], [ -22, %26 ], [ 0, %188 ], [ 0, %192 ], [ 0, %196 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %5) #20
  ret i32 %199
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fbcon_invert_region(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %41, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %7 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  br label %8

8:                                                ; preds = %37, %5
  %9 = phi i32 [ %2, %5 ], [ %11, %37 ]
  %10 = phi ptr [ %1, %5 ], [ %39, %37 ]
  %11 = add i32 %9, -1
  %12 = load i16, ptr %10, align 2
  %13 = load i16, ptr %6, align 4
  %14 = and i16 %13, 2048
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = xor i16 %12, 2048
  br label %37

18:                                               ; preds = %8
  %19 = load i16, ptr %7, align 4
  %20 = icmp eq i16 %19, 256
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = and i16 %12, 4607
  %23 = lshr i16 %12, 4
  %24 = and i16 %23, 3584
  %25 = or i16 %24, %22
  %26 = shl i16 %12, 4
  %27 = and i16 %26, -8192
  %28 = or i16 %25, %27
  br label %37

29:                                               ; preds = %18
  %30 = and i16 %12, -30465
  %31 = lshr i16 %12, 4
  %32 = and i16 %31, 1792
  %33 = or i16 %32, %30
  %34 = shl i16 %12, 4
  %35 = and i16 %34, 28672
  %36 = or i16 %33, %35
  br label %37

37:                                               ; preds = %29, %21, %16
  %38 = phi i16 [ %28, %21 ], [ %36, %29 ], [ %17, %16 ]
  %39 = getelementptr i16, ptr %10, i32 1
  store i16 %38, ptr %10, align 2
  %40 = icmp eq i32 %11, 0
  br i1 %40, label %41, label %8

41:                                               ; preds = %37, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @fbcon_screen_pos(ptr nocapture noundef readonly %0, i32 noundef %1) #15 {
  %3 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, %1
  %6 = inttoptr i32 %5 to ptr
  ret ptr %6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fbcon_getxy(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) #16 {
  %5 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = sub i32 %1, %6
  %14 = lshr i32 %13, 1
  %15 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = freeze i32 %14
  %18 = freeze i32 %16
  %19 = udiv i32 %17, %18
  %20 = mul i32 %19, %18
  %21 = sub i32 %17, %20
  %22 = sub i32 %16, %21
  %23 = shl i32 %22, 1
  %24 = add i32 %23, %1
  br label %25

25:                                               ; preds = %12, %8, %4
  %26 = phi i32 [ %21, %12 ], [ 0, %8 ], [ 0, %4 ]
  %27 = phi i32 [ %19, %12 ], [ 0, %8 ], [ 0, %4 ]
  %28 = phi i32 [ %24, %12 ], [ %6, %8 ], [ %6, %4 ]
  %29 = icmp eq ptr %2, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 %26, ptr %2, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = icmp eq ptr %3, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %31
  store i32 %27, ptr %3, align 4
  br label %34

34:                                               ; preds = %33, %31
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fbcon_debug_enter(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %3 = load i16, ptr %2, align 4
  %4 = zext i16 %3 to i32
  %5 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %4
  %6 = load i8, ptr %5, align 1
  %7 = sext i8 %6 to i32
  %8 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 28
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fbcon_ops, ptr %11, i32 0, i32 17
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.fbcon_ops, ptr %11, i32 0, i32 18
  store i32 %13, ptr %14, align 4
  store i32 0, ptr %12, align 4
  %15 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 20
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.fb_ops, ptr %16, i32 0, i32 21
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = tail call i32 %18(ptr noundef %9) #20
  br label %22

22:                                               ; preds = %20, %1
  tail call void @fbcon_set_palette(ptr noundef %0, ptr noundef nonnull @color_table)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fbcon_debug_leave(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %3 = load i16, ptr %2, align 4
  %4 = zext i16 %3 to i32
  %5 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %4
  %6 = load i8, ptr %5, align 1
  %7 = sext i8 %6 to i32
  %8 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 28
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fbcon_ops, ptr %11, i32 0, i32 18
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.fbcon_ops, ptr %11, i32 0, i32 17
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 20
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.fb_ops, ptr %16, i32 0, i32 22
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = tail call i32 %18(ptr noundef %9) #20
  br label %22

22:                                               ; preds = %20, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_font(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_default_font(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fbcon_redraw(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 6
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %91, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %5, align 4
  %9 = mul i32 %8, %1
  %10 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %9, %11
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr i16, ptr %13, i32 %3
  %15 = icmp sgt i32 %3, 0
  br label %16

16:                                               ; preds = %89, %7
  %17 = phi i32 [ %8, %7 ], [ %90, %89 ]
  %18 = phi i32 [ %2, %7 ], [ %68, %89 ]
  %19 = phi ptr [ %14, %7 ], [ %87, %89 ]
  %20 = phi ptr [ %13, %7 ], [ %86, %89 ]
  %21 = phi i32 [ %1, %7 ], [ %85, %89 ]
  %22 = ptrtoint ptr %19 to i32
  %23 = add i32 %17, %22
  %24 = inttoptr i32 %23 to ptr
  br label %25

25:                                               ; preds = %61, %16
  %26 = phi ptr [ %20, %16 ], [ %65, %61 ]
  %27 = phi ptr [ %19, %16 ], [ %64, %61 ]
  %28 = phi ptr [ %19, %16 ], [ %62, %61 ]
  %29 = phi i32 [ 0, %16 ], [ %63, %61 ]
  %30 = phi i16 [ 1, %16 ], [ %45, %61 ]
  %31 = load i16, ptr %27, align 2
  %32 = and i16 %31, -256
  %33 = icmp eq i16 %32, %30
  br i1 %33, label %42, label %34

34:                                               ; preds = %25
  %35 = icmp ugt ptr %27, %28
  br i1 %35, label %36, label %42

36:                                               ; preds = %34
  %37 = ptrtoint ptr %27 to i32
  %38 = ptrtoint ptr %28 to i32
  %39 = sub i32 %37, %38
  %40 = ashr exact i32 %39, 1
  tail call void @fbcon_putcs(ptr noundef %0, ptr noundef %28, i32 noundef %40, i32 noundef %21, i32 noundef %29)
  %41 = add i32 %40, %29
  br label %42

42:                                               ; preds = %36, %34, %25
  %43 = phi ptr [ %27, %36 ], [ %28, %34 ], [ %28, %25 ]
  %44 = phi i32 [ %41, %36 ], [ %29, %34 ], [ %29, %25 ]
  %45 = phi i16 [ %32, %36 ], [ %32, %34 ], [ %30, %25 ]
  %46 = load i16, ptr %26, align 2
  %47 = icmp eq i16 %31, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = icmp ugt ptr %27, %43
  br i1 %49, label %50, label %58

50:                                               ; preds = %48
  %51 = ptrtoint ptr %27 to i32
  %52 = ptrtoint ptr %43 to i32
  %53 = sub i32 %51, %52
  %54 = ashr exact i32 %53, 1
  tail call void @fbcon_putcs(ptr noundef %0, ptr noundef %43, i32 noundef %54, i32 noundef %21, i32 noundef %44)
  %55 = add i32 %44, 1
  %56 = add i32 %55, %54
  %57 = getelementptr i16, ptr %27, i32 1
  br label %61

58:                                               ; preds = %48
  %59 = add i32 %44, 1
  %60 = getelementptr i16, ptr %43, i32 1
  br label %61

61:                                               ; preds = %58, %50, %42
  %62 = phi ptr [ %57, %50 ], [ %60, %58 ], [ %43, %42 ]
  %63 = phi i32 [ %56, %50 ], [ %59, %58 ], [ %44, %42 ]
  store i16 %31, ptr %26, align 2
  tail call void @console_conditional_schedule() #20
  %64 = getelementptr i16, ptr %27, i32 1
  %65 = getelementptr i16, ptr %26, i32 1
  %66 = icmp ult ptr %64, %24
  br i1 %66, label %25, label %67

67:                                               ; preds = %61
  %68 = add i32 %18, -1
  %69 = icmp ugt ptr %64, %62
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = ptrtoint ptr %64 to i32
  %72 = ptrtoint ptr %62 to i32
  %73 = sub i32 %71, %72
  %74 = ashr exact i32 %73, 1
  tail call void @fbcon_putcs(ptr noundef %0, ptr noundef %62, i32 noundef %74, i32 noundef %21, i32 noundef %63)
  br label %75

75:                                               ; preds = %70, %67
  tail call void @console_conditional_schedule() #20
  br i1 %15, label %76, label %78

76:                                               ; preds = %75
  %77 = add i32 %21, 1
  br label %84

78:                                               ; preds = %75
  %79 = add i32 %21, -1
  %80 = load i32, ptr %5, align 4
  %81 = sub i32 0, %80
  %82 = getelementptr i16, ptr %64, i32 %81
  %83 = getelementptr i16, ptr %65, i32 %81
  br label %84

84:                                               ; preds = %78, %76
  %85 = phi i32 [ %77, %76 ], [ %79, %78 ]
  %86 = phi ptr [ %65, %76 ], [ %83, %78 ]
  %87 = phi ptr [ %64, %76 ], [ %82, %78 ]
  %88 = icmp eq i32 %68, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = load i32, ptr %5, align 4
  br label %16

91:                                               ; preds = %84, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_conditional_schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_show_logo(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_blank(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fbcon_do_set_font(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #1 {
  %7 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 3
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = sext i8 %11 to i32
  %13 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.fb_info, ptr %14, i32 0, i32 28
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %9
  %18 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp ne i32 %23, %2
  br label %25

25:                                               ; preds = %21, %6
  %26 = phi i1 [ true, %6 ], [ %24, %21 ]
  %27 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %9, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 3
  %32 = load ptr, ptr %31, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi ptr [ %32, %30 ], [ null, %25 ]
  store ptr %4, ptr %17, align 4
  %35 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 3
  store ptr %4, ptr %35, align 4
  store i32 %5, ptr %27, align 4
  %36 = icmp eq i32 %5, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr i32, ptr %4, i32 -1
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 4
  br label %41

41:                                               ; preds = %37, %33
  store i32 %1, ptr %18, align 4
  %42 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 1
  store i32 %2, ptr %42, align 4
  %43 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 28, i32 2
  store i32 %3, ptr %43, align 4
  %44 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 27
  %45 = load i16, ptr %44, align 4
  %46 = icmp ne i16 %45, 0
  %47 = icmp eq i32 %3, 256
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %90

49:                                               ; preds = %41
  store i16 0, ptr %44, align 4
  %50 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %51 = load i16, ptr %50, align 4
  %52 = and i16 %51, 2048
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %158, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 24
  %56 = load i16, ptr %55, align 4
  %57 = lshr i16 %56, 1
  store i16 %57, ptr %55, align 4
  %58 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 25
  %59 = load i16, ptr %58, align 2
  %60 = lshr i16 %59, 1
  store i16 %60, ptr %58, align 2
  %61 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 16
  %62 = load i32, ptr %61, align 4
  %63 = icmp ult i32 %62, 2
  br i1 %63, label %80, label %64

64:                                               ; preds = %54
  %65 = lshr i32 %62, 1
  %66 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %67 = load i32, ptr %66, align 4
  %68 = inttoptr i32 %67 to ptr
  br label %69

69:                                               ; preds = %69, %64
  %70 = phi i32 [ %77, %69 ], [ %65, %64 ]
  %71 = phi ptr [ %78, %69 ], [ %68, %64 ]
  %72 = load i16, ptr %71, align 2
  %73 = lshr i16 %72, 1
  %74 = and i16 %73, 32512
  %75 = and i16 %72, 255
  %76 = or i16 %74, %75
  store i16 %76, ptr %71, align 2
  %77 = add nsw i32 %70, -1
  %78 = getelementptr i16, ptr %71, i32 1
  %79 = icmp ugt i32 %70, 1
  br i1 %79, label %69, label %80

80:                                               ; preds = %69, %54
  %81 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %82 = load i16, ptr %81, align 4
  %83 = lshr i16 %82, 1
  %84 = and i16 %83, 32512
  %85 = and i16 %82, 255
  %86 = or i16 %84, %85
  store i16 %86, ptr %81, align 4
  %87 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 18
  %88 = load i8, ptr %87, align 1
  %89 = lshr i8 %88, 1
  store i8 %89, ptr %87, align 1
  br label %158

90:                                               ; preds = %41
  %91 = icmp eq i16 %45, 0
  %92 = icmp eq i32 %3, 512
  %93 = and i1 %92, %91
  br i1 %93, label %94, label %158

94:                                               ; preds = %90
  store i16 256, ptr %44, align 4
  %95 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 37
  %96 = load i16, ptr %95, align 4
  %97 = and i16 %96, 2048
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 24
  %101 = load i16, ptr %100, align 4
  %102 = shl i16 %101, 1
  store i16 %102, ptr %100, align 4
  %103 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 25
  %104 = load i16, ptr %103, align 2
  %105 = shl i16 %104, 1
  store i16 %105, ptr %103, align 2
  br label %106

106:                                              ; preds = %99, %94
  %107 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 16
  %108 = load i32, ptr %107, align 4
  %109 = icmp ult i32 %108, 2
  br i1 %109, label %142, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 9
  %112 = load i32, ptr %111, align 4
  %113 = inttoptr i32 %112 to ptr
  %114 = load i16, ptr %113, align 2
  %115 = shl i16 %114, 1
  %116 = and i16 %115, -512
  %117 = and i16 %114, 255
  %118 = or i16 %116, %117
  %119 = and i16 %114, -257
  %120 = select i1 %98, i16 %119, i16 %118
  store i16 %120, ptr %113, align 2
  %121 = icmp ugt i32 %108, 3
  br i1 %121, label %122, label %140

122:                                              ; preds = %110
  %123 = lshr i32 %108, 1
  br label %124

124:                                              ; preds = %124, %122
  %125 = phi ptr [ %127, %124 ], [ %113, %122 ]
  %126 = phi i32 [ %128, %124 ], [ %123, %122 ]
  %127 = getelementptr i16, ptr %125, i32 1
  %128 = add nsw i32 %126, -1
  %129 = load i16, ptr %95, align 4
  %130 = load i16, ptr %127, align 2
  %131 = and i16 %129, 2048
  %132 = icmp eq i16 %131, 0
  %133 = shl i16 %130, 1
  %134 = and i16 %133, -512
  %135 = and i16 %130, 255
  %136 = or i16 %134, %135
  %137 = and i16 %130, -257
  %138 = select i1 %132, i16 %137, i16 %136
  store i16 %138, ptr %127, align 2
  %139 = icmp ugt i32 %126, 2
  br i1 %139, label %124, label %140

140:                                              ; preds = %124, %110
  %141 = load i16, ptr %95, align 4
  br label %142

142:                                              ; preds = %140, %106
  %143 = phi i16 [ %141, %140 ], [ %96, %106 ]
  %144 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 29
  %145 = load i16, ptr %144, align 4
  %146 = and i16 %143, 2048
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %156, label %148

148:                                              ; preds = %142
  %149 = shl i16 %145, 1
  %150 = and i16 %149, -512
  %151 = and i16 %145, 255
  %152 = or i16 %150, %151
  store i16 %152, ptr %144, align 4
  %153 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 18
  %154 = load i8, ptr %153, align 1
  %155 = shl i8 %154, 1
  store i8 %155, ptr %153, align 1
  br label %158

156:                                              ; preds = %142
  %157 = and i16 %145, -257
  store i16 %157, ptr %144, align 4
  br label %158

158:                                              ; preds = %156, %148, %90, %80, %49
  br i1 %26, label %159, label %175

159:                                              ; preds = %158
  %160 = getelementptr inbounds %struct.fb_info, ptr %14, i32 0, i32 6
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr inbounds %struct.fb_info, ptr %14, i32 0, i32 6, i32 1
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr inbounds %struct.fbcon_ops, ptr %16, i32 0, i32 20
  %165 = load i32, ptr %164, align 4
  switch i32 %165, label %166 [
    i32 0, label %167
    i32 2, label %167
  ]

166:                                              ; preds = %159
  br label %167

167:                                              ; preds = %166, %159, %159
  %168 = phi i32 [ %163, %166 ], [ %161, %159 ], [ %161, %159 ]
  switch i32 %165, label %169 [
    i32 0, label %170
    i32 2, label %170
  ]

169:                                              ; preds = %167
  br label %170

170:                                              ; preds = %169, %167, %167
  %171 = phi i32 [ %161, %169 ], [ %163, %167 ], [ %163, %167 ]
  %172 = sdiv i32 %168, %1
  %173 = sdiv i32 %171, %2
  %174 = tail call i32 @vc_resize(ptr noundef %0, i32 noundef %172, i32 noundef %173) #20
  br label %203

175:                                              ; preds = %158
  %176 = tail call zeroext i1 @con_is_visible(ptr noundef %0) #20
  br i1 %176, label %177, label %203

177:                                              ; preds = %175
  %178 = getelementptr inbounds %struct.vc_data, ptr %0, i32 0, i32 17
  %179 = load i8, ptr %178, align 4
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %181, label %203

181:                                              ; preds = %177
  %182 = load i16, ptr %7, align 4
  %183 = zext i16 %182 to i32
  %184 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %183
  %185 = load i8, ptr %184, align 1
  %186 = sext i8 %185 to i32
  %187 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %186
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.fb_info, ptr %188, i32 0, i32 28
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.fb_info, ptr %188, i32 0, i32 27
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %181
  %195 = getelementptr inbounds %struct.fbcon_ops, ptr %190, i32 0, i32 17
  %196 = load i32, ptr %195, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.fbcon_ops, ptr %190, i32 0, i32 3
  %200 = load ptr, ptr %199, align 4
  %201 = load i32, ptr @margin_color, align 4
  tail call void %200(ptr noundef %0, ptr noundef %188, i32 noundef %201, i32 noundef 0) #20
  br label %202

202:                                              ; preds = %198, %194, %181
  tail call void @redraw_screen(ptr noundef %0, i32 noundef 0) #20
  br label %203

203:                                              ; preds = %202, %177, %175, %170
  %204 = icmp eq ptr %34, null
  br i1 %204, label %212, label %205

205:                                              ; preds = %203
  %206 = getelementptr i32, ptr %34, i32 -1
  %207 = load i32, ptr %206, align 4
  %208 = add i32 %207, -1
  store i32 %208, ptr %206, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = getelementptr i8, ptr %34, i32 -16
  tail call void @kfree(ptr noundef %211) #20
  br label %212

212:                                              ; preds = %210, %205, %203
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_find_best_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_rotate(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  tail call void @console_lock() #20
  %4 = load i32, ptr @fg_console, align 4
  %5 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %4
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, -1
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = sext i8 %6 to i32
  %10 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.fb_info, ptr %11, i32 0, i32 28
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.fbcon_ops, ptr %15, i32 0, i32 20
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %13, %8, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %8 ], [ %19, %17 ], [ 0, %13 ]
  tail call void @console_unlock() #20
  %22 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.28, i32 noundef %21)
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_rotate(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef returned %3) #1 {
  tail call void @console_lock() #20
  %5 = load i32, ptr @fg_console, align 4
  %6 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, -1
  br i1 %8, label %34, label %9

9:                                                ; preds = %4
  %10 = sext i8 %7 to i32
  %11 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @simple_strtoul(ptr noundef %2, ptr noundef null, i32 noundef 0) #20
  %16 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 28
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.fbcon_ops, ptr %17, i32 0, i32 12
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %21
  %25 = load i8, ptr %24, align 1
  %26 = sext i8 %25 to i32
  %27 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %12
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = icmp ult i32 %15, 4
  %32 = select i1 %31, i32 %15, i32 0
  %33 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %21, i32 6
  store i32 %32, ptr %33, align 4
  tail call fastcc void @fbcon_modechanged(ptr noundef nonnull %12) #20
  br label %34

34:                                               ; preds = %30, %23, %19, %14, %9, %4
  tail call void @console_unlock() #20
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_rotate_all(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef returned %3) #1 {
  tail call void @console_lock() #20
  %5 = load i32, ptr @fg_console, align 4
  %6 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, -1
  br i1 %8, label %54, label %9

9:                                                ; preds = %4
  %10 = sext i8 %7 to i32
  %11 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %54, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @simple_strtoul(ptr noundef %2, ptr noundef null, i32 noundef 0) #20
  %16 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 28
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %54, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.fbcon_ops, ptr %17, i32 0, i32 12
  %21 = load i32, ptr %20, align 4
  %22 = icmp slt i32 %21, 0
  %23 = icmp ugt i32 %15, 3
  %24 = or i1 %23, %22
  br i1 %24, label %54, label %25

25:                                               ; preds = %19
  %26 = load i32, ptr @first_fb_vc, align 4
  %27 = load i32, ptr @last_fb_vc, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %53, label %29

29:                                               ; preds = %50, %25
  %30 = phi i32 [ %51, %50 ], [ %26, %25 ]
  %31 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %50, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.vc_data, ptr %32, i32 0, i32 17
  %36 = load i8, ptr %35, align 4
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %30
  %40 = load i8, ptr %39, align 1
  %41 = sext i8 %40 to i32
  %42 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %41
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %12
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.vc_data, ptr %32, i32 0, i32 3
  %47 = load i16, ptr %46, align 4
  %48 = zext i16 %47 to i32
  %49 = getelementptr [63 x %struct.fbcon_display], ptr @fb_display, i32 0, i32 %48, i32 6
  store i32 %15, ptr %49, align 4
  br label %50

50:                                               ; preds = %45, %38, %34, %29
  %51 = add i32 %30, 1
  %52 = icmp sgt i32 %51, %27
  br i1 %52, label %53, label %29

53:                                               ; preds = %50, %25
  tail call fastcc void @fbcon_set_all_vcs(ptr noundef nonnull %12) #20
  br label %54

54:                                               ; preds = %53, %19, %14, %9, %4
  tail call void @console_unlock() #20
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_cursor_blink(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  tail call void @console_lock() #20
  %4 = load i32, ptr @fg_console, align 4
  %5 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %4
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, -1
  br i1 %7, label %22, label %8

8:                                                ; preds = %3
  %9 = sext i8 %6 to i32
  %10 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.fb_info, ptr %11, i32 0, i32 28
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.fbcon_ops, ptr %15, i32 0, i32 19
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 1
  %21 = and i32 %20, 1
  br label %22

22:                                               ; preds = %17, %13, %8, %3
  %23 = phi i32 [ -1, %3 ], [ -1, %8 ], [ %21, %17 ], [ -1, %13 ]
  tail call void @console_unlock() #20
  %24 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.28, i32 noundef %23)
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_cursor_blink(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef returned %3) #1 {
  tail call void @console_lock() #20
  %5 = load i32, ptr @fg_console, align 4
  %6 = getelementptr [63 x i8], ptr @con2fb_map, i32 0, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, -1
  br i1 %8, label %62, label %9

9:                                                ; preds = %4
  %10 = sext i8 %7 to i32
  %11 = getelementptr [32 x ptr], ptr @registered_fb, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %62, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 28
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %62, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @simple_strtoul(ptr noundef %2, ptr noundef null, i32 noundef 0) #20
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %47, label %21

21:                                               ; preds = %18
  store i1 false, ptr @fbcon_cursor_noblink, align 4
  %22 = load ptr, ptr %15, align 4
  %23 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 9
  %24 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 9, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  %27 = icmp eq ptr %25, @fb_flashcursor
  %28 = or i1 %26, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.fbcon_ops, ptr %22, i32 0, i32 19
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %29
  br i1 %26, label %35, label %38

35:                                               ; preds = %34
  store i32 -32, ptr %23, align 4
  %36 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 9, i32 1
  store volatile ptr %36, ptr %36, align 4
  %37 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 9, i32 1, i32 1
  store ptr %36, ptr %37, align 4
  store ptr @fb_flashcursor, ptr %24, align 4
  br label %38

38:                                               ; preds = %35, %34
  %39 = getelementptr inbounds %struct.fbcon_ops, ptr %22, i32 0, i32 8
  tail call void @init_timer_key(ptr noundef %39, ptr noundef nonnull @cursor_timer_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #20
  %40 = load volatile i32, ptr @jiffies, align 64
  %41 = getelementptr inbounds %struct.fbcon_ops, ptr %22, i32 0, i32 13
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, %40
  %44 = tail call i32 @mod_timer(ptr noundef %39, i32 noundef %43) #20
  %45 = load i32, ptr %30, align 4
  %46 = or i32 %45, 2
  store i32 %46, ptr %30, align 4
  br label %62

47:                                               ; preds = %18
  store i1 true, ptr @fbcon_cursor_noblink, align 4
  %48 = load ptr, ptr %15, align 4
  %49 = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 9, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, @fb_flashcursor
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.fbcon_ops, ptr %48, i32 0, i32 19
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.fbcon_ops, ptr %48, i32 0, i32 8
  %59 = tail call i32 @del_timer_sync(ptr noundef %58) #20
  %60 = load i32, ptr %53, align 4
  %61 = and i32 %60, -3
  store i32 %61, ptr %53, align 4
  br label %62

62:                                               ; preds = %57, %52, %47, %38, %29, %21, %14, %9, %4
  tail call void @console_unlock() #20
  ret i32 %3
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nounwind }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind readnone }
attributes #23 = { nounwind readonly }
attributes #24 = { nounwind allocsize(2) }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind readonly willreturn }

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
!8 = !{!"branch_weights", i32 1, i32 4001}
!9 = !{!"auto-init"}
!10 = !{i64 2151313538, i64 2151313563}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 3809650}
!13 = !{i64 3809847}
!14 = !{i64 2151295126}
!15 = !{!"branch_weights", i32 1, i32 2000}
