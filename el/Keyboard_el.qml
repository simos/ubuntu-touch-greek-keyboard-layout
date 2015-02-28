/*
 * Copyright 2013 Canonical Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0
import "../../keys"

KeyPad {
    anchors.fill: parent

    content: c1
    symbols: "languages/Keyboard_symbols.qml"

    Column {
        id: c1
        anchors.fill: parent
        spacing: 0

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            CharKey { label: ";"; shifted: ":"; }
            CharKey { label: "ς"; shifted: "ς"; }
            CharKey { label: "ε"; shifted: "Ε"; extended: ["έ","€"]; extendedShifted: ["Έ","€"] }
            CharKey { label: "ρ"; shifted: "Ρ"; }
            CharKey { label: "τ"; shifted: "Τ"; }
            CharKey { label: "υ"; shifted: "Υ"; extended: ["ύ","ϋ","ΰ" ]; extendedShifted: ["Ύ","Ϋ"] }
            CharKey { label: "θ"; shifted: "Θ"; }
            CharKey { label: "ι"; shifted: "Ι"; extended: ["ί","ϊ","ΐ"]; extendedShifted: ["Ί","Ϊ"] }
            CharKey { label: "ο"; shifted: "Ο"; extended: ["ό"]; extendedShifted: ["Ό"] }
            CharKey { label: "π"; shifted: "Π"; }
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            CharKey { label: "α"; shifted: "Α"; extended: ["ά"]; extendedShifted: ["Ά"] }
            CharKey { label: "σ"; shifted: "Σ"; extended: ["$"]; extendedShifted: ["$"] }
            CharKey { label: "δ"; shifted: "Δ"; }
            CharKey { label: "φ"; shifted: "Φ"; }
            CharKey { label: "γ"; shifted: "Γ"; }
            CharKey { label: "η"; shifted: "Η"; extended: ["ή"]; extendedShifted: ["Ή"] }
            CharKey { label: "ξ"; shifted: "Ξ"; }
            CharKey { label: "κ"; shifted: "Κ"; }
            CharKey { label: "λ"; shifted: "Λ"; }
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            ShiftKey {}
            CharKey { label: "ζ"; shifted: "Ζ"; }
            CharKey { label: "χ"; shifted: "Χ"; }
            CharKey { label: "ψ"; shifted: "Ψ"; }
            CharKey { label: "ω"; shifted: "Ω"; extended: ["ώ"]; extendedShifted: ["Ώ"] }
            CharKey { label: "β"; shifted: "Β"; }
            CharKey { label: "ν"; shifted: "Ν"; }
            CharKey { label: "μ"; shifted: "Μ"; }
            BackspaceKey {}
        }

        Item {
            anchors.left: parent.left
            anchors.right: parent.right

            height: panel.keyHeight;

            SymbolShiftKey { id: symShiftKey;                            anchors.left: parent.left; }
            LanguageKey    { id: languageMenuButton;                     anchors.left: symShiftKey.right; }
            CharKey        { id: commaKey;    label: ","; shifted: "/";  anchors.left: languageMenuButton.right; }
            SpaceKey       { id: spaceKey;                               anchors.left: commaKey.right; anchors.right: dotKey.left; noMagnifier: true }
            CharKey        { id: dotKey;      label: "."; shifted: ".";  anchors.right: enterKey.left; }
            ReturnKey      { id: enterKey;                               anchors.right: parent.right }
        }
    } // column
}
