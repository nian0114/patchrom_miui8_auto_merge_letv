.class public Landroid/inputmethodservice/SoftInputWindow;
.super Landroid/app/Dialog;
.source "SoftInputWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/SoftInputWindow$Callback;
    }
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field final mCallback:Landroid/inputmethodservice/SoftInputWindow$Callback;

.field final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field final mGravity:I

.field final mKeyEventCallback:Landroid/view/KeyEvent$Callback;

.field final mName:Ljava/lang/String;

.field final mTakesFocus:Z

.field final mWindowType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/inputmethodservice/SoftInputWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "callback"    # Landroid/inputmethodservice/SoftInputWindow$Callback;
    .param p5, "keyEventCallback"    # Landroid/view/KeyEvent$Callback;
    .param p6, "dispatcherState"    # Landroid/view/KeyEvent$DispatcherState;
    .param p7, "windowType"    # I
    .param p8, "gravity"    # I
    .param p9, "takesFocus"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    .line 72
    iput-object p2, p0, Landroid/inputmethodservice/SoftInputWindow;->mName:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Landroid/inputmethodservice/SoftInputWindow;->mCallback:Landroid/inputmethodservice/SoftInputWindow$Callback;

    .line 74
    iput-object p5, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    .line 75
    iput-object p6, p0, Landroid/inputmethodservice/SoftInputWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    .line 76
    iput p7, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowType:I

    .line 77
    iput p8, p0, Landroid/inputmethodservice/SoftInputWindow;->mGravity:I

    .line 78
    iput-boolean p9, p0, Landroid/inputmethodservice/SoftInputWindow;->mTakesFocus:Z

    .line 79
    invoke-direct {p0}, Landroid/inputmethodservice/SoftInputWindow;->initDockWindow()V

    .line 80
    return-void
.end method

.method private initDockWindow()V
    .locals 4

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 177
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mWindowType:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 178
    iget-object v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    iget v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mGravity:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 181
    invoke-direct {p0, v0}, Landroid/inputmethodservice/SoftInputWindow;->updateWidthHeight(Landroid/view/WindowManager$LayoutParams;)V

    .line 183
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 185
    const/16 v2, 0x100

    .line 186
    .local v2, "windowSetFlags":I
    const/16 v1, 0x10a

    .line 190
    .local v1, "windowModFlags":I
    iget-boolean v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mTakesFocus:Z

    if-nez v3, :cond_0

    .line 191
    or-int/lit8 v2, v2, 0x8

    .line 197
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setFlags(II)V

    .line 198
    return-void

    .line 193
    :cond_0
    or-int/lit8 v2, v2, 0x20

    .line 194
    or-int/lit8 v1, v1, 0x20

    goto :goto_0
.end method

.method private updateWidthHeight(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 129
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    .line 130
    :cond_0
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 131
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_1
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 134
    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 92
    :cond_0
    const-string/jumbo v2, "siw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ime get event: eventTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 97
    iget-object v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget-object v5, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/MotionEvent;->isWithinBoundsNoHistory(FFFF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 105
    :goto_0
    return v0

    .line 101
    :cond_2
    iget-object v2, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget-object v5, p0, Landroid/inputmethodservice/SoftInputWindow;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/MotionEvent;->clampNoHistory(FFFF)Landroid/view/MotionEvent;

    move-result-object v1

    .line 103
    .local v1, "temp":Landroid/view/MotionEvent;
    invoke-super {p0, v1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 104
    .local v0, "handled":Z
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mCallback:Landroid/inputmethodservice/SoftInputWindow$Callback;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mCallback:Landroid/inputmethodservice/SoftInputWindow$Callback;

    invoke-interface {v0}, Landroid/inputmethodservice/SoftInputWindow$Callback;->onBackPressed()V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x1

    .line 142
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 160
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/KeyEvent$Callback;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Dialog;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 153
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 85
    iget-object v0, p0, Landroid/inputmethodservice/SoftInputWindow;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v0}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 86
    return-void
.end method

.method public setGravity(I)V
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 119
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 120
    invoke-direct {p0, v0}, Landroid/inputmethodservice/SoftInputWindow;->updateWidthHeight(Landroid/view/WindowManager$LayoutParams;)V

    .line 121
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 122
    return-void
.end method

.method public setToken(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 52
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 53
    invoke-virtual {p0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 54
    return-void
.end method
