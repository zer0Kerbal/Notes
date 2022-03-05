// -------------------------------------------------------------------------------------------------
// notesRPM.cs 0.2.0.0
//
// Simple KSP plugin to take notes ingame.
// Copyright (C) 2016 Iván Atienza
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
//
// Email: zer0Kerbal at hotmail dot com
// Email: mecagoenbush at gmail dot com
// Freenode & EsperNet: hashashin
//
// -------------------------------------------------------------------------------------------------


using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using notes;
using KSP.Localization;

namespace notesRPM
{
	/// <summary>
	/// notesRPM part module
	/// </summary>
	public class notesRPM : InternalModule
	{
		//Buttons
		/// <summary>
		/// public int noteButton 
		/// </summary>
		[KSPField]
		public int noteButton = 0;
		/// <summary>
		/// public int downButton
		/// </summary>
		[KSPField]
		public int downButton = 1;
		/// <summary>
		/// public int infoButton
		/// </summary>
		[KSPField]
		public int infoButton = 2;

		/// <summary>
		/// int nextnoteButton
		/// </summary>
		[KSPField]
		public int nextnoteButton = 7;
		/// <summary>
		/// int prevnoteButton
		/// </summary>
		[KSPField]
		public int prevnoteButton = 8;


		//kOS Fields
		/// <summary>
		/// kOS: string textTint #009900ff
		/// </summary>
		[KSPField]
		public string textTint = "<color=#009900ff>";
		/// <summary>
		/// kOS: string textTintUnpowered #ffffff3e
		/// </summary>
		[KSPField]
		public string textTintUnpowered = "<color=#ffffff3e>";
		/// <summary>
		/// kOS: int consoleWidth = 40
		/// </summary>
		[KSPField]
		public int consoleWidth = 40;
		/// <summary>
		/// kOS: int consoleHeight = 20
		/// </summary>
		[KSPField]
		public int consoleHeight = 20;

		//General State Variables
		private string response = Localizer.Format("#NOTES-RPM-001"); // Notes terminal
		private bool started = false;
		private Notes notes;

		/// <summary>
		/// processes content
		/// </summary>
		/// <param name="screenWidth"></param>
		/// <param name="screenHeight"></param>
		/// <returns></returns>
		public string ContentProcessor(int screenWidth, int screenHeight)
		{
			if (started)
			{
				return (response);
			}
			//Check for initialization
			notes = FindObjectOfType<Notes>();
			response = textFormat(notes._text);
			started = true;
			return response;
		}

		/// <summary>
		/// ButtonProcessor(int buttonID)
		/// </summary>
		/// <param name="buttonID"></param>
		public void ButtonProcessor(int buttonID)
		{
			if (buttonID == noteButton)
			{
				response =
					textFormat(notes._text);
			}
			else if (buttonID == downButton)
			{
				godowntext(response);
			}
			else if (buttonID == infoButton)
			{
				notes.GetLogInfo();
				response = textFormat(notes._vesselInfo);
			}
			else if (buttonID == nextnoteButton)
			{
				notes.SelectNote(true);
				response =
					textFormat(notes._text);
			}
			else if (buttonID == prevnoteButton)
			{
				notes.SelectNote(false);
				response =
					textFormat(notes._text);
			}
		}

		private string textFormat(string sentence)
		{
			var responsetext = string.Empty;
			string[] lines = Regex.Split(sentence, "[\r\n]+");
			foreach (var line in lines)
			{
				string[] words = line.Split(' ');
				var parts = new Dictionary<int, string>();
				string parttext = string.Empty;
				int partCounter = 0;

				foreach (var word in words)
				{
					if (parttext.Length + word.Length < consoleWidth)
					{
						parttext += string.IsNullOrEmpty(parttext) ? word : " " + word;
					}
					else
					{
						parts.Add(partCounter, parttext);
						parttext = word;
						partCounter++;
					}
				}
				parts.Add(partCounter, parttext);
				responsetext = parts.Aggregate(responsetext,
					(current, item) => current + (item.Value + Environment.NewLine));
			}
			return (responsetext);
		}

		private void godowntext(string sentence)
		{
			string[] lines = Regex.Split(sentence, "[\r\n]+");
			if (lines.Count() > consoleHeight - 1)
			{
				var responsetext = String.Empty;
				var text = lines.Skip(consoleHeight - 1);
				foreach (var line in text)
				{
					responsetext += line + Environment.NewLine;
				}
				response = textFormat(responsetext);
			}
		}
	}

	/// <summary>
	/// unused class
	/// </summary>
	public class RPMConsole : InternalModule
	{
	}
}

