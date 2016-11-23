.class public Lcom/letv/leui/preference/LeDividerFilterImp;
.super Ljava/lang/Object;
.source "LeDividerFilterImp.java"

# interfaces
.implements Lcom/letv/leui/widget/DividerFilter;


# instance fields
.field private dividePaddingColor:I

.field private isThemeLeui:Z

.field private mAdapter:Landroid/preference/PreferenceGroupAdapter;

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceGroupAdapter;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "mAdapter"    # Landroid/preference/PreferenceGroupAdapter;
    .param p2, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    .line 29
    iput-object p2, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mRes:Landroid/content/res/Resources;

    .line 30
    return-void
.end method

.method private whetherDrawDivider(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "isPreferenceCategoryCurrent":Z
    const/4 v1, 0x0

    .line 111
    .local v1, "isPreferenceCategoryNext":Z
    const/4 v2, 0x0

    .line 114
    .local v2, "isPriAppAndLastItem":Z
    iget-object v5, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v5, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v3

    .line 115
    .local v3, "preferenceCurrent":Landroid/preference/Preference;
    instance-of v0, v3, Landroid/preference/PreferenceCategory;

    .line 118
    iget-object v5, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq p1, v5, :cond_2

    .line 119
    iget-object v5, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v4

    .line 120
    .local v4, "preferenceNext":Landroid/preference/Preference;
    instance-of v1, v4, Landroid/preference/PreferenceCategory;

    .line 126
    .end local v4    # "preferenceNext":Landroid/preference/Preference;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    .line 127
    :cond_1
    const/4 v5, 0x0

    .line 132
    :goto_1
    return v5

    .line 121
    :cond_2
    iget-boolean v5, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->isThemeLeui:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_0

    .line 123
    const/4 v2, 0x1

    goto :goto_0

    .line 132
    :cond_3
    const/4 v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method public bottomDividerEnabled()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->isThemeLeui:Z

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dividerEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/letv/leui/preference/LeDividerFilterImp;->whetherDrawDivider(I)Z

    move-result v0

    return v0
.end method

.method public dividerPaddingColor()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->dividePaddingColor:I

    return v0
.end method

.method public forceDrawDivider(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroupAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/letv/leui/preference/LeDividerFilterImp;->whetherDrawDivider(I)Z

    move-result v0

    goto :goto_0
.end method

.method public leftDividerMargin(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const v3, 0x1050146

    const v2, 0x1050142

    .line 53
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroupAdapter;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :goto_0
    return v0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mAdapter:Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mRes:Landroid/content/res/Resources;

    const v2, 0x1050147

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public rightDividerMargin(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultDividePaddingColor(Landroid/content/Context;)Lcom/letv/leui/preference/LeDividerFilterImp;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 90
    sget-object v1, Lcom/android/internal/R$styleable;->ThemeLeui:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->mRes:Landroid/content/res/Resources;

    const v2, 0x1060108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->dividePaddingColor:I

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/preference/LeDividerFilterImp;->isThemeLeui:Z

    .line 95
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    :cond_0
    return-object p0
.end method

.method public topDividerEnabled()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method
