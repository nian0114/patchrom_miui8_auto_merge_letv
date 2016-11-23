.class final Lcom/android/internal/policy/PhoneWindow$ImmersiveView;
.super Landroid/view/View;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImmersiveView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2221
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$ImmersiveView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    .line 2222
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2223
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 2228
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2229
    sget-boolean v0, Lcom/letv/leui/util/immersivemode/EuiImmersiveModeManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2230
    const-string v0, "PhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImmersiveView onDraw package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$ImmersiveView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$ImmersiveView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mEuiForcedStatusBarColor:Z
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->access$600(Lcom/android/internal/policy/PhoneWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2232
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 2233
    .local v5, "pt":Landroid/graphics/Paint;
    const/high16 v0, -0x10000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2234
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2235
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2236
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2239
    .end local v5    # "pt":Landroid/graphics/Paint;
    :cond_0
    return-void
.end method
