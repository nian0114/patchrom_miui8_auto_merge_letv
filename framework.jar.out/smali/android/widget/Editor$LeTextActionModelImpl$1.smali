.class Landroid/widget/Editor$LeTextActionModelImpl$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$LeTextActionModelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor$LeTextActionModelImpl;


# direct methods
.method constructor <init>(Landroid/widget/Editor$LeTextActionModelImpl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/Editor$LeTextActionModelImpl$1;->this$0:Landroid/widget/Editor$LeTextActionModelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl$1;->this$0:Landroid/widget/Editor$LeTextActionModelImpl;

    # getter for: Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;
    invoke-static {v0}, Landroid/widget/Editor$LeTextActionModelImpl;->access$5400(Landroid/widget/Editor$LeTextActionModelImpl;)Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->setMoving(Z)V

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl$1;->this$0:Landroid/widget/Editor$LeTextActionModelImpl;

    # getter for: Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;
    invoke-static {v0}, Landroid/widget/Editor$LeTextActionModelImpl;->access$5400(Landroid/widget/Editor$LeTextActionModelImpl;)Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    return-void
.end method
