.class public Landroid/content/res/theme/LeIconCustomHelper;
.super Ljava/lang/Object;
.source "LeIconCustomHelper.java"


# static fields
.field private static final CALENDAR_PACKAGE_NAME:Ljava/lang/String; = "com.android.calendar"

.field private static final CALENDAR_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "com.android.providers.calendar"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LeIconCustomHelper"

.field private static final TEMPLATE:Ljava/lang/String; = "template"

.field private static final TEMPLATE_BASE:Ljava/lang/String; = "base"

.field private static final TEMPLATE_EFFECT:Ljava/lang/String; = "effect"

.field private static final TEMPLATE_WIDTH_1080p:I = 0x90

.field private static final TEMPLATE_WIDTH_2K:I = 0xc0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDynamicCalendarIcon(Landroid/graphics/Bitmap;Landroid/content/res/theme/CalendarTheme;)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "iconBt"    # Landroid/graphics/Bitmap;
    .param p1, "calendarTheme"    # Landroid/content/res/theme/CalendarTheme;

    .prologue
    move-object/from16 v7, p1

    .local v7, "theme":Landroid/content/res/theme/CalendarTheme;
    move-object/from16 v0, p0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v7, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .local v2, "calendar":Ljava/util/Calendar;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v11, "E"

    invoke-direct {v4, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v4, "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .local v8, "weekStr":Ljava/lang/String;
    const/4 v11, 0x5

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "dayStr":Ljava/lang/String;
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6}, Landroid/text/TextPaint;-><init>()V

    .local v6, "paint":Landroid/text/TextPaint;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .local v1, "bound":Landroid/graphics/Rect;
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    iget v11, v7, Landroid/content/res/theme/CalendarTheme;->weekMarginTop:F

    float-to-double v12, v11

    const-wide/16 v14, 0x0

    cmpl-double v11, v12, v14

    if-eqz v11, :cond_1

    iget v11, v7, Landroid/content/res/theme/CalendarTheme;->weekTextColor:I

    if-eqz v11, :cond_1

    iget v11, v7, Landroid/content/res/theme/CalendarTheme;->weekTextSize:F

    float-to-double v12, v11

    const-wide/16 v14, 0x0

    cmpl-double v11, v12, v14

    if-eqz v11, :cond_1

    iget v11, v7, Landroid/content/res/theme/CalendarTheme;->weekTextColor:I

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setColor(I)V

    iget v11, v7, Landroid/content/res/theme/CalendarTheme;->weekTextSize:F

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v11, v7, Landroid/content/res/theme/CalendarTheme;->weekFontType:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/graphics/Typeface;->createEUIInternal(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6, v8, v11, v12, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v11, v1, Landroid/graphics/Rect;->left:I

    neg-int v11, v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iget v12, v1, Landroid/graphics/Rect;->right:I

    iget v13, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, v7, Landroid/content/res/theme/CalendarTheme;->weekMarginLeft:F

    add-float v9, v11, v12

    .local v9, "x":F
    iget v11, v1, Landroid/graphics/Rect;->top:I

    neg-int v11, v11

    int-to-float v11, v11

    iget v12, v7, Landroid/content/res/theme/CalendarTheme;->weekMarginTop:F

    add-float v10, v11, v12

    .local v10, "y":F
    const-string v11, "LeIconCustomHelper_calendar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "week x is"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  and y is"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v8, v9, v10, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_1
    iget v11, v7, Landroid/content/res/theme/CalendarTheme;->dayMarginTop:F

    float-to-double v12, v11

    const-wide/16 v14, 0x0

    cmpl-double v11, v12, v14

    if-eqz v11, :cond_2

    iget v11, v7, Landroid/content/res/theme/CalendarTheme;->dayTextColor:I

    if-eqz v11, :cond_2

    iget v11, v7, Landroid/content/res/theme/CalendarTheme;->dayTextSize:F

    float-to-double v12, v11

    const-wide/16 v14, 0x0

    cmpl-double v11, v12, v14

    if-eqz v11, :cond_2

    iget v11, v7, Landroid/content/res/theme/CalendarTheme;->dayTextColor:I

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setColor(I)V

    iget v11, v7, Landroid/content/res/theme/CalendarTheme;->dayTextSize:F

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v11, v7, Landroid/content/res/theme/CalendarTheme;->dayFontType:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/graphics/Typeface;->createEUIInternal(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v11, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6, v5, v11, v12, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v11, v1, Landroid/graphics/Rect;->left:I

    neg-int v11, v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iget v12, v1, Landroid/graphics/Rect;->right:I

    iget v13, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, v7, Landroid/content/res/theme/CalendarTheme;->dayMarginLeft:F

    add-float v9, v11, v12

    .restart local v9    # "x":F
    iget v11, v1, Landroid/graphics/Rect;->top:I

    neg-int v11, v11

    int-to-float v11, v11

    iget v12, v7, Landroid/content/res/theme/CalendarTheme;->dayMarginTop:F

    add-float v10, v11, v12

    .restart local v10    # "y":F
    const-string v11, "LeIconCustomHelper_calendar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "day x is"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  and y is"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v5, v9, v10, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method private static drawCalendarIcon2png(Landroid/content/res/theme/CalendarTheme;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "calendarTheme"    # Landroid/content/res/theme/CalendarTheme;
    .param p1, "iconPath"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .local v1, "calendar":Ljava/util/Calendar;
    const/4 v13, 0x5

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "dayStr":Ljava/lang/String;
    const-string v13, "LeIconCustomHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "dayStr is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/res/theme/CalendarTheme;->imageSrcIdAttri:Ljava/lang/String;

    .local v7, "daySrcId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/res/theme/CalendarTheme;->imageName:Ljava/lang/String;

    .local v6, "daySrc":Ljava/lang/String;
    const-string v5, ""

    .local v5, "currentDayPictureName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "#day%31"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".png"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "currentCalendarFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    if-lez v13, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "currentDayFilePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "currentDayFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v10, 0x0

    .local v10, "iStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v10    # "iStream":Ljava/io/FileInputStream;
    .local v11, "iStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v12

    .local v12, "iconBitmap":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_2

    if-eqz v11, :cond_1

    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v3    # "currentDayFile":Ljava/io/File;
    .end local v4    # "currentDayFilePath":Ljava/lang/String;
    .end local v11    # "iStream":Ljava/io/FileInputStream;
    .end local v12    # "iconBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v12

    .restart local v3    # "currentDayFile":Ljava/io/File;
    .restart local v4    # "currentDayFilePath":Ljava/lang/String;
    .restart local v11    # "iStream":Ljava/io/FileInputStream;
    .restart local v12    # "iconBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v9    # "e":Ljava/io/IOException;
    :cond_2
    if-eqz v11, :cond_3

    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v3    # "currentDayFile":Ljava/io/File;
    .end local v4    # "currentDayFilePath":Ljava/lang/String;
    .end local v11    # "iStream":Ljava/io/FileInputStream;
    .end local v12    # "iconBitmap":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    const/4 v12, 0x0

    goto :goto_0

    .restart local v3    # "currentDayFile":Ljava/io/File;
    .restart local v4    # "currentDayFilePath":Ljava/lang/String;
    .restart local v11    # "iStream":Ljava/io/FileInputStream;
    .restart local v12    # "iconBitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v9

    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "iStream":Ljava/io/FileInputStream;
    .end local v12    # "iconBitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "iStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    const-string v13, "LeIconCustomHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "get currentThemeCalendarDay picture failed message is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v10, :cond_3

    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v9

    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_3
    if-eqz v10, :cond_4

    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    :goto_4
    throw v13

    :catch_4
    move-exception v9

    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "iStream":Ljava/io/FileInputStream;
    .restart local v11    # "iStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v13

    move-object v10, v11

    .end local v11    # "iStream":Ljava/io/FileInputStream;
    .restart local v10    # "iStream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v10    # "iStream":Ljava/io/FileInputStream;
    .restart local v11    # "iStream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v9

    move-object v10, v11

    .end local v11    # "iStream":Ljava/io/FileInputStream;
    .restart local v10    # "iStream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method

.method private static getCalendarTheme(Ljava/lang/String;)Landroid/content/res/theme/CalendarTheme;
    .locals 7
    .param p0, "calendarDirPath"    # Ljava/lang/String;

    .prologue
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "manifest.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, "manifestFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x0

    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "is":Ljava/io/FileInputStream;
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v2}, Landroid/content/res/theme/LeIconCustomHelper;->getManifest(Ljava/io/InputStream;)Landroid/content/res/theme/CalendarTheme;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .local v4, "theme":Landroid/content/res/theme/CalendarTheme;
    if-eqz v4, :cond_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v4    # "theme":Landroid/content/res/theme/CalendarTheme;
    :cond_0
    :goto_0
    return-object v4

    .restart local v2    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "theme":Landroid/content/res/theme/CalendarTheme;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v4    # "theme":Landroid/content/res/theme/CalendarTheme;
    :cond_2
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .restart local v2    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "theme":Landroid/content/res/theme/CalendarTheme;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v4    # "theme":Landroid/content/res/theme/CalendarTheme;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_4
    throw v5

    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static getClipDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "needClipDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    if-nez p0, :cond_1

    const-string v7, "LeIconCustomHelper"

    const-string v8, "no iconDrawable to clip when get letvThemeIcon "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .end local p0    # "needClipDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "needClipDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-static {p0}, Landroid/content/res/theme/LeIconCustomHelper;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, "tempBitmap":Landroid/graphics/Bitmap;
    const-string v7, "template"

    invoke-static {p1, v7}, Landroid/content/res/theme/LeIconCustomHelper;->getTemplateBitmap(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .local v5, "templateBitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Landroid/content/res/theme/LeIconCustomHelper;->verifyTemplateSize(II)Z

    move-result v6

    .local v6, "verify":Z
    if-eqz v6, :cond_0

    .end local v6    # "verify":Z
    :cond_2
    const-string v7, "base"

    invoke-static {p1, v7}, Landroid/content/res/theme/LeIconCustomHelper;->getTemplateBitmap(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "basePlateLayerBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Landroid/content/res/theme/LeIconCustomHelper;->verifyTemplateSize(II)Z

    move-result v6

    .restart local v6    # "verify":Z
    if-eqz v6, :cond_0

    .end local v6    # "verify":Z
    :cond_3
    const-string v7, "effect"

    invoke-static {p1, v7}, Landroid/content/res/theme/LeIconCustomHelper;->getTemplateBitmap(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "effectLayerBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Landroid/content/res/theme/LeIconCustomHelper;->verifyTemplateSize(II)Z

    move-result v6

    .restart local v6    # "verify":Z
    if-eqz v6, :cond_0

    .end local v6    # "verify":Z
    :cond_4
    invoke-static {v5, v4, v0, v3}, Landroid/content/res/theme/LeIconCustomHelper;->getMixingBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "desBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v2, "desDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    move-object p0, v2

    goto :goto_0
.end method

.method public static getClipIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/util/DisplayMetrics;)Landroid/graphics/drawable/Drawable;
    .locals 22
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v3, 0x0

    .local v3, "clipDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static/range {p0 .. p0}, Landroid/content/res/theme/LeIconCustomHelper;->getThemeTemplateFilePath(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v15

    .local v15, "templateFilePath":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v14, "templateFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-lez v17, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "filePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .local v2, "arr$":[Ljava/io/File;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v5, v2, v7

    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    const-string v18, "png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v5    # "file":Ljava/io/File;
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "listSize":I
    if-lez v9, :cond_2

    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    .local v10, "rand":Ljava/util/Random;
    invoke-virtual {v10, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    .local v11, "randNum":I
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .local v16, "templateRandFilePath":Ljava/lang/String;
    if-eqz v16, :cond_2

    invoke-static/range {p1 .. p1}, Landroid/content/res/theme/LeIconCustomHelper;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v12

    .local v12, "resBitmap":Landroid/graphics/Bitmap;
    invoke-static/range {v16 .. v16}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    .local v13, "templateBitmap":Landroid/graphics/Bitmap;
    invoke-static {v13, v12}, Landroid/content/res/theme/LeIconCustomHelper;->getMixingBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, "desBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "clipDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v2    # "arr$":[Ljava/io/File;
    .end local v4    # "desBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "filePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "listSize":I
    .end local v10    # "rand":Ljava/util/Random;
    .end local v11    # "randNum":I
    .end local v12    # "resBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "templateBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "templateRandFilePath":Ljava/lang/String;
    .restart local v3    # "clipDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-object v3
.end method

.method public static getCurrentPackageIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/content/res/theme/LeIconCustomHelper;->getCurrentThemeResFilePath(ILandroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v1

    .local v1, "filePath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v5, "iconFile":Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "iStream":Ljava/io/InputStream;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "iStream":Ljava/io/InputStream;
    .local v3, "iStream":Ljava/io/InputStream;
    if-eqz v3, :cond_1

    :try_start_1
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .local v4, "iconBitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_1

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v2, v3

    .end local v3    # "iStream":Ljava/io/InputStream;
    .end local v4    # "iconBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "iStream":Ljava/io/InputStream;
    :goto_1
    return-object v4

    .end local v2    # "iStream":Ljava/io/InputStream;
    .restart local v3    # "iStream":Ljava/io/InputStream;
    .restart local v4    # "iconBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "iconBitmap":Landroid/graphics/Bitmap;
    :cond_1
    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v3

    .end local v3    # "iStream":Ljava/io/InputStream;
    .restart local v2    # "iStream":Ljava/io/InputStream;
    :cond_2
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .end local v2    # "iStream":Ljava/io/InputStream;
    .restart local v3    # "iStream":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .end local v3    # "iStream":Ljava/io/InputStream;
    .restart local v2    # "iStream":Ljava/io/InputStream;
    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_5
    throw v6

    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "iStream":Ljava/io/InputStream;
    .restart local v3    # "iStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "iStream":Ljava/io/InputStream;
    .restart local v2    # "iStream":Ljava/io/InputStream;
    goto :goto_4

    .end local v2    # "iStream":Ljava/io/InputStream;
    .restart local v3    # "iStream":Ljava/io/InputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3    # "iStream":Ljava/io/InputStream;
    .restart local v2    # "iStream":Ljava/io/InputStream;
    goto :goto_3

    .end local v2    # "iStream":Ljava/io/InputStream;
    .restart local v3    # "iStream":Ljava/io/InputStream;
    :cond_4
    move-object v2, v3

    .end local v3    # "iStream":Ljava/io/InputStream;
    .restart local v2    # "iStream":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static getCurrentThemeResFilePath(ILandroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 12
    .param p0, "type"    # I
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    const-string v4, ""

    .local v4, "resRoot":Ljava/lang/String;
    const-string v3, ""

    .local v3, "resPath":Ljava/lang/String;
    const-string v5, ""

    .local v5, "tempPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v10, "/data/letvTheme/"

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "dataThemeFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v4, "/data/letvTheme/"

    :goto_0
    packed-switch p0, :pswitch_data_0

    :cond_0
    :goto_1
    return-object v3

    :cond_1
    const-string v4, "/system/etc/letvTheme_3rd_default/"

    goto :goto_0

    :pswitch_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "icons"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "iconFilePathCommon":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v3, v5

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/content/res/theme/LeThemeUtils;->is2KScreen(Landroid/util/DisplayMetrics;)Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "icons_2k"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "icons_1080p"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .end local v2    # "iconFilePathCommon":Ljava/io/File;
    :pswitch_1
    invoke-static {p1}, Landroid/content/res/theme/LeThemeUtils;->is2KScreen(Landroid/util/DisplayMetrics;)Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "wallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "2k"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v8, "wallpaperFile2k":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v3, v5

    .end local v8    # "wallpaperFile2k":Ljava/io/File;
    :cond_4
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "wallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v9, "wallpaperFileComm":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "wallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .end local v9    # "wallpaperFileComm":Ljava/io/File;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "wallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "1080p"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v7, "wallpaperFile1080p":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v3, v5

    goto :goto_2

    .end local v7    # "wallpaperFile1080p":Ljava/io/File;
    :pswitch_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "icons"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "template"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v6, "templateFilePathCommon":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v3, v5

    goto/16 :goto_1

    :cond_6
    invoke-static {p1}, Landroid/content/res/theme/LeThemeUtils;->is2KScreen(Landroid/util/DisplayMetrics;)Z

    move-result v10

    if-eqz v10, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "icons_2k"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "template"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "icons_1080p"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "template"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .end local v6    # "templateFilePathCommon":Ljava/io/File;
    :pswitch_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "icons"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "com.android.calendar"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "calendarFilePathCommon":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v3, v5

    goto/16 :goto_1

    :cond_8
    invoke-static {p1}, Landroid/content/res/theme/LeThemeUtils;->is2KScreen(Landroid/util/DisplayMetrics;)Z

    move-result v10

    if-eqz v10, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "icons_2k"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "com.android.calendar"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "1080p"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "com.android.calendar"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDrawIcon()Landroid/graphics/Bitmap;
    .locals 22

    .prologue
    const-string v15, "com.android.calendar"

    .local v15, "packageName":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "iconPath":Ljava/lang/String;
    const-string v17, "com.android.calendar"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-static {}, Landroid/content/res/theme/LeThemeUtils;->getCalendarIconFilePath()Ljava/lang/String;

    move-result-object v12

    :cond_0
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v11, "iconFile":Ljava/io/File;
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-lez v17, :cond_7

    invoke-static {v12}, Landroid/content/res/theme/LeIconCustomHelper;->getCalendarTheme(Ljava/lang/String;)Landroid/content/res/theme/CalendarTheme;

    move-result-object v5

    .local v5, "calendarTheme":Landroid/content/res/theme/CalendarTheme;
    if-eqz v5, :cond_3

    iget-object v0, v5, Landroid/content/res/theme/CalendarTheme;->typeValue:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    iget-object v0, v5, Landroid/content/res/theme/CalendarTheme;->imageSrcIdAttri:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    iget-object v0, v5, Landroid/content/res/theme/CalendarTheme;->imageSrcAttri:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    invoke-static {v5, v12}, Landroid/content/res/theme/LeIconCustomHelper;->drawCalendarIcon2png(Landroid/content/res/theme/CalendarTheme;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-nez v3, :cond_1

    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    const/16 v16, 0x0

    .local v16, "srcIonFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .local v2, "arr$":[Ljava/io/File;
    array-length v13, v2

    .local v13, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v13, :cond_5

    aget-object v14, v2, v7

    .local v14, "mfile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    const-string v18, "png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v16, v14

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v14    # "mfile":Ljava/io/File;
    :cond_5
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-lez v17, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, "calendarIconBt":Landroid/graphics/Bitmap;
    if-nez v5, :cond_6

    move-object v3, v4

    goto/16 :goto_0

    :cond_6
    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/content/res/theme/LeIconCustomHelper;->createDynamicCalendarIcon(Landroid/graphics/Bitmap;Landroid/content/res/theme/CalendarTheme;)Landroid/graphics/Bitmap;

    move-result-object v3

    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    if-nez v3, :cond_1

    .end local v2    # "arr$":[Ljava/io/File;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "calendarIconBt":Landroid/graphics/Bitmap;
    .end local v5    # "calendarTheme":Landroid/content/res/theme/CalendarTheme;
    .end local v7    # "i$":I
    .end local v13    # "len$":I
    .end local v16    # "srcIonFile":Ljava/io/File;
    :cond_7
    :goto_2
    const/4 v3, 0x0

    goto/16 :goto_0

    .restart local v5    # "calendarTheme":Landroid/content/res/theme/CalendarTheme;
    .restart local v16    # "srcIonFile":Ljava/io/File;
    :cond_8
    const/4 v8, 0x0

    .local v8, "iStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v8    # "iStream":Ljava/io/InputStream;
    .local v9, "iStream":Ljava/io/InputStream;
    if-eqz v9, :cond_a

    :try_start_1
    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v10

    .local v10, "iconBitmap":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_a

    if-eqz v9, :cond_9

    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v8, 0x0

    .end local v9    # "iStream":Ljava/io/InputStream;
    .restart local v8    # "iStream":Ljava/io/InputStream;
    :goto_3
    move-object v3, v10

    goto/16 :goto_0

    .end local v8    # "iStream":Ljava/io/InputStream;
    .restart local v9    # "iStream":Ljava/io/InputStream;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .end local v6    # "e":Ljava/io/IOException;
    :cond_9
    move-object v8, v9

    .end local v9    # "iStream":Ljava/io/InputStream;
    .restart local v8    # "iStream":Ljava/io/InputStream;
    goto :goto_3

    .end local v8    # "iStream":Ljava/io/InputStream;
    .end local v10    # "iconBitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "iStream":Ljava/io/InputStream;
    :cond_a
    if-eqz v9, :cond_7

    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v8, 0x0

    .end local v9    # "iStream":Ljava/io/InputStream;
    .restart local v8    # "iStream":Ljava/io/InputStream;
    goto :goto_2

    .end local v8    # "iStream":Ljava/io/InputStream;
    .restart local v9    # "iStream":Ljava/io/InputStream;
    :catch_1
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "iStream":Ljava/io/InputStream;
    .restart local v8    # "iStream":Ljava/io/InputStream;
    :catch_2
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v8, :cond_7

    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v8, 0x0

    goto :goto_2

    :catch_3
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    :goto_5
    if-eqz v8, :cond_b

    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    const/4 v8, 0x0

    :cond_b
    :goto_6
    throw v17

    :catch_4
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "iStream":Ljava/io/InputStream;
    .restart local v9    # "iStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v17

    move-object v8, v9

    .end local v9    # "iStream":Ljava/io/InputStream;
    .restart local v8    # "iStream":Ljava/io/InputStream;
    goto :goto_5

    .end local v8    # "iStream":Ljava/io/InputStream;
    .restart local v9    # "iStream":Ljava/io/InputStream;
    :catch_5
    move-exception v6

    move-object v8, v9

    .end local v9    # "iStream":Ljava/io/InputStream;
    .restart local v8    # "iStream":Ljava/io/InputStream;
    goto :goto_4
.end method

.method private static getHandleIcon(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "icon"    # Landroid/graphics/Bitmap;
    .param p1, "handleTemplateWidth"    # I
    .param p2, "handleTempHeight"    # I
    .param p3, "sourceTemplateWidth"    # I
    .param p4, "sourceTemplateHeight"    # I

    .prologue
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .local v4, "maxTemplateSize":I
    const/4 v12, 0x2

    new-array v3, v12, [F

    fill-array-data v3, :array_0

    .local v3, "iconLocation":[F
    invoke-static {p0, v3}, Landroid/content/res/theme/LeIconCustomHelper;->getPixelAreaOfBitmap(Landroid/graphics/Bitmap;[F)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, "pixelAreaIcon":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .local v10, "pixelAreaIconWidth":I
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .local v8, "pixelAreaIconHeight":I
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    .local v9, "pixelAreaIconSizeMax":I
    if-le v9, v4, :cond_0

    int-to-float v12, v9

    int-to-float v13, v4

    div-float v11, v12, v13

    .local v11, "ratio":F
    int-to-float v12, v10

    div-float/2addr v12, v11

    float-to-int v10, v12

    int-to-float v12, v8

    div-float/2addr v12, v11

    float-to-int v8, v12

    invoke-static {v7, v10, v8}, Landroid/content/res/theme/LeIconCustomHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .end local v11    # "ratio":F
    :cond_0
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .local v5, "mixingBitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .local v6, "paint":Landroid/graphics/Paint;
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v2, "canvas":Landroid/graphics/Canvas;
    div-int/lit8 v12, p3, 0x2

    div-int/lit8 v13, v10, 0x2

    sub-int/2addr v12, v13

    int-to-float v12, v12

    div-int/lit8 v13, p4, 0x2

    div-int/lit8 v14, v8, 0x2

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v2, v7, v12, v13, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v5

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private static getHandleTemplate(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "template"    # Landroid/graphics/Bitmap;
    .param p1, "handleTemplateWidth"    # I
    .param p2, "handleTempHeight"    # I
    .param p3, "sourceTemplateWidth"    # I
    .param p4, "sourceTemplateHeight"    # I

    .prologue
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "mixingBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v0, "canvas":Landroid/graphics/Canvas;
    div-int/lit8 v3, p3, 0x2

    div-int/lit8 v4, p1, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p4, 0x2

    div-int/lit8 v5, p2, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, p0, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method public static getManifest(Ljava/io/InputStream;)Landroid/content/res/theme/CalendarTheme;
    .locals 24
    .param p0, "xml"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    new-instance v4, Landroid/content/res/theme/CalendarTheme;

    invoke-direct {v4}, Landroid/content/res/theme/CalendarTheme;-><init>()V

    .local v4, "calendarTheme":Landroid/content/res/theme/CalendarTheme;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .local v12, "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v22, "UTF-8"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    .local v10, "event":I
    :goto_0
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v10, v0, :cond_12

    packed-switch v10, :pswitch_data_0

    :cond_0
    :pswitch_0
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    goto :goto_0

    :pswitch_1
    const-string v22, "BroadcastBinder"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .local v2, "actionName":Ljava/lang/String;
    iget-object v0, v4, Landroid/content/res/theme/CalendarTheme;->actionList:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v2    # "actionName":Ljava/lang/String;
    :cond_1
    const-string v22, "week_margin_top"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v19

    .local v19, "weekMarginTop":F
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/res/theme/CalendarTheme;->setWeekMarginTop(F)V

    .end local v19    # "weekMarginTop":F
    :cond_2
    const-string v22, "week_margin_left"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v18

    .local v18, "weekMarginLeft":F
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/res/theme/CalendarTheme;->setWeekMarginLeft(F)V

    .end local v18    # "weekMarginLeft":F
    :cond_3
    const-string v22, "week_font"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v17

    .local v17, "weekFont":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/res/theme/CalendarTheme;->setWeekFontType(Ljava/lang/String;)V

    .end local v17    # "weekFont":Ljava/lang/String;
    :cond_4
    const-string v22, "week_text_size"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v21

    .local v21, "weekTextSize":F
    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/res/theme/CalendarTheme;->setWeekTextSize(F)V

    .end local v21    # "weekTextSize":F
    :cond_5
    const-string v22, "week_text_color"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v20

    .local v20, "weekTextColor":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/theme/CalendarTheme;->setWeekTextColor(I)V

    .end local v20    # "weekTextColor":Ljava/lang/String;
    :cond_6
    const-string v22, "day_margin_top"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .local v7, "dayMarginTop":F
    invoke-virtual {v4, v7}, Landroid/content/res/theme/CalendarTheme;->setDayMarginTop(F)V

    .end local v7    # "dayMarginTop":F
    :cond_7
    const-string v22, "day_margin_left"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .local v6, "dayMarginLeft":F
    invoke-virtual {v4, v6}, Landroid/content/res/theme/CalendarTheme;->setDayMarginLeft(F)V

    .end local v6    # "dayMarginLeft":F
    :cond_8
    const-string v22, "day_font"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .local v5, "dayFont":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/content/res/theme/CalendarTheme;->setDayFontType(Ljava/lang/String;)V

    .end local v5    # "dayFont":Ljava/lang/String;
    :cond_9
    const-string v22, "day_text_size"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .local v9, "dayTextSize":F
    invoke-virtual {v4, v9}, Landroid/content/res/theme/CalendarTheme;->setDayTextSize(F)V

    .end local v9    # "dayTextSize":F
    :cond_a
    const-string v22, "day_text_color"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .local v8, "dayTextColor":Ljava/lang/String;
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/theme/CalendarTheme;->setDayTextColor(I)V

    .end local v8    # "dayTextColor":Ljava/lang/String;
    :cond_b
    const-string v22, "Var"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .local v3, "attributeCount":I
    if-lez v3, :cond_e

    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v3, :cond_e

    const/16 v22, 0x0

    const-string v23, "name"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "valueName":Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "expression"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "valueExpression":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_c

    iput-object v14, v4, Landroid/content/res/theme/CalendarTheme;->type:Ljava/lang/String;

    :cond_c
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_d

    iput-object v13, v4, Landroid/content/res/theme/CalendarTheme;->typeValue:Ljava/lang/String;

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .end local v3    # "attributeCount":I
    .end local v11    # "i":I
    .end local v13    # "valueExpression":Ljava/lang/String;
    .end local v14    # "valueName":Ljava/lang/String;
    :cond_e
    const-string v22, "Image"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    .restart local v3    # "attributeCount":I
    if-lez v3, :cond_0

    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    if-ge v11, v3, :cond_0

    const/16 v22, 0x0

    const-string v23, "name"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "valueName":Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "src"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, "valueSrc":Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "srcid"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, "valueSrcid":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_f

    iput-object v14, v4, Landroid/content/res/theme/CalendarTheme;->imageName:Ljava/lang/String;

    :cond_f
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_10

    iput-object v15, v4, Landroid/content/res/theme/CalendarTheme;->imageSrcAttri:Ljava/lang/String;

    :cond_10
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_11

    move-object/from16 v0, v16

    iput-object v0, v4, Landroid/content/res/theme/CalendarTheme;->imageSrcIdAttri:Ljava/lang/String;

    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .end local v3    # "attributeCount":I
    .end local v11    # "i":I
    .end local v14    # "valueName":Ljava/lang/String;
    .end local v15    # "valueSrc":Ljava/lang/String;
    .end local v16    # "valueSrcid":Ljava/lang/String;
    :cond_12
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getMixIconwithTemplate(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "icon"    # Landroid/graphics/Bitmap;
    .param p1, "template"    # Landroid/graphics/Bitmap;
    .param p2, "sourceTemplateWidth"    # I
    .param p3, "sourceTemplateHeight"    # I

    .prologue
    const/4 v5, 0x0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .end local p0    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "icon":Landroid/graphics/Bitmap;
    :cond_1
    if-eqz p1, :cond_0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "mixingBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, p0, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, p1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p0, v1

    goto :goto_0
.end method

.method public static getMixingBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "template"    # Landroid/graphics/Bitmap;
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v11, 0x0

    :goto_0
    return-object v11

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, "beginTime":J
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .local v15, "sourceWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .local v14, "sourceHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .local v17, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .local v7, "height":I
    const-string v18, "LeIconCustomHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " getMixingBitmap sourceWidth = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " sourceHeight = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " width = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " height = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v7

    move/from16 v19, v0

    div-float v13, v18, v19

    .local v13, "ratio":F
    move/from16 v0, v17

    if-lt v0, v7, :cond_3

    move/from16 v17, v15

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v18, v18, v13

    move/from16 v0, v18

    float-to-int v7, v0

    :cond_2
    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1, v7}, Landroid/content/res/theme/LeIconCustomHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const-string v18, "LeIconCustomHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " getMixingBitmap sourceWidth = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " sourceHeight = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " width = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " height = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v18, v15, v17

    div-int/lit8 v10, v18, 0x2

    .local v10, "left":I
    sub-int v18, v14, v7

    div-int/lit8 v16, v18, 0x2

    .local v16, "top":I
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v18

    invoke-static {v15, v14, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .local v11, "mixingBitmap":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .local v12, "paint":Landroid/graphics/Paint;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v6, "canvas":Landroid/graphics/Canvas;
    int-to-float v0, v10

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v18, Landroid/graphics/PorterDuffXfermode;

    sget-object v19, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v18 .. v19}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .local v8, "endTime":J
    const-string v18, "LeIconCustomHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " getMixingBitmap use time = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sub-long v20, v8, v4

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "endTime":J
    .end local v10    # "left":I
    .end local v11    # "mixingBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "paint":Landroid/graphics/Paint;
    .end local v16    # "top":I
    :cond_3
    move/from16 v0, v17

    if-le v7, v0, :cond_2

    move v7, v14

    int-to-float v0, v7

    move/from16 v18, v0

    mul-float v18, v18, v13

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    goto/16 :goto_1
.end method

.method public static getMixingBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 31
    .param p0, "template"    # Landroid/graphics/Bitmap;
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "baseplateLayerBp"    # Landroid/graphics/Bitmap;
    .param p3, "highlightLayerBp"    # Landroid/graphics/Bitmap;

    .prologue
    if-nez p1, :cond_1

    const/4 v14, 0x0

    :cond_0
    :goto_0
    return-object v14

    :cond_1
    if-nez p0, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    if-nez p0, :cond_8

    const/16 v20, 0x0

    .local v20, "size":I
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    :cond_3
    if-nez v20, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    :cond_4
    if-nez v20, :cond_5

    const/4 v14, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .local v12, "iconWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .local v10, "iconHeight":I
    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v16, v27, v28

    .local v16, "ratio":F
    int-to-float v0, v12

    move/from16 v27, v0

    div-float v27, v27, v16

    move/from16 v0, v27

    float-to-int v12, v0

    int-to-float v0, v10

    move/from16 v27, v0

    div-float v27, v27, v16

    move/from16 v0, v27

    float-to-int v10, v0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v10}, Landroid/content/res/theme/LeIconCustomHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .end local v16    # "ratio":F
    :cond_6
    sget-object v27, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v20

    move/from16 v1, v20

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .local v14, "mixingBitmap":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .local v15, "paint":Landroid/graphics/Paint;
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v6, "canvas":Landroid/graphics/Canvas;
    if-eqz p2, :cond_7

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    sub-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    div-float v29, v29, v30

    sub-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v28

    move-object/from16 v0, p2

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v6, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_7
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    int-to-float v0, v12

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    sub-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    int-to-float v0, v10

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    div-float v29, v29, v30

    sub-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v28

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v6, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    sub-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    div-float v29, v29, v30

    sub-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v28

    move-object/from16 v0, p3

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v6, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "iconHeight":I
    .end local v12    # "iconWidth":I
    .end local v14    # "mixingBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "paint":Landroid/graphics/Paint;
    .end local v20    # "size":I
    :cond_8
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v5, v0, [F

    fill-array-data v5, :array_0

    .local v5, "bitmapLocation":[F
    move-object/from16 v21, p0

    .local v21, "sourceTemplate":Landroid/graphics/Bitmap;
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    .local v23, "sourceTemplateWidth":I
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    .local v22, "sourceTemplateHeight":I
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Landroid/content/res/theme/LeIconCustomHelper;->getPixelAreaOfBitmap(Landroid/graphics/Bitmap;[F)Landroid/graphics/Bitmap;

    move-result-object v17

    .local v17, "realSizeTemplate":Landroid/graphics/Bitmap;
    if-nez v17, :cond_9

    move-object/from16 v14, p1

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v22

    if-le v0, v1, :cond_a

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/content/res/theme/LeIconCustomHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_a
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .local v18, "realTemlateHieght":I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .local v19, "realTemplateWidth":I
    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v18

    move/from16 v3, v23

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Landroid/content/res/theme/LeIconCustomHelper;->getHandleIcon(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, "handleIcon":Landroid/graphics/Bitmap;
    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v18

    move/from16 v3, v23

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Landroid/content/res/theme/LeIconCustomHelper;->getHandleTemplate(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .local v8, "handleTemplate":Landroid/graphics/Bitmap;
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v7, v8, v0, v1}, Landroid/content/res/theme/LeIconCustomHelper;->getMixIconwithTemplate(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v13

    .local v13, "mixIconWithTemplate":Landroid/graphics/Bitmap;
    sget-object v27, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v23

    move/from16 v1, v22

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .restart local v14    # "mixingBitmap":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .restart local v15    # "paint":Landroid/graphics/Paint;
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v6    # "canvas":Landroid/graphics/Canvas;
    const/16 v27, 0x0

    aget v27, v5, v27

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    sub-float v25, v27, v28

    .local v25, "x":F
    const/16 v27, 0x1

    aget v27, v5, v27

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    sub-float v26, v27, v28

    .local v26, "y":F
    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v13, v0, v1, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_b

    new-instance v27, Landroid/graphics/PorterDuffXfermode;

    sget-object v28, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v27 .. v28}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v6, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_b
    if-eqz p3, :cond_0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "handleIcon":Landroid/graphics/Bitmap;
    .end local v8    # "handleTemplate":Landroid/graphics/Bitmap;
    .end local v13    # "mixIconWithTemplate":Landroid/graphics/Bitmap;
    .end local v14    # "mixingBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "paint":Landroid/graphics/Paint;
    .end local v25    # "x":F
    .end local v26    # "y":F
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .restart local v12    # "iconWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .restart local v10    # "iconHeight":I
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .local v11, "iconMaxSize":I
    move/from16 v0, v18

    if-le v11, v0, :cond_d

    int-to-float v0, v11

    move/from16 v27, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v16, v27, v28

    .restart local v16    # "ratio":F
    int-to-float v0, v12

    move/from16 v27, v0

    div-float v27, v27, v16

    move/from16 v0, v27

    float-to-int v12, v0

    int-to-float v0, v10

    move/from16 v27, v0

    div-float v27, v27, v16

    move/from16 v0, v27

    float-to-int v10, v0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v10}, Landroid/content/res/theme/LeIconCustomHelper;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .end local v16    # "ratio":F
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    .local v24, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .local v9, "height":I
    const/16 v27, 0x0

    aget v27, v5, v27

    const/high16 v28, -0x40800000    # -1.0f

    cmpl-float v27, v27, v28

    if-nez v27, :cond_e

    const/16 v27, 0x0

    div-int/lit8 v28, v23, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    aput v28, v5, v27

    :cond_e
    const/16 v27, 0x1

    aget v27, v5, v27

    const/high16 v28, -0x40800000    # -1.0f

    cmpl-float v27, v27, v28

    if-nez v27, :cond_f

    const/16 v27, 0x1

    div-int/lit8 v28, v22, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    aput v28, v5, v27

    :cond_f
    sget-object v27, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v23

    move/from16 v1, v22

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .restart local v14    # "mixingBitmap":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .restart local v15    # "paint":Landroid/graphics/Paint;
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v6    # "canvas":Landroid/graphics/Canvas;
    const/16 v27, 0x0

    aget v27, v5, v27

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    sub-float v25, v27, v28

    .restart local v25    # "x":F
    const/16 v27, 0x1

    aget v27, v5, v27

    int-to-float v0, v9

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    sub-float v26, v27, v28

    .restart local v26    # "y":F
    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v6, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v27, Landroid/graphics/PorterDuffXfermode;

    sget-object v28, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v27 .. v28}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v6, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_10

    new-instance v27, Landroid/graphics/PorterDuffXfermode;

    sget-object v28, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v27 .. v28}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v6, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_10
    if-eqz p3, :cond_0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public static getPackageIconFromTheme(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x0

    const-string v7, "com.android.calendar"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.android.providers.calendar"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    invoke-static {}, Landroid/content/res/theme/LeIconCustomHelper;->getDrawIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmapCalendar":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    move-object v4, v1

    .end local v0    # "bitmapCalendar":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v4

    .restart local v0    # "bitmapCalendar":Landroid/graphics/Bitmap;
    :cond_2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v1, "drawableCalendar":Landroid/graphics/drawable/Drawable;
    move-object v4, v1

    goto :goto_0

    .end local v0    # "bitmapCalendar":Landroid/graphics/Bitmap;
    .end local v1    # "drawableCalendar":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-static {p1, p0}, Landroid/content/res/theme/LeIconCustomHelper;->haveReDrawIconInThemeFile(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p1, p0}, Landroid/content/res/theme/LeIconCustomHelper;->getThemeIconFilePath(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "filePath":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v4, p1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v4, "iconDrawabale":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    const-string v7, "LeIconCustomHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "iconDrawabale":Landroid/graphics/drawable/Drawable;
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v7, "LeIconCustomHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPackageIconFile failed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_4

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_4
    :goto_2
    move-object v4, v1

    goto :goto_0

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    const-string v7, "LeIconCustomHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v7, "LeIconCustomHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPackageIconFile failed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    const-string v7, "LeIconCustomHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v5, :cond_5

    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_5
    :goto_5
    throw v7

    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "LeIconCustomHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "e: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_4

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_6
    move-exception v2

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_3

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto/16 :goto_1
.end method

.method public static getPixelAreaOfBitmap(Landroid/graphics/Bitmap;[F)Landroid/graphics/Bitmap;
    .locals 33
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "bitmapLocation"    # [F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .local v18, "beginTime":J
    if-nez p0, :cond_0

    const-string v2, "LeIconCustomHelper"

    const-string v4, " getPixelAreaOfBitmap bitmap is null "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x0

    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .local v5, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v21

    .local v21, "density":I
    const-string v2, "LeIconCustomHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPixelAreaOfBitmap width = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " height = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " density = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v29, 0xf4240

    .local v29, "miny":I
    move/from16 v28, v29

    .local v28, "minx":I
    const/16 v27, -0x1

    .local v27, "maxy":I
    move/from16 v26, v27

    .local v26, "maxx":I
    const/4 v2, 0x4

    new-array v0, v2, [I

    move-object/from16 v30, v0

    .local v30, "rect":[I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .local v3, "pixels":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/16 v32, 0x0

    .local v32, "y":I
    :goto_1
    move/from16 v0, v32

    if-ge v0, v9, :cond_6

    const/16 v31, 0x0

    .local v31, "x":I
    :goto_2
    move/from16 v0, v31

    if-ge v0, v5, :cond_5

    mul-int v2, v32, v5

    add-int v23, v2, v31

    .local v23, "index":I
    aget v20, v3, v23

    .local v20, "color":I
    if-eqz v20, :cond_4

    move/from16 v0, v32

    move/from16 v1, v29

    if-ge v0, v1, :cond_1

    move/from16 v29, v32

    :cond_1
    move/from16 v0, v32

    move/from16 v1, v27

    if-le v0, v1, :cond_2

    move/from16 v27, v32

    :cond_2
    move/from16 v0, v31

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    move/from16 v28, v31

    :cond_3
    move/from16 v0, v31

    move/from16 v1, v26

    if-le v0, v1, :cond_4

    move/from16 v26, v31

    :cond_4
    add-int/lit8 v31, v31, 0x1

    goto :goto_2

    .end local v20    # "color":I
    .end local v23    # "index":I
    :cond_5
    add-int/lit8 v32, v32, 0x1

    goto :goto_1

    .end local v31    # "x":I
    :cond_6
    const/4 v2, 0x0

    aput v28, v30, v2

    const/4 v2, 0x1

    aput v29, v30, v2

    const/4 v2, 0x2

    aput v26, v30, v2

    const/4 v2, 0x3

    aput v27, v30, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    aget v4, v30, v4

    int-to-float v4, v4

    aput v4, p1, v2

    const/4 v2, 0x1

    const/4 v4, 0x1

    aget v4, v30, v4

    int-to-float v4, v4

    aput v4, p1, v2

    const-string v2, "LeIconCustomHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getPixelAreaOfBitmap use time = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v18

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    aget v2, v30, v2

    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v13, v2, v4

    .local v13, "bitmap_w":I
    const/4 v2, 0x3

    aget v2, v30, v2

    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v17, v2, v4

    .local v17, "bitmap_h":I
    const/4 v2, 0x0

    const/4 v4, 0x0

    aget v4, v30, v4

    int-to-float v4, v4

    int-to-float v6, v13

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v4, v6

    aput v4, p1, v2

    const/4 v2, 0x1

    const/4 v4, 0x1

    aget v4, v30, v4

    int-to-float v4, v4

    move/from16 v0, v17

    int-to-float v6, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v4, v6

    aput v4, p1, v2

    const/4 v12, 0x0

    const/4 v2, 0x0

    :try_start_0
    aget v14, v30, v2

    const/4 v2, 0x1

    aget v15, v30, v2

    move-object/from16 v10, p0

    move-object v11, v3

    move/from16 v16, v13

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v12, 0x0

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v11, v3

    move v14, v13

    move/from16 v15, v17

    invoke-static/range {v11 .. v16}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .local v24, "endTime":J
    const-string v2, "LeIconCustomHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getPixelAreaOfBitmap use time = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v6, v24, v18

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v24    # "endTime":J
    :catch_0
    move-exception v22

    .local v22, "e":Ljava/lang/Exception;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private static getTemplateBitmap(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "templateName"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/content/res/theme/LeIconCustomHelper;->getThemeTemplateFilePath(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v9

    .local v9, "tempFilePath":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v11, "templateFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v12

    array-length v12, v12

    if-lez v12, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "filePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, "arr$":[Ljava/io/File;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    const-string v13, "png"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2    # "file":Ljava/io/File;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "listSize":I
    if-lez v6, :cond_2

    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .local v7, "rand":Ljava/util/Random;
    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    .local v8, "randNum":I
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "RandFilePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .end local v0    # "RandFilePath":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v3    # "filePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "listSize":I
    .end local v7    # "rand":Ljava/util/Random;
    .end local v8    # "randNum":I
    :goto_1
    return-object v10

    :cond_2
    const/4 v10, 0x0

    goto :goto_1
.end method

.method private static getThemeIconFilePath(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/res/theme/LeIconCustomHelper;->getCurrentThemeResFilePath(ILandroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v1

    .local v1, "currentResPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "currentIonPath":Ljava/lang/String;
    return-object v0
.end method

.method private static getThemeTemplateFilePath(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v0, 0x3

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/res/theme/LeIconCustomHelper;->getCurrentThemeResFilePath(ILandroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static haveReDrawIconInThemeFile(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Landroid/content/res/theme/LeIconCustomHelper;->getThemeIconFilePath(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "iconFilePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "iconFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method public static haveThemeTemplateFile(Landroid/content/res/Resources;)Z
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/content/res/theme/LeIconCustomHelper;->getThemeTemplateFilePath(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "templateFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static intArrayToInt([I)I
    .locals 5
    .param p0, "intArray"    # [I

    .prologue
    const/4 v3, 0x0

    .local v3, "returnInt":I
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v4, v0, v1

    .local v4, "value":I
    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "value":I
    :cond_0
    return v3
.end method

.method public static isReDrawCalendarIcon()Z
    .locals 6

    .prologue
    invoke-static {}, Landroid/content/res/theme/LeThemeUtils;->getCalendarIconFilePath()Ljava/lang/String;

    move-result-object v1

    .local v1, "iconPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "iconFile":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static verifyTemplateSize(II)Z
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, "maxSize":I
    const/16 v1, 0xc0

    if-le v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .local v4, "h":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .local v9, "scaleWidth":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .local v8, "scaleHeight":F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, "newbmp":Landroid/graphics/Bitmap;
    return-object v7
.end method
