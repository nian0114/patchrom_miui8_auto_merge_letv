.class public Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;
.super Ljava/lang/Object;
.source "StatusbarColorFromTitleHelper.java"


# static fields
.field public static CAPTURE_HEIGHT:I = 0x0

.field public static CAPTURE_WIDTH:I = 0x0

.field public static DEBUG:Z = false

.field public static LEUI_IMMERSIVE_STATUSBAR_ENABLE:Z = false

.field public static final TAG:Ljava/lang/String; = "StatusbarColorFromTitleHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    sput v0, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->CAPTURE_WIDTH:I

    const/16 v0, 0x46

    sput v0, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->CAPTURE_HEIGHT:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->DEBUG:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->LEUI_IMMERSIVE_STATUSBAR_ENABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureScreen(Landroid/app/Activity;)Lcom/letv/leui/util/statusbar/StatusbarColorInfo;
    .locals 9
    .param p0, "pActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .local v1, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v3, v1, Landroid/graphics/Rect;->top:I

    .local v3, "stautsHeight":I
    const/4 v0, 0x0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-lez v3, :cond_0

    sget v6, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->CAPTURE_WIDTH:I

    sget v7, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->CAPTURE_HEIGHT:I

    add-int/2addr v7, v3

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v2, "mCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v4, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-gtz v6, :cond_1

    .end local v2    # "mCanvas":Landroid/graphics/Canvas;
    :cond_0
    :goto_0
    return-object v5

    .restart local v2    # "mCanvas":Landroid/graphics/Canvas;
    :cond_1
    const/4 v5, 0x0

    sget v6, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->CAPTURE_WIDTH:I

    sget v7, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->CAPTURE_HEIGHT:I

    invoke-static {v0, v5, v3, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->getColorFromBitmap(Landroid/graphics/Bitmap;)Lcom/letv/leui/util/statusbar/StatusbarColorInfo;

    move-result-object v5

    goto :goto_0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v1, "canvas":Landroid/graphics/Canvas;
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    const/4 v3, 0x1

    const/16 v4, 0x50

    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    const/16 v3, 0x1e0

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalArgumentException;
    throw v2
.end method

.method public static getColorFromBitmap(Landroid/graphics/Bitmap;)Lcom/letv/leui/util/statusbar/StatusbarColorInfo;
    .locals 9
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    :try_start_0
    invoke-static {p0}, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->getMainColorInBitmap(Landroid/graphics/Bitmap;)I

    move-result v5

    .local v5, "pixel":I
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .local v6, "red":I
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .local v1, "blue":I
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .local v3, "green":I
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .local v0, "alpha":I
    new-instance v4, Lcom/letv/leui/util/statusbar/StatusbarColorInfo;

    invoke-direct {v4}, Lcom/letv/leui/util/statusbar/StatusbarColorInfo;-><init>()V

    .local v4, "mInfo":Lcom/letv/leui/util/statusbar/StatusbarColorInfo;
    const/16 v7, 0xd2

    if-gt v3, v7, :cond_0

    add-int v7, v6, v3

    add-int/2addr v7, v1

    const/16 v8, 0x20d

    if-le v7, v8, :cond_1

    :cond_0
    const/high16 v7, -0x1000000

    invoke-virtual {v4, v7}, Lcom/letv/leui/util/statusbar/StatusbarColorInfo;->setStatusbarIconColor(I)V

    :goto_0
    invoke-static {v0, v6, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/letv/leui/util/statusbar/StatusbarColorInfo;->setStatusbarBgColor(I)V

    .end local v0    # "alpha":I
    .end local v1    # "blue":I
    .end local v3    # "green":I
    .end local v4    # "mInfo":Lcom/letv/leui/util/statusbar/StatusbarColorInfo;
    .end local v5    # "pixel":I
    .end local v6    # "red":I
    :goto_1
    return-object v4

    .restart local v0    # "alpha":I
    .restart local v1    # "blue":I
    .restart local v3    # "green":I
    .restart local v4    # "mInfo":Lcom/letv/leui/util/statusbar/StatusbarColorInfo;
    .restart local v5    # "pixel":I
    .restart local v6    # "red":I
    :cond_1
    const/4 v7, -0x1

    invoke-virtual {v4, v7}, Lcom/letv/leui/util/statusbar/StatusbarColorInfo;->setStatusbarIconColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "alpha":I
    .end local v1    # "blue":I
    .end local v3    # "green":I
    .end local v4    # "mInfo":Lcom/letv/leui/util/statusbar/StatusbarColorInfo;
    .end local v5    # "pixel":I
    .end local v6    # "red":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static getMainColorInBitmap(Landroid/graphics/Bitmap;)I
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .local v7, "height":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {v1}, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->getMaxCount([I)Ljava/lang/String;

    move-result-object v8

    .local v8, "color":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private static getMaxCount([I)Ljava/lang/String;
    .locals 15
    .param p0, "pixels"    # [I

    .prologue
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v12, p0

    if-ge v3, v12, :cond_0

    aget v12, p0, v3

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

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

    .local v0, "c":Ljava/lang/String;
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .local v5, "l":Ljava/lang/Integer;
    if-nez v5, :cond_1

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_2
    invoke-interface {v7, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    .end local v0    # "c":Ljava/lang/String;
    .end local v5    # "l":Ljava/lang/Integer;
    :cond_2
    const/4 v8, 0x0

    .local v8, "max":Ljava/lang/String;
    const-wide/16 v10, 0x0

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

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .local v9, "temp":Ljava/lang/Integer;
    if-eqz v8, :cond_4

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    cmp-long v12, v12, v10

    if-lez v12, :cond_3

    :cond_4
    move-object v8, v4

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v10, v12

    goto :goto_3

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v9    # "temp":Ljava/lang/Integer;
    :cond_5
    sget-boolean v12, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->DEBUG:Z

    if-eqz v12, :cond_6

    const-string v12, "StatusbarColorFromTitleHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "max =="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "StatusbarColorFromTitleHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "size =="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "StatusbarColorFromTitleHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "num =="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v8
.end method
