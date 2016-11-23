.class final Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$LeTextActionModelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingToolbarVisibilityHelper"
.end annotation


# instance fields
.field private mActive:Z

.field private mHideRequested:Z

.field private mMoving:Z

.field private mOutOfBounds:Z

.field private final mToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

.field private mWindowFocused:Z


# direct methods
.method public constructor <init>(Lcom/letv/leui/text/LeFloatingToolbar;)V
    .locals 1
    .param p1, "toolbar"    # Lcom/letv/leui/text/LeFloatingToolbar;

    .prologue
    .line 6880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6876
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->mWindowFocused:Z

    .line 6881
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/text/LeFloatingToolbar;

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->mToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

    .line 6882
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6885
    iput-boolean v0, p0, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->mHideRequested:Z

    .line 6886
    iput-boolean v0, p0, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->mMoving:Z

    .line 6887
    iput-boolean v0, p0, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->mOutOfBounds:Z

    .line 6888
    iput-boolean v1, p0, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->mWindowFocused:Z

    .line 6890
    iput-boolean v1, p0, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->mActive:Z

    .line 6891
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 6894
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->mActive:Z

    .line 6895
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->mToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeFloatingToolbar;->dismiss()V

    .line 6896
    return-void
.end method

.method public setHideRequested(Z)V
    .locals 0
    .param p1, "hide"    # Z

    .prologue
    .line 6899
    iput-boolean p1, p0, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->mHideRequested:Z

    .line 6900
    return-void
.end method

.method public setMoving(Z)V
    .locals 0
    .param p1, "moving"    # Z

    .prologue
    .line 6903
    iput-boolean p1, p0, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->mMoving:Z

    .line 6904
    return-void
.end method

.method public setOutOfBounds(Z)V
    .locals 0
    .param p1, "outOfBounds"    # Z

    .prologue
    .line 6907
    iput-boolean p1, p0, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->mOutOfBounds:Z

    .line 6908
    return-void
.end method

.method public setWindowFocused(Z)V
    .locals 0
    .param p1, "windowFocused"    # Z

    .prologue
    .line 6911
    iput-boolean p1, p0, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->mWindowFocused:Z

    .line 6912
    return-void
.end method

.method public updateToolbarVisibility()V
    .locals 1

    .prologue
    .line 6915
    iget-boolean v0, p0, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->mActive:Z

    if-nez v0, :cond_0

    .line 6924
    :goto_0
    return-void

    .line 6919
    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->mHideRequested:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->mMoving:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->mOutOfBounds:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->mWindowFocused:Z

    if-nez v0, :cond_2

    .line 6920
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->mToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeFloatingToolbar;->hide()V

    goto :goto_0

    .line 6922
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->mToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeFloatingToolbar;->show()Lcom/letv/leui/text/LeFloatingToolbar;

    goto :goto_0
.end method
