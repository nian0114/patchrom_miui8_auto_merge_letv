.class public Lcom/letv/leui/util/statusbar/PickerColorUtils;
.super Ljava/lang/Object;
.source "PickerColorUtils.java"

# interfaces
.implements Lcom/letv/leui/util/statusbar/StatusBarUpdater;


# static fields
.field private static CAPTURE_HEIGHT:I = 0x0

.field private static CAPTURE_WIDTH:I = 0x0

.field public static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ImmersiveStatusBar"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 23
    sput v0, Lcom/letv/leui/util/statusbar/PickerColorUtils;->CAPTURE_WIDTH:I

    .line 24
    sput v0, Lcom/letv/leui/util/statusbar/PickerColorUtils;->CAPTURE_HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private getMainColorInBitmap(Landroid/graphics/Bitmap;)I
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 59
    if-nez p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v2

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 68
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 70
    .local v7, "height":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 71
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 72
    invoke-direct {p0, v1}, Lcom/letv/leui/util/statusbar/PickerColorUtils;->getMaxCount([I)Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "color":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private getMaxCount([I)Ljava/lang/String;
    .locals 14
    .param p1, "pixels"    # [I

    .prologue
    .line 78
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v12, p1

    if-ge v3, v12, :cond_0

    .line 80
    aget v12, p1, v3

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    .local v0, "c":Ljava/lang/String;
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 85
    .local v5, "l":Ljava/lang/Integer;
    if-nez v5, :cond_1

    .line 86
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 89
    :goto_2
    invoke-interface {v7, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    .line 91
    .end local v0    # "c":Ljava/lang/String;
    .end local v5    # "l":Ljava/lang/Integer;
    :cond_2
    const/4 v8, 0x0

    .line 92
    .local v8, "max":Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 93
    .local v10, "num":J
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 94
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 95
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 96
    .local v9, "temp":Ljava/lang/Integer;
    if-eqz v8, :cond_4

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    cmp-long v12, v12, v10

    if-lez v12, :cond_3

    .line 97
    :cond_4
    move-object v8, v4

    .line 98
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v10, v12

    goto :goto_3

    .line 109
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v9    # "temp":Ljava/lang/Integer;
    :cond_5
    return-object v8
.end method


# virtual methods
.method public PickerColor(Landroid/view/View;I)I
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pickerMode"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 32
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 33
    .local v2, "frame":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 34
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 35
    .local v4, "statusBarHeight":I
    sget v5, Lcom/letv/leui/util/statusbar/PickerColorUtils;->CAPTURE_WIDTH:I

    sget v6, Lcom/letv/leui/util/statusbar/PickerColorUtils;->CAPTURE_HEIGHT:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 36
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 37
    .local v1, "canvas":Landroid/graphics/Canvas;
    if-nez p2, :cond_2

    .line 38
    add-int/lit8 v5, v4, 0x5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 42
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 44
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-gtz v5, :cond_3

    .line 49
    :cond_1
    :goto_1
    return v3

    .line 39
    :cond_2
    if-ne p2, v3, :cond_0

    .line 40
    const/high16 v5, -0x3f600000    # -5.0f

    invoke-virtual {v1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 48
    :cond_3
    invoke-direct {p0, v0}, Lcom/letv/leui/util/statusbar/PickerColorUtils;->getMainColorInBitmap(Landroid/graphics/Bitmap;)I

    move-result v3

    .line 49
    .local v3, "pickColor":I
    goto :goto_1
.end method

.method public SetStatusBarColor(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pickerMode"    # I

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/util/statusbar/PickerColorUtils;->PickerColor(Landroid/view/View;I)I

    move-result v0

    .line 55
    .local v0, "pickColor":I
    invoke-virtual {p0, v0}, Lcom/letv/leui/util/statusbar/PickerColorUtils;->update(I)V

    .line 56
    return-void
.end method

.method public printView(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 117
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 119
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 120
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/util/statusbar/PickerColorUtils;->printView(Ljava/lang/Object;)V

    .line 118
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    const-string v2, "ImmersiveStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "---->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "top = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "bottom = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 126
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public update(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 114
    return-void
.end method
