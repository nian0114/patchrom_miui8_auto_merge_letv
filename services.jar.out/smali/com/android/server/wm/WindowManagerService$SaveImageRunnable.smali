.class Lcom/android/server/wm/WindowManagerService$SaveImageRunnable;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveImageRunnable"
.end annotation


# instance fields
.field bm:Landroid/graphics/Bitmap;

.field dir:Ljava/lang/String;

.field filename:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "dir"    # Ljava/lang/String;
    .param p4, "filename"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$SaveImageRunnable;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$SaveImageRunnable;->bm:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$SaveImageRunnable;->dir:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wm/WindowManagerService$SaveImageRunnable;->filename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SaveImageRunnable;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SaveImageRunnable;->bm:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SaveImageRunnable;->dir:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$SaveImageRunnable;->filename:Ljava/lang/String;

    # invokes: Lcom/android/server/wm/WindowManagerService;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->access$2000(Lcom/android/server/wm/WindowManagerService;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
