--[[
    СТИЛЬ:
    imgui.StyleVar.
    - Alpha (number) - Прозрачность всех элементов
    - WindowPadding (ImVec2) - Отступы от краев окна
    - WindowRounding (number) - Загругление окна
    - WindowBorderSize (number) - Размер обводки окна
    - WindowMinSize (ImVec2) - Минимальный размер окна
    - WindowTitleAlign (ImVec2) - Выравнивание заголовка окна (от 0 до 1), центр - 0.5, 0.5
    - ChildRounding (number) - закругление чайлдов
    - ChildBorderSize (number) - размер обводки чайлдов
    - PopupRounding (number) - закругление попапов
    - PopupBorderSize (number) - размер обводки попапов
    - FramePadding (ImVec2) - 
    - FrameRounding (number) - закругление кнопок, полей ввода и т.д 
    - FrameBorderSize (number) - размер обводки кнопок, полей ввода и т.д
    - ItemSpacing (ImVec2) - расстояние между виджетами
    - ItemInnerSpacing (ImVec2) - внутренние расстояния виджетов 
    - IndentSpacing (ImVec2) - уже не помню
    - ScrollbarSize (number) - размер скроллбара
    - ScrollbarRounding (number) - закругление скроллбара
    - GrabMinSize (number) - минимальный размер хуйнюшки на скроллбаре
    - GrabRounding (number) - закругление хуйнюшки на скроллбаре
    - TabRounding (number) - закругление вкладок
    - ButtonTextAlign (ImVec2) - Выравнивание текста на кнопках (от 0 до 1), центр - 0.5, 0.5
    - SelectableTextAlign (ImVec2) - Выравнивание текста на imgui.Selectable окна (от 0 до 1), центр - 0.5, 0.5

    ЦВЕТА:
    imgui.Col.
    - Text - цвет текста 
    - TextDisabled - цвет imgui.TextDisabled 
    - WindowBg - цвет фона окна
    - ChildWindowBg - цвет фона чайлда
    - PopupBg - цвет фона попапа
    - Border - цвет обводок
    - BorderShadow - цвет тени обводки
    - FrameBg - цвет фреймов
    - FrameBgHovered - цвет фреймов при наведении
    - FrameBgActive - цвет фреймов при клике
    - TitleBg - цвет фона заголовка окна
    - TitleBgActive - цвет цвет фона заголовка окна (если окно активно)
    - TitleBgCollapsed - цвет цвет фона заголовка окна (если окно свернуто)
    - MenuBarBg - цвет MenuBar
    - ScrollbarBg - цвет фона скроллбара
    - ScrollbarGrab - цвет ползунка скроллбара
    - ScrollbarGrabHovered - цвет ползунка скроллбара (при наведении)
    - ScrollbarGrabActive - цвет ползунка скроллбара (при клике)
    - ComboBg - цвет комбо бокса
    - CheckMark - цвет галочки в чекбоксе или в радио баттоне
    - SliderGrab - цвет ползунка в слайдере
    - SliderGrabActive - цвет ползунка в слайдере (при клике)
    - Button - цвет кнопки
    - ButtonHovered - цвет кнопки при наведении 
    - ButtonActive - цвет кнопки при клике
    - Header - цвет CollapsingHeader
    - HeaderHovered - цвет CollapsingHeader при наведении
    - HeaderActive - цвет CollapsingHeader при клике
    - Separator - цвет imgui.Separator
    - SeparatorHovered - цвет imgui.Separator при наведении
    - SeparatorActive - цвет imgui.Separator при клике
    - ResizeGrip - цвет штуки для изменения размера окна
    - ResizeGripHovered - цвет штуки для изменения размера окна при наведении
    - ResizeGripActive - цвет штуки для изменения размера окна при клике
    - CloseButton - цвет кнопки закрытия окна
    - CloseButtonHovered - цвет кнопки закрытия окна при наведении
    - CloseButtonActive - цвет кнопки закрытия окна при клике
    - PlotLines - цвет -
    - PlotLinesHovered - цвет -
    - PlotHistogram - цвет -
    - PlotHistogramHovered - цвет -
    - TextSelectedBg - цвет -
    - ModalWindowDarkening - цвет фона при открытом PopupModal


    ФЛАГИ ОКНА:
    imgui.WindowFlags.
    - NoTitleBar - без заголовка
    - NoResize - запрет на изменение размера
    - NoMove - запрет на ищменение положения
    - NoScrollbar - без скроллбара
    - NoScrollWithMouse - запретить скролл колесиком мыши
    - NoCollapse - запретить сворачивание
    - AlwaysAutoResize - автоматически ставить размер
    - NoBackground - без фона
    - NoSavedSettings - без сохраненных настроек
    - NoMouseInputs - без мыши
    - HorizontalScrollbar - горизонтальный скроллбар
    - NoFocusOnAppearing - не делать окно активным при появлении
    - NoBringToFrontOnFocus - не переносить на передний план если окно активно
    - AlwaysVerticalScrollbar - всегда отображать вертикальный скроллбар
    - AlwaysHorizontalScrollbar - всегда отображать горизонтальный скроллбар
    - AlwaysUseWindowPadding - всегда использовать WindowPadding
    - NoDecoration - без заголовка, без изменения размера, без скроллбара, без сворачивания
]]

